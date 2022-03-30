object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = '[Demo test] Keras for Delphi'
  ClientHeight = 1108
  ClientWidth = 1608
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -22
  Font.Name = 'Tahoma'
  Font.Style = []
  OnShow = FormShow
  PixelsPerInch = 192
  TextHeight = 27
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1608
    Height = 1108
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Caption = 'Text Analysis'
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 1592
        Height = 86
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alTop
        TabOrder = 0
        DesignSize = (
          1592
          86)
        object btn1: TButton
          Left = 9
          Top = 15
          Width = 152
          Height = 59
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Anchors = [akTop, akRight]
          Caption = 'keras'
          TabOrder = 0
          OnClick = btn1Click
        end
        object ckReuse: TCheckBox
          Left = 174
          Top = 22
          Width = 196
          Height = 43
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Anchors = [akTop, akRight]
          Caption = 'reuse model'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
      end
      object redtOutput: TMemo
        Left = 0
        Top = 86
        Width = 1592
        Height = 967
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alClient
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -22
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          
            'Analyzes Alice.txt then selects a random exceprt and generates m' +
            'ore text based on it.')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
        WordWrap = False
        OnChange = redtOutputChange
      end
    end
    object TabSheet2: TTabSheet
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Caption = 'Training and Validation'
      ImageIndex = 1
      object spl1: TSplitter
        Left = 0
        Top = 0
        Width = 10
        Height = 1053
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        ExplicitHeight = 1026
      end
      object pnl1: TPanel
        Left = 10
        Top = 0
        Width = 482
        Height = 1053
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alLeft
        Caption = 'pnl1'
        TabOrder = 0
        object img1: TImage
          Left = 1
          Top = 1
          Width = 480
          Height = 1051
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alClient
          Stretch = True
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 478
          ExplicitHeight = 1022
        end
      end
      object pnl2: TPanel
        Left = 492
        Top = 0
        Width = 1100
        Height = 1053
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alClient
        Caption = 'pnl2'
        TabOrder = 1
        object cht1: TChart
          Left = 1
          Top = 1
          Width = 1098
          Height = 1051
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Legend.LegendStyle = lsSeries
          Legend.TextStyle = ltsPlain
          Title.Text.Strings = (
            'Training and Validation Accuracy')
          BottomAxis.Title.Caption = 'Epoch'
          LeftAxis.Title.Caption = 'Loss'
          Align = alClient
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          PrintMargins = (
            15
            19
            15
            19)
          ColorPaletteIndex = 18
          object srsTraining_Loss: TLineSeries
            HoverElement = [heCurrent]
            Legend.Text = 'Training loss'
            LegendTitle = 'Training loss'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object srsValidation_loss: TLineSeries
            HoverElement = [heCurrent]
            Legend.Text = 'Validation accuracy'
            LegendTitle = 'Validation accuracy'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
    end
  end
  object PyIOCom: TPythonGUIInputOutput
    UnicodeIO = True
    RawOutput = False
    Output = redtOutput
    Left = 544
    Top = 3
  end
end
