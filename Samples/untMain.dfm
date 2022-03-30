object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = '[Demo test] Keras for Delphi'
  ClientHeight = 554
  ClientWidth = 804
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 804
    Height = 554
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 788
        Height = 43
        Align = alTop
        TabOrder = 0
        DesignSize = (
          788
          43)
        object btn1: TButton
          Left = 601
          Top = 10
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'keras'
          TabOrder = 0
          OnClick = btn1Click
        end
        object ckReuse: TCheckBox
          Left = 682
          Top = 14
          Width = 97
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'reuse model'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object editSeed: TEdit
          Left = 0
          Top = 10
          Width = 595
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
          Text = 'So she was considering in her own mind'
        end
      end
      object redtOutput: TMemo
        Left = 0
        Top = 43
        Width = 788
        Height = 470
        Align = alClient
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
        WordWrap = False
        OnChange = redtOutputChange
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object spl1: TSplitter
        Left = 0
        Top = 0
        Width = 5
        Height = 513
        ExplicitLeft = 497
        ExplicitTop = 42
        ExplicitHeight = 258
      end
      object pnl1: TPanel
        Left = 5
        Top = 0
        Width = 241
        Height = 513
        Align = alLeft
        Caption = 'pnl1'
        TabOrder = 0
        object img1: TImage
          Left = 1
          Top = 1
          Width = 239
          Height = 511
          Align = alClient
          Stretch = True
          ExplicitWidth = 232
          ExplicitHeight = 256
        end
      end
      object pnl2: TPanel
        Left = 246
        Top = 0
        Width = 542
        Height = 513
        Align = alClient
        Caption = 'pnl2'
        TabOrder = 1
        object cht1: TChart
          Left = 1
          Top = 1
          Width = 540
          Height = 511
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
