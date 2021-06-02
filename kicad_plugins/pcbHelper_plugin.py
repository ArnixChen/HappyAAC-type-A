import pcbnew
import csv

def bool(boolString):
  if (boolString == "True"):
    return True
  else:
    return False

class exportModsToCsvPlugin(pcbnew.ActionPlugin):
    def defaults(self):
        self.name = "Export Mods To CSV"
        self.category = "A descriptive category name"
        self.description = "A description of the plugin and what it does"

    def Run(self):
      board = pcbnew.GetBoard()
      fullPathPcbFile = board.GetFileName()
      csvFileName = fullPathPcbFile + ".Mod.csv"
      print("csvFileName=", csvFileName)
      csvFp = open(csvFileName, "w")
      csvFile = csv.writer(csvFp)
      
      # csvHeader = ["Reference", "Value", "xPos", "yPos", "Orientation", "LayerName", "IsFlipped"]
      csvHeader = ["Reference", "RefVisible", "Value", "ValVisible", "xPos", "yPos", "Orientation", "LayerName", "IsFlipped"]
      csvFile.writerow(csvHeader)
      
      for mod in board.GetModules():
        modRef = mod.GetReference()
        modRefVis = mod.Reference().IsVisible()
        modVal = mod.GetValue()
        modValVis = mod.Reference().IsVisible()
        modPos = mod.GetPosition()
        modCenter = mod.GetCenter()
        modOri = mod.GetOrientationDegrees()
        modLayer = mod.GetLayerName()
        modIsFlipped = mod.IsFlipped()
        # csvRow = [modRef, modVal, modPos.x*1.0, modPos.y*1.0, modOri, modLayer, modIsFlipped]
        csvRow = [modRef, modRefVis, modVal, modValVis, modPos.x*1.0, modPos.y*1.0, modOri, modLayer, modIsFlipped]
        csvFile.writerow(csvRow)

exportModsToCsvPlugin().register() # Instantiate and register to Pcbnew

class exportTextsToCsvPlugin(pcbnew.ActionPlugin):
    def defaults(self):
        self.name = "Export TEXT Drawings To CSV"
        self.category = "A descriptive category name"
        self.description = "A description of the plugin and what it does"

    def Run(self):
      board = pcbnew.GetBoard()
      fullPathPcbFile = board.GetFileName()
      csvFileName = fullPathPcbFile + ".Text.csv"
      print("csvFileName=", csvFileName)
      csvFp = open(csvFileName, "w")
      csvFile = csv.writer(csvFp)
      
      csvHeader = ["Text", "xPos", "yPos", "LayerName", "HorizJustify", "VertJustify", "Angle", "Height", "Width", "StyleName", "Thickness", "Mirrored"]
      csvFile.writerow(csvHeader)

      for draw in pcbnew.GetBoard().GetDrawings():
        if draw.GetClass() == 'PTEXT':
          drawText = draw.GetText()
          drawPos = draw.GetPosition()
          drawLayer = draw.GetLayerName()
          drawHorizJustify = draw.GetHorizJustify()
          drawVertJustify = draw.GetVertJustify()
          drawAngle = draw.GetTextAngleDegrees()
          drawHeight = draw.GetTextHeight()
          drawWidth = draw.GetTextWidth()
          drawStyleName = draw.GetTextStyleName()
          drawThickness = draw.GetThickness()
          drawMirrored = draw.IsMirrored()
          csvRow = [drawText, drawPos.x, drawPos.y, drawLayer, drawHorizJustify, drawVertJustify, drawAngle, drawHeight, drawWidth, drawStyleName, drawThickness, drawMirrored]
          csvFile.writerow(csvRow)

exportTextsToCsvPlugin().register() # Instantiate and register to Pcbnew

class exportEdgeCutsToCsvPlugin(pcbnew.ActionPlugin):
    def defaults(self):
        self.name = "Export EdgeCuts Drawings To CSV"
        self.category = "A descriptive category name"
        self.description = "A description of the plugin and what it does"

    def Run(self):
      board = pcbnew.GetBoard()
      fullPathPcbFile = board.GetFileName()
      csvFileName = fullPathPcbFile + ".EdgeCuts.csv"
      print("csvFileName=", csvFileName)
      csvFp = open(csvFileName, "w")
      csvFile = csv.writer(csvFp)
      
      csvHeader = ["ShapeStr", "ShapeID", "xPosStart", "yPosStart", "xPosEnd", "yPosEnd", "Angle", "LayerName", "Width"]
      csvFile.writerow(csvHeader)

      for draw in board.GetDrawings():
        if draw.GetClass() == "DRAWSEGMENT" and draw.GetLayerName() == "Edge.Cuts":
          drawShapeStr = draw.GetShapeStr()
          drawShapeID = draw.GetShape()
          drawPosStart = draw.GetStart()
          drawPosEnd = draw.GetEnd()
          if drawShapeStr == "Arc":
            drawAngle = draw.GetAngle()
          else:
            drawAngle = ""
          drawLayer = draw.GetLayerName()
          drawWidth = draw.GetWidth()
          csvRow = [drawShapeStr, drawShapeID, drawPosStart.x, drawPosStart.y, drawPosEnd.x, drawPosEnd.y, drawAngle, drawLayer, drawWidth]
          csvFile.writerow(csvRow)

exportEdgeCutsToCsvPlugin().register() # Instantiate and register to Pcbnew

def stringToBool(str):
  # https://stackoverflow.com/questions/21732123/convert-true-false-value-read-from-file-to-boolean
  if str.upper() == "TRUE":
    return True

  return False

class fixModsPositionPlugin(pcbnew.ActionPlugin):
    def defaults(self):
        self.name = "Fix Mods's positioning by CSV"
        self.category = "A descriptive category name"
        self.description = "A description of the plugin and what it does"

    def Run(self):
      board = pcbnew.GetBoard()
      fullPathPcbFile = board.GetFileName()
      csvFileName = fullPathPcbFile + ".Mod.csv"
      print("csvFileName=", csvFileName)
      with open(csvFileName, "r") as csvFile:
        reader = csv.DictReader(csvFile)
        for row in reader:
          mod = board.FindModuleByReference(row['Reference'])
          if mod is None: continue # 如果沒有發現該 mod 就跳過不處理
          #csvHeader = ["Reference", "RefVisible", "Value", "ValVisible", "xPos", "yPos", "Orientation", "LayerName", "IsFlipped"]
          print(row['Reference'], row['Value'], row['xPos'], row['yPos'], row['Orientation'], row['LayerName'], row['IsFlipped'], "curr_flipped=", mod.IsFlipped())
          if (mod.IsFlipped() != bool(row['IsFlipped'])):
            print("do Flip")
            mod.Flip(mod.GetCenter())
          vectLeftTop = pcbnew.wxPoint(float(row['xPos'])*1.0, float(row['yPos'])*1.0)
          mod.SetPosition(vectLeftTop)
          mod.SetOrientationDegrees(float(row['Orientation']))
          mod.SetLayer(board.GetLayerID(row['LayerName']))
          mod.Reference().SetVisible(stringToBool(row['RefVisible']))
          mod.Value().SetVisible(stringToBool(row['ValVisible']))
        pcbnew.Refresh()

fixModsPositionPlugin().register() # Instantiate and register to Pcbnew

class drawSW_ModsPlugin(pcbnew.ActionPlugin):
    def defaults(self):
        self.name = "Draw SW Mods's Circle by CSV"
        self.category = "A descriptive category name"
        self.description = "A description of the plugin and what it does"

    def Run(self):
      board = pcbnew.GetBoard()
      fullPathPcbFile = board.GetFileName()
      csvFileName = fullPathPcbFile + ".Mod.csv"
      print("csvFileName=", csvFileName)
      with open(csvFileName, "r") as csvFile:
        reader = csv.DictReader(csvFile)
        for row in reader:
          if row['Value'] == "SW_Push_45deg":
            mod = board.FindModuleByReference(row['Reference'])
            if mod is None: continue # 如果沒有發現該 mod 就跳過不處理
            #csvHeader = ["Reference", "RefVisible", "Value", "ValVisible", "xPos", "yPos", "Orientation", "LayerName", "IsFlipped"]
            if mod.IsFlipped() != stringToBool(row['IsFlipped']):
              print("do Flip")
              mod.Flip(mod.GetCenter())
            radius = 6075000    # 8075000 umm = 8.075 mm
            drawWidth = 100000  # 100000 umm = 0.1 mm
            vectStart = pcbnew.wxPoint(float(row['xPos'])*1.0, float(row['yPos'])*1.0)
            vectEnd = pcbnew.wxPoint(float(row['xPos'])+radius, float(row['yPos']))
            draw = pcbnew.DRAWSEGMENT(board)
            draw.SetLayer(board.GetLayerID('Cmts.User'))
            draw.SetWidth(drawWidth)
            drawShapeID=3
            draw.SetShape(drawShapeID)
            draw.SetStart(vectStart)
            draw.SetEnd(vectEnd)
            board.Add(draw)
        pcbnew.Refresh()

drawSW_ModsPlugin().register() # Instantiate and register to Pcbnew

class removeEdgeCutsPlugin(pcbnew.ActionPlugin):
    def defaults(self):
        self.name = "Remove EdgeCuts"
        self.category = "A descriptive category name"
        self.description = "A description of the plugin and what it does"

    def Run(self):
      board = pcbnew.GetBoard()
      for draw in board.GetDrawings():
        print("draw class = ", draw.GetClass())
        if draw.GetClass() == "DRAWSEGMENT" and draw.GetLayerName() == "Edge.Cuts":
          board.Delete(draw)
      pcbnew.Refresh()
removeEdgeCutsPlugin().register() # Instantiate and register to Pcbnew

class removeModsPlugin(pcbnew.ActionPlugin):
    def defaults(self):
        self.name = "Remove Modules"
        self.category = "A descriptive category name"
        self.description = "A description of the plugin and what it does"

    def Run(self):
      board = pcbnew.GetBoard()
      for mod in board.GetModules():
        modRef = mod.GetReference()
        modVal = mod.GetValue()
        modPos = mod.GetPosition()
        modCenter = mod.GetCenter()
        modOri = mod.GetOrientationDegrees()
        modLayer = mod.GetLayerName()
        modIsFlipped = mod.IsFlipped()
        print("mod\n\treference = ", modRef)
        print("\n\tvalue = ", modVal)
        print("\n")
        board.Delete(mod)
      pcbnew.Refresh()
removeModsPlugin().register() # Instantiate and register to Pcbnew

class importEdgeCutsPlugin(pcbnew.ActionPlugin):
    def defaults(self):
        self.name = "Import EdgeCuts by CSV"
        self.category = "A descriptive category name"
        self.description = "A description of the plugin and what it does"

    def Run(self):
      board = pcbnew.GetBoard()
      for draw in board.GetDrawings():
        if draw.GetClass() == "DRAWSEGMENT" and draw.GetLayerName() == "Edge.Cuts":
          board.Delete(draw)
      pcbnew.Refresh()
      fullPathPcbFile = board.GetFileName()
      csvFileName = fullPathPcbFile + ".EdgeCuts.csv"
      print("csvFileName=", csvFileName)
      with open(csvFileName, "r") as csvFile:
        reader = csv.DictReader(csvFile)
        for row in reader:
        #csvHeader = ["ShapeStr", "ShapeID", "xPosStart", "yPosStart", "xPosEnd", "yPosEnd", "Angle", "LayerName", "Width"]
          drawShapeStr = row['ShapeStr']
          drawShapeID = row['ShapeID']
          drawPosStart = pcbnew.wxPoint(float(row['xPosStart']), float(row['yPosStart']))
          drawPosEnd = pcbnew.wxPoint(float(row['xPosEnd']), float(row['yPosEnd']))
          if row['Angle'] != "":
            drawAngle = float(row['Angle'])
          drawLayerName = row['LayerName']
          drawWidth = int(row['Width'])
          
          draw = pcbnew.DRAWSEGMENT(board)
          board.Add(draw)
          print("drawShapeStr=", drawShapeStr)
          print("drawShapeID=", row['ShapeID'])
          if drawShapeStr == "Line":
            drawShapeID=0
          elif drawShapeStr == "Arc":
            drawShapeID=2
          elif drawShapeStr == "Circle":
            drawShapeID=3
          draw.SetShape(drawShapeID)
          draw.SetStart(drawPosStart)
          draw.SetEnd(drawPosEnd)
          if row['Angle'] != "":
            draw.SetAngle(drawAngle)
          draw.SetLayer(board.GetLayerID(drawLayerName))
          draw.SetWidth(drawWidth)
      pcbnew.Refresh()

importEdgeCutsPlugin().register() # Instantiate and register to Pcbnew

class importTextsFromCsvPlugin(pcbnew.ActionPlugin):
    def defaults(self):
        self.name = "Import TEXT Drawings From CSV"
        self.category = "A descriptive category name"
        self.description = "A description of the plugin and what it does"

    def Run(self):
      board = pcbnew.GetBoard()
      fullPathPcbFile = board.GetFileName()
      csvFileName = fullPathPcbFile + ".Text.csv"
      print("csvFileName=", csvFileName)
      
      #csvHeader = ["Text", "xPos", "yPos", "LayerName", "HorizJustify", "VertJustify", "Angle", "Height", "Width", "StyleName", "Thickness", "Mirrored"]

      with open(csvFileName, "r") as csvFile:
        reader = csv.DictReader(csvFile)
        for row in reader:
          drawText = row['Text']
          drawPos = pcbnew.wxPoint(float(row['xPos']), float(row['yPos']))
          drawLayer = board.GetLayerID(row['LayerName'])
          drawHorizJustify = int(row['HorizJustify'])
          drawVertJustify = int(row['VertJustify'])
          drawAngle = float(row['Angle'])*10
          drawHeight = int(row['Height'])
          drawWidth = int(row['Width'])
          drawStyleName = row['StyleName']
          drawThickness = int(row['Thickness'])
          drawMirrored = bool(row['Mirrored'])
          
          draw = pcbnew.TEXTE_PCB(board)
          board.Add(draw)
          draw.SetText(drawText)
          draw.SetPosition(drawPos)
          draw.SetLayer(drawLayer)
          draw.SetHorizJustify(drawHorizJustify)
          draw.SetVertJustify(drawVertJustify)
          draw.SetTextAngle(drawAngle)
          draw.SetTextHeight(drawHeight)
          draw.SetTextWidth(drawWidth)
          if (drawStyleName == "Normal"):
            draw.SetItalic(False)
          else:
            draw.SetItalic(True)
          draw.SetThickness(drawThickness)
          draw.SetMirrored(drawMirrored)
        pcbnew.Refresh()

importTextsFromCsvPlugin().register() # Instantiate and register to Pcbnew

