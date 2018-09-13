object MainForm: TMainForm
  Left = 192
  Top = 114
  Width = 1002
  Height = 737
  Caption = 'Video Cap'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object OutPutFileName: TLabel
    Left = 88
    Top = 296
    Width = 67
    Height = 13
    Caption = 'c:\capture.avi'
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Video'
  end
  object Label2: TLabel
    Left = 8
    Top = 128
    Width = 27
    Height = 13
    Caption = 'Audio'
  end
  object Label3: TLabel
    Left = 168
    Top = 8
    Width = 70
    Height = 13
    Caption = 'Select Formats'
  end
  object Label4: TLabel
    Left = 168
    Top = 128
    Width = 70
    Height = 13
    Caption = 'Select Formats'
  end
  object VideoCapFilters: TListBox
    Left = 8
    Top = 24
    Width = 153
    Height = 97
    ItemHeight = 13
    TabOrder = 0
    OnClick = VideoCapFiltersClick
  end
  object StartButton: TButton
    Left = 8
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Start'
    Enabled = False
    TabOrder = 1
    OnClick = StartButtonClick
  end
  object CapFileButton: TButton
    Left = 8
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Capture file'
    TabOrder = 3
    OnClick = CapFileButtonClick
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 684
    Width = 994
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object StopButton: TButton
    Left = 8
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Stop'
    Enabled = False
    TabOrder = 4
    OnClick = StopButtonClick
  end
  object AudioCapFilters: TListBox
    Left = 8
    Top = 144
    Width = 153
    Height = 97
    ItemHeight = 13
    TabOrder = 5
    OnClick = AudioCapFiltersClick
  end
  object VideoFormats: TListBox
    Left = 168
    Top = 24
    Width = 521
    Height = 97
    ItemHeight = 13
    TabOrder = 6
  end
  object AudioFormats: TListBox
    Left = 168
    Top = 144
    Width = 521
    Height = 97
    ItemHeight = 13
    TabOrder = 7
  end
  object InputLines: TComboBox
    Left = 8
    Top = 248
    Width = 153
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 8
  end
  object VideoWindow: TDSVideoWindowEx2
    Left = 232
    Top = 336
    Width = 320
    Height = 240
    AspectRatio = rmLetterBox
    AutoHideCursor = 0
    DigitalZoom = 0
    FilterGraph = CaptureGraph
    ColorControl.Brightness = 750
    ColorControl.Contrast = 10000
    ColorControl.Hue = 0
    ColorControl.Saturation = 10000
    ColorControl.Sharpness = 5
    ColorControl.Gamma = 1
    ColorControl.ColorEnable = True
    NoScreenSaver = False
    Color = clBlack
  end
  object CaptureGraph: TFilterGraph
    Mode = gmCapture
    GraphEdit = True
    LinearVolume = True
    Left = 232
    Top = 256
  end
  object VideoSourceFilter: TFilter
    BaseFilter.data = {00000000}
    Left = 16
    Top = 32
  end
  object SaveDialog: TSaveDialog
    Left = 168
    Top = 296
  end
  object Timer: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TimerTimer
    Left = 264
    Top = 256
  end
  object AudioSourceFilter: TFilter
    BaseFilter.data = {00000000}
    Left = 16
    Top = 152
  end
end
