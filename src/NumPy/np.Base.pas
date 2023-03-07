{*******************************************************}
{                                                       }
{       Numpy Wrapper for Delphi                        }
{                                                       }
{       Copyright (C) 2020 Pigrecos(Max)                }
{                                                       }
{*******************************************************}
unit np.Base;

// np.dtype.gen.cs
// np.module.gen.cs
// TDtypeExtensions  -----> for circular reference error

interface
   uses Winapi.Windows, System.SysUtils,System.Rtti,
        PythonEngine,
        Python.Utils,

        np.Utils,
        np.Models;

type
  Constants = (inf, neg_inf) ;

  PTPythonObject = ^TPythonObject;
  PTNDarray      = TArray<TNDarray> ;
  PPTNDarray     = ^PTNDarray;

  TDeNumPy = class;



  TDtypeExtensions = class
   public
     class function GetDtype<T>(pObj:T):TDtype;
  end;

  TDeNumPy = class
  private
    class function Getbool_: TDtype;
    class function Getbool8: TDtype;
    class function Getbyte: TDtype;
    class function Getbytes_: TDtype;
    class function Getclongfloat: TDtype;
    class function Getcomplex_: TDtype;
    class function Getcomplex128: TDtype;
    class function Getcomplex192: TDtype;
    class function Getcomplex256: TDtype;
    class function Getcomplex64: TDtype;
    class function Getcsingle: TDtype;
    class function Getdouble: TDtype;
    class function Getfloat_: TDtype;
    class function Getfloat128: TDtype;
    class function Getfloat16: TDtype;
    class function Getfloat32: TDtype;
    class function Getfloat64: TDtype;
    class function Getfloat96: TDtype;
    class function Gethalf: TDtype;
    class function Getint_: TDtype;
    class function Getint16: TDtype;
    class function Getint32: TDtype;
    class function Getint64: TDtype;
    class function Getint8: TDtype;
    class function Getintc: TDtype;
    class function Getintp: TDtype;
    class function Getlongfloat: TDtype;
    class function Getlonglong: TDtype;
    class function Getobject_: TDtype;
    class function Getshort: TDtype;
    class function Getsingle: TDtype;
    class function Getubyte: TDtype;
    class function Getuint: TDtype;
    class function Getuint16: TDtype;
    class function Getuint32: TDtype;
    class function Getuint64: TDtype;
    class function Getuint8: TDtype;
    class function Getuintc: TDtype;
    class function Getuintp: TDtype;
    class function Getulonglong: TDtype;
    class function Getunicode_: TDtype;
    class function Getushort: TDtype;
    class function Getvoid: TDtype;
    procedure Setbool_(const Value: TDtype);
    procedure Setbool8(const Value: TDtype);
    procedure Setbyte(const Value: TDtype);
    procedure Setbytes_(const Value: TDtype);
    procedure Setclongfloat(const Value: TDtype);
    procedure Setcomplex_(const Value: TDtype);
    procedure Setcomplex128(const Value: TDtype);
    procedure Setcomplex192(const Value: TDtype);
    procedure Setcomplex256(const Value: TDtype);
    procedure Setcomplex64(const Value: TDtype);
    procedure Setcsingle(const Value: TDtype);
    procedure Setdouble(const Value: TDtype);
    procedure Setfloat_(const Value: TDtype);
    procedure Setfloat128(const Value: TDtype);
    procedure Setfloat16(const Value: TDtype);
    procedure Setfloat32(const Value: TDtype);
    procedure Setfloat64(const Value: TDtype);
    procedure Setfloat96(const Value: TDtype);
    procedure Sethalf(const Value: TDtype);
    procedure Setint_(const Value: TDtype);
    procedure Setint16(const Value: TDtype);
    procedure Setint32(const Value: TDtype);
    procedure Setint64(const Value: TDtype);
    procedure Setint8(const Value: TDtype);
    procedure Setintc(const Value: TDtype);
    procedure Setintp(const Value: TDtype);
    procedure Setlongfloat(const Value: TDtype);
    procedure Setlonglong(const Value: TDtype);
    procedure Setobject_(const Value: TDtype);
    procedure Setshort(const Value: TDtype);
    procedure Setsingle(const Value: TDtype);
    procedure Setubyte(const Value: TDtype);
    procedure Setuint(const Value: TDtype);
    procedure Setuint16(const Value: TDtype);
    procedure Setuint32(const Value: TDtype);
    procedure Setuint64(const Value: TDtype);
    procedure Setuint8(const Value: TDtype);
    procedure Setuintc(const Value: TDtype);
    procedure Setuintp(const Value: TDtype);
    procedure Setulonglong(const Value: TDtype);
    procedure Setunicode_(const Value: TDtype);
    procedure Setushort(const Value: TDtype);
    procedure Setvoid(const Value: TDtype);
    // np.module.gen.cs
    public
      class var FhModuleNumPy : TPythonObject;

      constructor Init(inizialize: Boolean);

      class function  ToTuple: TPyTuple;overload; static;
      class function  ToTuple(input: TArray<TValue>):  TPyTuple; overload; static;
      class function  ToPython(value:TValue):          TPythonObject;overload; static;
      class function  ToCsharp<T>(pyobj:TPythonObject): T;  static;
      class function  ConvertArrayToNDarray<T>(a: TArray<T>): TNDarray; overload;
      class function  ConvertArrayToNDarray<T>(a: TArray2D<T>): TNDarray; overload;

      function inf         : Double;
      function Infinity    : Double;
      function PINF        : Double;
      function infty       : Double;
      function NINF        : Double;
      function nan         : Double;
      function NZERO       : Double;
      function PZERO       : Double;
      function e           : Double;
      function euler_gamma : Double;
      function newaxis     : Double;
      function pi          : Double;

      property bool_ :     TDtype  read Getbool_      write Setbool_;
      property bool8_:     TDtype  read Getbool8      write Setbool8;
      property byte_ :     TDtype  read Getbyte       write Setbyte;
      property short_:     TDtype  read Getshort      write Setshort;
      property intc_:      TDtype  read Getintc       write Setintc;
      property int_ :      TDtype  read Getint_       write Setint_;
      property longlong_:  TDtype  read Getlonglong   write Setlonglong;
      property intp_:      TDtype  read Getintp       write Setintp;
      property int8_:      TDtype  read Getint8       write Setint8;
      property int16_:     TDtype  read Getint16      write Setint16;
      property int32_:     TDtype  read Getint32      write Setint32;
      property int64_:     TDtype  read Getint64      write Setint64;
      property ubyte_:     TDtype  read Getubyte      write Setubyte;
      property ushort_:    TDtype  read Getushort     write Setushort;
      property uintc_:     TDtype  read Getuintc      write Setuintc;
      property uint_:      TDtype  read Getuint       write Setuint;
      property ulonglong_: TDtype  read Getulonglong  write Setulonglong;
      property uintp_:     TDtype  read Getuintp      write Setuintp;
      property uint8_:     TDtype  read Getuint8      write Setuint8;
      property uint16_:    TDtype  read Getuint16     write Setuint16;
      property uint32_:    TDtype  read Getuint32     write Setuint32;
      property uint64_:    TDtype  read Getuint64     write Setuint64;
      property half_:      TDtype  read Gethalf       write Sethalf;
      property single_:    TDtype  read Getsingle     write Setsingle;
      property double_:    TDtype  read Getdouble     write Setdouble;
      property float_ :    TDtype  read Getfloat_     write Setfloat_;
      property longfloat_: TDtype  read Getlongfloat  write Setlongfloat;
      property float16_:   TDtype  read Getfloat16    write Setfloat16;
      property float32_:   TDtype  read Getfloat32    write Setfloat32;
      property float64_:   TDtype  read Getfloat64    write Setfloat64;
      property float96_:   TDtype  read Getfloat96    write Setfloat96;
      property float128_:  TDtype  read Getfloat128   write Setfloat128;
      property csingle_:   TDtype  read Getcsingle    write Setcsingle;
      property complex_ :  TDtype  read Getcomplex_   write Setcomplex_;
      property clongfloat_:TDtype  read Getclongfloat write Setclongfloat;
      property complex64_: TDtype  read Getcomplex64  write Setcomplex64;
      property complex128_:TDtype  read Getcomplex128 write Setcomplex128;
      property complex192_:TDtype  read Getcomplex192 write Setcomplex192;
      property complex256_:TDtype  read Getcomplex256 write Setcomplex256;
      property object_ :   TDtype  read Getobject_    write Setobject_;
      property bytes_ :    TDtype  read Getbytes_     write Setbytes_;
      property unicode_ :  TDtype  read Getunicode_   write Setunicode_;
      property void_ :     TDtype  read Getvoid       write Setvoid;

      //property hModuleNumPy : TPythonObject  read FhModuleNumPy;


  end;

implementation
    uses
       System.Generics.Collections,
       System.TypInfo,
       np.Api;

function ImportModule(Name: string): PPyObject;
var
  res : PPyObject;
begin
    res := g_MyPyEngine.PyImport_ImportModule(PAnsiChar(AnsiString(Name)) ) ;

    if g_MyPyEngine.PyErr_Occurred <> nil then
    begin
        g_MyPyEngine.PyErr_Clear;
        Exit(nil);
    end;
    Result := res;
end;

{ TDtypeExtensions }

class function TDtypeExtensions.GetDtype<T>(pObj: T): TDtype;
var
  Info     : PTypeInfo;
  res      : TPythonObject;
  rtti     : TRttiType;
begin

    { Get type info for the "yet unknown type" }
    Info := TypeInfo(T);

    if       System.TypeInfo(T) = System.TypeInfo(boolean)  then  Result := TDeNumPy.Getbool8

    else if  System.TypeInfo(T) = System.TypeInfo(int8)     then  Result := TDeNumPy.Getint8
    else if  System.TypeInfo(T) = System.TypeInfo(UInt8)    then  Result := TDeNumPy.Getuint8
    else if  System.TypeInfo(T) = System.TypeInfo(Byte)     then  Result := TDeNumPy.Getuint8

    else if  System.TypeInfo(T) = System.TypeInfo(int16)    then  Result := TDeNumPy.Getint16
    else if  System.TypeInfo(T) = System.TypeInfo(Word)     then  Result := TDeNumPy.Getuint16
    else if  System.TypeInfo(T) = System.TypeInfo(UInt16)   then  Result := TDeNumPy.Getuint16

    else if  System.TypeInfo(T) = System.TypeInfo(Int32)    then  Result := TDeNumPy.Getint32
    else if  System.TypeInfo(T) = System.TypeInfo(Cardinal) then  Result := TDeNumPy.Getuint32
    else if  System.TypeInfo(T) = System.TypeInfo(Uint32)   then  Result := TDeNumPy.Getuint32

    else if  System.TypeInfo(T) = System.TypeInfo(Int64)    then  Result := TDeNumPy.Getint64
    else if  System.TypeInfo(T) = System.TypeInfo(uint64)   then  Result := TDeNumPy.Getuint64

    else if  System.TypeInfo(T) = System.TypeInfo(Single)   then  Result := TDeNumPy.Getfloat32
    else if  System.TypeInfo(T) = System.TypeInfo(double)   then  Result := TDeNumPy.Getfloat64

    else if  System.TypeInfo(T) = System.TypeInfo(string)   then  Result := TDeNumPy.Getunicode_
    else if  System.TypeInfo(T) = System.TypeInfo(char)     then  Result := TDeNumPy.Getunicode_

    else if (Info.Kind = tkArray) then
    begin
        rtti := TRttiContext.Create.GetType(TypeInfo(T));

        if       TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<boolean>)  then  Result := TDeNumPy.Getbool8
                                                                                                 
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<int8>)     then  Result := TDeNumPy.Getint8
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<UInt8>)    then  Result := TDeNumPy.Getuint8
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<Byte>)     then  Result := TDeNumPy.Getuint8
                                                                                                 
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<int16>)    then  Result := TDeNumPy.Getint16
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<Word>)     then  Result := TDeNumPy.Getuint16
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<UInt16>)   then  Result := TDeNumPy.Getuint16
                                                                                                 
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<Int32>)    then  Result := TDeNumPy.Getint32
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<Cardinal>) then  Result := TDeNumPy.Getuint32
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<Uint32>)   then  Result := TDeNumPy.Getuint32
                                                                                                 
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<Int64>)    then  Result := TDeNumPy.Getint64
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<uint64>)   then  Result := TDeNumPy.Getuint64
                                                                                                 
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<Single>)   then  Result := TDeNumPy.Getfloat32
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<double>)   then  Result := TDeNumPy.Getfloat64
                                                                                                 
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<string>)   then  Result := TDeNumPy.Getunicode_
        else if  TRttiArrayType(rtti).Handle = System.TypeInfo(TArray<char>)     then  Result := TDeNumPy.Getunicode_
    end
    else if (Info.Kind = tkDynArray) then
    begin
        rtti := TRttiContext.Create.GetType(TypeInfo(T));

        if       TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<boolean>)  then  Result := TDeNumPy.Getbool8
                                                                                                        
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<int8>)     then  Result := TDeNumPy.Getint8
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<UInt8>)    then  Result := TDeNumPy.Getuint8
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<Byte>)     then  Result := TDeNumPy.Getuint8
                                                                                                        
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<int16>)    then  Result := TDeNumPy.Getint16
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<Word>)     then  Result := TDeNumPy.Getuint16
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<UInt16>)   then  Result := TDeNumPy.Getuint16
                                                                                                        
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<Int32>)    then  Result := TDeNumPy.Getint32
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<Cardinal>) then  Result := TDeNumPy.Getuint32
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<Uint32>)   then  Result := TDeNumPy.Getuint32
                                                                                                        
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<Int64>)    then  Result := TDeNumPy.Getint64
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<uint64>)   then  Result := TDeNumPy.Getuint64
                                                                                                        
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<Single>)   then  Result := TDeNumPy.Getfloat32
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<double>)   then  Result := TDeNumPy.Getfloat64
                                                                                                        
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<string>)   then  Result := TDeNumPy.Getunicode_
        else if  TRttiDynamicArrayType(rtti).Handle = System.TypeInfo(TArray<char>)     then  Result := TDeNumPy.Getunicode_
    end

    else
      raise EPythonError.Create('Can not convert type of given object to dtype: " ');

end;

{ TDeNumPy }

constructor TDeNumPy.Init(inizialize: Boolean);
begin
    //Self := default(TNumPy) ;
    if  g_MyPyEngine = nil then
      InitGlobal;

    MaskFPUExceptions(True);
    if FhModuleNumPy = nil then
      FhModuleNumPy :=  TPythonObject.Create( ImportModule('numpy') );

end;

class function TDeNumPy.ToCsharp<T>(pyobj:TPythonObject): T;
var
  Info     : PTypeInfo;
  Data     : PTypeData;

  p         : PPyObject;
  rv        : TArray<TNDarray>;
  Name      : string;
  seq_length, i: Integer;
begin
    { Get type info for the "yet unknown type" }
    Info := System.TypeInfo(T);
    Data := GetTypeData(Info);

    if info^.Kind = tkClass then
    begin
        Name := string(Info^.Name);
        // types from 'ToCsharpConversions'
        if      LowerCase(Name) = 'tdtype'     then  PTPythonObject(@Result)^ := TDtype.Create(pyobj.Handle)
        else if LowerCase(Name) = 'tndarray'   then  PTPythonObject(@Result)^ := TNDArray.Create(pyobj)
        else if LowerCase(Name) = 'tmatrix'    then  PTPythonObject(@Result)^ := TMatrix.Create(pyobj.Handle)
        else if LowerCase(Name).Contains('tndarray<') then
        begin
            if       LowerCase(Name).Contains('byte')       then PTPythonObject(@Result)^ := TNDArray<Byte>.Create(pyobj)
            else if  LowerCase(Name).Contains('word')       then PTPythonObject(@Result)^ := TNDArray<Word>.Create(pyobj)
            else if  LowerCase(Name).Contains('boolean')    then PTPythonObject(@Result)^ := TNDArray<Boolean>.Create(pyobj)
            else if  (LowerCase(Name).Contains('int32')) or
                     (LowerCase(Name).Contains('integer'))  then PTPythonObject(@Result)^ := TNDArray<Int32>.Create(pyobj)
            else if  LowerCase(Name).Contains('int64')      then PTPythonObject(@Result)^ := TNDArray<Int64>.Create(pyobj)
            else if  (LowerCase(Name).Contains('single')) or
                     (LowerCase(Name).Contains('float32'))  then PTPythonObject(@Result)^ := TNDArray<Float32>.Create(pyobj)
            else if  LowerCase(Name).Contains('double')     then PTPythonObject(@Result)^ := TNDArray<Double>.Create(pyobj)
            else
               raise Exception.Create('Type ' + Name + 'missing. Add it to "ToCsharpConversions"');
        end;
    end
    else if info^.Kind = tkRecord then
    begin
        Name := string(Info^.Name);
        // types from 'ToCsharpConversions'
        if LowerCase(Name) = 'tndarray'   then  PTPythonObject(@Result)^ := TNDArray.Create(pyobj)
        else if LowerCase(Name).Contains('tndarray<') then
        begin
            if       LowerCase(Name).Contains('byte')       then PTPythonObject(@Result)^ := TNDArray<Byte>.Create(pyobj)
            else if  LowerCase(Name).Contains('word')       then PTPythonObject(@Result)^ := TNDArray<Word>.Create(pyobj)
            else if  LowerCase(Name).Contains('boolean')    then PTPythonObject(@Result)^ := TNDArray<Boolean>.Create(pyobj)
            else if  (LowerCase(Name).Contains('int32')) or
                     (LowerCase(Name).Contains('integer'))  then PTPythonObject(@Result)^ := TNDArray<Int32>.Create(pyobj)
            else if  LowerCase(Name).Contains('int64')      then PTPythonObject(@Result)^ := TNDArray<Int64>.Create(pyobj)
            else if  (LowerCase(Name).Contains('single')) or
                     (LowerCase(Name).Contains('float32'))  then PTPythonObject(@Result)^ := TNDArray<Float32>.Create(pyobj)
            else if  LowerCase(Name).Contains('double')     then PTPythonObject(@Result)^ := TNDArray<Double>.Create(pyobj)
            else
               raise Exception.Create('Type ' + Name + 'missing. Add it to "ToCsharpConversions"');
        end;
    end
    else if (Info^.Kind = tkArray) or (Info^.Kind = tkDynArray) then
    begin
        if g_MyPyEngine.PySequence_Check( pyobj.Handle ) = 1 then
        begin
             seq_length := g_MyPyEngine.PySequence_Length( pyobj.Handle );
             // if we have at least one object in the sequence,
             if seq_length > 0 then
                // we try to get the first one, simply to test if the sequence API is really implemented.
                g_MyPyEngine.Py_XDecRef( g_MyPyEngine.PySequence_GetItem( pyobj.Handle, 0 ) );
             if g_MyPyEngine.PyErr_Occurred = nil then
             begin
                 for i := 0 to g_MyPyEngine.PySequence_Length( pyobj.Handle ) -1 do
                 begin
                     p := g_MyPyEngine.PySequence_GetItem( pyobj.Handle, i );
                     rv := rv + [ ToCsharp<TNDarray>( TPythonObject.Create(p) ) ];
                 end;

                 PPTNDarray(@Result)^  := rv;
             end else
             begin
                 g_MyPyEngine.PyErr_Clear;
                 PTPythonObject(@Result)^ := nil;
             end;
        end;
    end else
    begin
       if      (Info^.Kind = tkInteger) then
       begin
           case data^.OrdType of
             otUByte,otSByte: PByte(@Result)^         :=   g_MyPyEngine.PyObjectAsVariant(pyobj.Handle);
             otUWord,otSWord: PWord(@Result)^         :=   g_MyPyEngine.PyObjectAsVariant(pyobj.Handle);
             otULong,otSLong: PInteger(@Result)^      :=   g_MyPyEngine.PyObjectAsVariant(pyobj.Handle);
           end;
       end
       else if (Info^.Kind = tkInt64)           then  PInt64(@Result)^           :=   g_MyPyEngine.PyObjectAsVariant(pyobj.Handle)
       else if (Info^.Kind = tkFloat)           then  PDouble(@Result)^           :=   g_MyPyEngine.PyObjectAsVariant(pyobj.Handle)
       else if (Info^.Kind = tkUnicodeString)   then  PUnicodeString(@Result)^   :=   g_MyPyEngine.PyObjectAsVariant(pyobj.Handle)
       else if (Info^.Kind = tkWideString)      then  PWideString(@Result)^      :=   g_MyPyEngine.PyObjectAsVariant(pyobj.Handle)
       else if (Info^.Kind = tkAnsiString   )   then  PAnsiString(@Result)^      :=   g_MyPyEngine.PyObjectAsVariant(pyobj.Handle)
       else if (Info = System.TypeInfo(boolean))then  PBoolean(@Result)^         :=   g_MyPyEngine.PyObjectAsVariant(pyobj.Handle)
    end;
end;

class function TDeNumPy.ToPython(value: TValue): TPythonObject;
var
  Info     : PTypeInfo;
  data     : PTypeData;
  aTmp     : TArray<TValue>;
begin
    Result := nil;

    Info := value.TypeInfo;
    data := value.TypeData;

    //PPyObject type
    if Info.Kind = tkPointer then
    begin
        var pp : PPyObject;
        if info.Name = 'PPyObject' then
        begin
          pp := value.AsType<PPyObject> ;
          Result := TPythonObject.Create(pp);
        end;

    end
    //TPythonObject type
    else if Info.Kind = tkClass then
    begin
        if (data.ParentInfo^.Name = 'TPythonObject') or (data.ParentInfo^.Name = 'TNDArray') then
           Result := value.AsType<TPythonObject>
        // TList<System.string>
        else if Info.Name = 'TList<System.string>' then
        begin
            var aTmpStr    : TArray<string>;
            var i          : Integer;

            aTmpStr := TList<string>(value.AsObject).ToArray;
            for i := 0 to High(aTmpStr) do
              aTmp := aTmp + [ aTmpStr[i] ];

            Result := TPythonObject.Create( g_MyPyEngine.ArrayToPyList( TValueArrayToArrayOfConst( aTmp ) ) );
        end;
    end
    // array type
    else if (Info.Kind = tkDynArray)  or (Info.Kind = tkArray) then
    begin
        Result := ToTuple( value.AsArray );
    end
    // tnp_slice type
    else if Info = System.TypeInfo(Tnp_Slice)  then
    begin
       Result := value.AsType<Tnp_Slice>.ToPython ;
    end
    // tnp_shape type
    else if Info = System.TypeInfo(Tnp_Shape)  then
    begin
        Result := ToTuple ( TValue.ArrayOfToValueArray<Integer>( value.AsType<Tnp_Shape>.Dimensions) );
    end
    // double type
    else if (Info = System.TypeInfo(Double)) or (Info^.Kind = tkFloat)         then
    begin
        Result    := TPyFloat.Create(value.AsType<Double>);
    end
    // int64 type
    else if Info = System.TypeInfo(Int64)         then
    begin
        Result    := TPyLong.Create(value.AsInt64);
    end
    // integer type
    else if Info = System.TypeInfo(integer) then
    begin
        Result    := TPyInt.Create(value.AsInteger);
    end
    else if Info = System.TypeInfo(Byte)         then
    begin
        Result    := TPyInt.Create(value.AsInteger);
    end
    else if Info = System.TypeInfo(Word)         then
    begin
        Result    := TPyInt.Create(value.AsInteger);
    end
    // string type
    else if Info = System.TypeInfo(string)         then
    begin
        Result   := TPyString.Create(value.AsString);
    end
    //ansistring type
    else if Info = System.TypeInfo(AnsiString)         then
    begin
        Result    := TPyString.Create(value.AsString);
    end
    else if Info = System.TypeInfo(Boolean) then
    begin
      if value.AsBoolean = true then
        Result := TPythonObject.Create(PPyObject(g_MyPyEngine.Py_True) )
      else
         Result := TPythonObject.Create(PPyObject(g_MyPyEngine.Py_False) );
      g_MyPyEngine.Py_XIncRef(Result.Handle);
    end;

    if Result = nil then
      raise Exception.Create('Error in ToPython conversion function');
end;

class function TDeNumPy.ConvertArrayToNDarray<T>(a: TArray<T>): TNDarray;
begin
    Result := npArray<T>(a);
end;

class function TDeNumPy.ConvertArrayToNDarray<T>(a: TArray2D<T>): TNDarray;
begin
    Result := npArray<T>(a).reshape( [ Length(a), Length(a[0]) ])
end;

class function TDeNumPy.ToTuple(): TPyTuple;
var
 aArray : TArray<TPythonObject>;

begin
    SetLength(aArray,0) ;

    Result := TPyTuple.Create(aArray);
end;

class function TDeNumPy.ToTuple(input: TArray<TValue>): TPyTuple;
var
 aArray : TArray<TPythonObject>;
 i : Integer;
begin
    SetLength(aArray,Length(input)) ;
    for i := 0 to  Length(input) - 1 do
     aArray[i] := ToPython(input[i]);

    Result := TPyTuple.Create(aArray);
end;

class function TDeNumPy.Getbool8: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('bool8'))
end;

class function TDeNumPy.Getbool_: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('bool_'))
end;

class function TDeNumPy.Getbyte: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('byte'))
end;

class function TDeNumPy.Getbytes_: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('bytes_'))
end;

class function TDeNumPy.Getclongfloat: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('clongfloat'))
end;

class function TDeNumPy.Getcomplex128: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('complex128'))
end;

class function TDeNumPy.Getcomplex192: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('complex192'))
end;

class function TDeNumPy.Getcomplex256: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('complex256'))
end;

class function TDeNumPy.Getcomplex64: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('complex64'))
end;

class function TDeNumPy.Getcomplex_: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('complex_'))
end;

class function TDeNumPy.Getcsingle: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('csingle'))
end;

class function TDeNumPy.Getdouble: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('double'))
end;

class function TDeNumPy.Getfloat128: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('loat128'))
end;

class function TDeNumPy.Getfloat16: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('float16'))
end;

class function TDeNumPy.Getfloat32: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('float32'))
end;

class function TDeNumPy.Getfloat64: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('float64'))
end;

class function TDeNumPy.Getfloat96: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('float96'))
end;

class function TDeNumPy.Getfloat_: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('float_'))
end;

class function TDeNumPy.Gethalf: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('half'))
end;

class function TDeNumPy.Getint16: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('int16'))
end;

class function TDeNumPy.Getint32: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('int32'))
end;

class function TDeNumPy.Getint64: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('int64'))
end;

class function TDeNumPy.Getint8: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('int8'))
end;

class function TDeNumPy.Getintc: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('intc'))
end;

class function TDeNumPy.Getintp: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('intp'))
end;

class function TDeNumPy.Getint_: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('int_'))
end;

class function TDeNumPy.Getlongfloat: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('longfloat'))
end;

class function TDeNumPy.Getlonglong: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('longlong'))
end;

class function TDeNumPy.Getobject_: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('object_'))
end;

class function TDeNumPy.Getshort: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('short'))
end;

class function TDeNumPy.Getsingle: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('single'))
end;

class function TDeNumPy.Getubyte: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('ubyte'))
end;

class function TDeNumPy.Getuint: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('uint'))
end;

class function TDeNumPy.Getuint16: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('uint16'))
end;

class function TDeNumPy.Getuint32: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('uint32'))
end;

class function TDeNumPy.Getuint64: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('uint64'))
end;

class function TDeNumPy.Getuint8: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('uint8'))
end;

class function TDeNumPy.Getuintc: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('uintc'))
end;

class function TDeNumPy.Getuintp: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('uintp'))
end;

class function TDeNumPy.Getulonglong: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('ulonglong'))
end;

class function TDeNumPy.Getunicode_: TDtype;
begin
    Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('unicode_'))
end;

class function TDeNumPy.Getushort: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('ushort'))
end;

class function TDeNumPy.Getvoid: TDtype;
begin
   Result := ToCsharp<TDtype>( FhModuleNumPy.GetAttr('void'))
end;

procedure TDeNumPy.Setbool8(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('bool8', ToPython(value));
end;

procedure TDeNumPy.Setbool_(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('bool_', ToPython(value));
end;

procedure TDeNumPy.Setbyte(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('byte', ToPython(value));
end;

procedure TDeNumPy.Setbytes_(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('bytes_', ToPython(value));
end;

procedure TDeNumPy.Setclongfloat(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('clongfloat', ToPython(value));
end;

procedure TDeNumPy.Setcomplex128(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('complex128', ToPython(value));
end;

procedure TDeNumPy.Setcomplex192(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('complex192', ToPython(value));
end;

procedure TDeNumPy.Setcomplex256(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('complex256', ToPython(value));
end;

procedure TDeNumPy.Setcomplex64(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('complex64', ToPython(value));
end;

procedure TDeNumPy.Setcomplex_(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('complex_', ToPython(value));
end;

procedure TDeNumPy.Setcsingle(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('csingle', ToPython(value));
end;

procedure TDeNumPy.Setdouble(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('double', ToPython(value));
end;

procedure TDeNumPy.Setfloat128(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('float128', ToPython(value));
end;

procedure TDeNumPy.Setfloat16(const Value: TDtype);
begin
   FhModuleNumPy.SetAttr('float16', ToPython(value));
end;

procedure TDeNumPy.Setfloat32(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('float32', ToPython(value));
end;

procedure TDeNumPy.Setfloat64(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('float64', ToPython(value));
end;

procedure TDeNumPy.Setfloat96(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('float96', ToPython(value));
end;

procedure TDeNumPy.Setfloat_(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('float_', ToPython(value));
end;

procedure TDeNumPy.Sethalf(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('half', ToPython(value));
end;

procedure TDeNumPy.Setint16(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('int16', ToPython(value));
end;

procedure TDeNumPy.Setint32(const Value: TDtype);
begin
   FhModuleNumPy.SetAttr('int32', ToPython(value));
end;

procedure TDeNumPy.Setint64(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('int64', ToPython(value));
end;

procedure TDeNumPy.Setint8(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('int8', ToPython(value));
end;

procedure TDeNumPy.Setintc(const Value: TDtype);
begin
   FhModuleNumPy.SetAttr('intc', ToPython(value));
end;

procedure TDeNumPy.Setintp(const Value: TDtype);
begin
   FhModuleNumPy.SetAttr('intp', ToPython(value));
end;

procedure TDeNumPy.Setint_(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('int_', ToPython(value));
end;

procedure TDeNumPy.Setlongfloat(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('longfloat', ToPython(value));
end;

procedure TDeNumPy.Setlonglong(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('longlong', ToPython(value));
end;

procedure TDeNumPy.Setobject_(const Value: TDtype);
begin
   FhModuleNumPy.SetAttr('object_', ToPython(value));
end;

procedure TDeNumPy.Setshort(const Value: TDtype);
begin
   FhModuleNumPy.SetAttr('short', ToPython(value));
end;

procedure TDeNumPy.Setsingle(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('single', ToPython(value));
end;

procedure TDeNumPy.Setubyte(const Value: TDtype);
begin
   FhModuleNumPy.SetAttr('ubyte', ToPython(value));
end;

procedure TDeNumPy.Setuint(const Value: TDtype);
begin
   FhModuleNumPy.SetAttr('uint', ToPython(value));
end;

procedure TDeNumPy.Setuint16(const Value: TDtype);
begin
   FhModuleNumPy.SetAttr('uint16', ToPython(value));
end;

procedure TDeNumPy.Setuint32(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('uint32', ToPython(value));
end;

procedure TDeNumPy.Setuint64(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('uint64', ToPython(value));
end;

procedure TDeNumPy.Setuint8(const Value: TDtype);
begin
   FhModuleNumPy.SetAttr('uint8', ToPython(value));
end;

procedure TDeNumPy.Setuintc(const Value: TDtype);
begin
   FhModuleNumPy.SetAttr('uintc', ToPython(value));
end;

procedure TDeNumPy.Setuintp(const Value: TDtype);
begin
   FhModuleNumPy.SetAttr('uintp', ToPython(value));
end;

procedure TDeNumPy.Setulonglong(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('ulonglong', ToPython(value));
end;

procedure TDeNumPy.Setunicode_(const Value: TDtype);
begin
   FhModuleNumPy.SetAttr('unicode_', ToPython(value));
end;

procedure TDeNumPy.Setushort(const Value: TDtype);
begin
   FhModuleNumPy.SetAttr('ushort', ToPython(value));
end;

procedure TDeNumPy.Setvoid(const Value: TDtype);
begin
    FhModuleNumPy.SetAttr('void', ToPython(value));
end;

{ TNumPy_Constant }

/// <summary>
/// IEEE 754 floating point representation of (positive) infinity.
/// </summary>
function TDeNumPy.inf: Double;
begin
    Result := FhModuleNumPy.GetAttr('inf').AsDouble;
end;

/// <summary>
/// IEEE 754 floating point representation of (positive) infinity.
///
/// Use np.inf because Inf, Infinity, PINF and infty are aliases for inf.For more details, see inf.
/// </summary>
function TDeNumPy.Infinity: Double;
begin
    Result := FhModuleNumPy.GetAttr('inf').AsDouble;
end;

/// <summary>
/// IEEE 754 floating point representation of (positive) infinity.
///
/// Use np.inf because Inf, Infinity, PINF and infty are aliases for inf.For more details, see inf.
/// </summary>
function TDeNumPy.PINF: Double;
begin
   Result := FhModuleNumPy.GetAttr('inf').AsDouble;
end;

/// <summary>
/// IEEE 754 floating point representation of (positive) infinity.
///
/// Use np.inf because Inf, Infinity, PINF and infty are aliases for inf.For more details, see inf.
/// </summary>
function TDeNumPy.infty: Double;
begin
    Result := FhModuleNumPy.GetAttr('inf').AsDouble;
end;

/// <summary>
/// IEEE 754 floating point representation of (positive) infinity.
/// </summary>
function TDeNumPy.NINF: Double;
begin
   Result := FhModuleNumPy.GetAttr('NINF').AsDouble;
end;

/// <summary>
/// IEEE 754 floating point representation of Not a Number(NaN).
/// </summary>
function TDeNumPy.nan: Double;
begin
    Result := FhModuleNumPy.GetAttr('nan').AsDouble;
end;

/// <summary>
/// IEEE 754 floating point representation of negative zero.
/// </summary>
function TDeNumPy.NZERO: Double;
begin
   Result := FhModuleNumPy.GetAttr('NZERO').AsDouble;
end;

/// <summary>
/// IEEE 754 floating point representation of negative zero.
/// </summary>
function TDeNumPy.PZERO: Double;
begin
   Result := FhModuleNumPy.GetAttr('PZERO').AsDouble;
end;

/// <summary>
/// Euler’s constant, base of natural logarithms, Napier’s constant.
/// </summary>
function TDeNumPy.e: Double;
begin
   Result := FhModuleNumPy.GetAttr('e').AsDouble;
end;

/// <summary>
/// γ = 0.5772156649015328606065120900824024310421...
/// https://en.wikipedia.org/wiki/Euler-Mascheroni_constant
/// </summary>
function TDeNumPy.euler_gamma: Double;
begin
    Result := FhModuleNumPy.GetAttr('e').AsDouble;
end;

/// <summary>
/// A convenient alias for None, useful for indexing arrays.
/// </summary>
function TDeNumPy.newaxis: Double;
begin
    Result := FhModuleNumPy.GetAttr('newaxis').AsDouble;
end;

/// <summary>
/// pi = 3.1415926535897932384626433...
/// </summary>
function TDeNumPy.pi: Double;
begin
   Result := FhModuleNumPy.GetAttr('e').AsDouble;
end;

end.






