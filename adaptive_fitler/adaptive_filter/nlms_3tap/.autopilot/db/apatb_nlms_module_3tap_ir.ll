; ModuleID = '/home/user/rfdev/hls-build/adaptive_fitler/adaptive_filter/nlms_3tap/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream" = type { %"struct.hls::axis" }
%"struct.hls::axis" = type { %"class.std::complex", %struct.ap_uint, %struct.ap_uint, %struct.ap_uint.90, %struct.ap_uint.90, %struct.ap_uint.90, %struct.ap_uint.90 }
%"class.std::complex" = type { %struct.ap_fixed, %struct.ap_fixed }
%struct.ap_fixed = type { %struct.ap_fixed_base }
%struct.ap_fixed_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i16 }
%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int.89 }
%struct.ssdm_int.89 = type { i4 }
%struct.ap_uint.90 = type { %struct.ap_int_base.91 }
%struct.ap_int_base.91 = type { %struct.ssdm_int.92 }
%struct.ssdm_int.92 = type { i1 }
%struct.ap_ufixed = type { %struct.ap_fixed_base.3 }
%struct.ap_fixed_base.3 = type { %struct.ssdm_int.4 }
%struct.ssdm_int.4 = type { i32 }

; Function Attrs: noinline
define void @apatb_nlms_module_3tap_ir(%"class.hls::stream"* %main_in, %"class.hls::stream"* %aux_in, %"class.hls::stream"* %output, %struct.ap_ufixed* nocapture readonly %mu) local_unnamed_addr #0 {
entry:
  %main_in_copy.data = alloca i32
  %main_in_copy.keep = alloca i4
  %main_in_copy.strb = alloca i4
  %main_in_copy.last = alloca i1
  %aux_in_copy.data = alloca i32
  %aux_in_copy.keep = alloca i4
  %aux_in_copy.strb = alloca i4
  %aux_in_copy.last = alloca i1
  %output_copy.data = alloca i32
  %output_copy.keep = alloca i4
  %output_copy.strb = alloca i4
  %output_copy.last = alloca i1
  call fastcc void @copy_in(%"class.hls::stream"* %main_in, i32* %main_in_copy.data, i4* %main_in_copy.keep, i4* %main_in_copy.strb, i1* %main_in_copy.last, %"class.hls::stream"* %aux_in, i32* %aux_in_copy.data, i4* %aux_in_copy.keep, i4* %aux_in_copy.strb, i1* %aux_in_copy.last, %"class.hls::stream"* %output, i32* %output_copy.data, i4* %output_copy.keep, i4* %output_copy.strb, i1* %output_copy.last)
  call void @apatb_nlms_module_3tap_hw(i32* %main_in_copy.data, i4* %main_in_copy.keep, i4* %main_in_copy.strb, i1* %main_in_copy.last, i32* %aux_in_copy.data, i4* %aux_in_copy.keep, i4* %aux_in_copy.strb, i1* %aux_in_copy.last, i32* %output_copy.data, i4* %output_copy.keep, i4* %output_copy.strb, i1* %output_copy.last, %struct.ap_ufixed* %mu)
  call fastcc void @copy_out(%"class.hls::stream"* %main_in, i32* %main_in_copy.data, i4* %main_in_copy.keep, i4* %main_in_copy.strb, i1* %main_in_copy.last, %"class.hls::stream"* %aux_in, i32* %aux_in_copy.data, i4* %aux_in_copy.keep, i4* %aux_in_copy.strb, i1* %aux_in_copy.last, %"class.hls::stream"* %output, i32* %output_copy.data, i4* %output_copy.keep, i4* %output_copy.strb, i1* %output_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream"*, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream"*, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, %"class.hls::stream"*, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V15, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V26, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V48) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(i32* %_V_data_V1, i4* %_V_keep_V2, i4* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(i32* %_V_data_V15, i4* %_V_keep_V26, i4* %_V_strb_V37, i1* %_V_last_V48, %"class.hls::stream"* %2)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream"*, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream"*, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, %"class.hls::stream"*, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V15, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V26, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V48) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.129"(%"class.hls::stream"* %0, i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.129"(%"class.hls::stream"* %1, i32* %_V_data_V1, i4* %_V_keep_V2, i4* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.129"(%"class.hls::stream"* %2, i32* %_V_data_V15, i4* %_V_keep_V26, i4* %_V_strb_V37, i1* %_V_last_V48)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.129"(%"class.hls::stream"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream.132"(%"class.hls::stream"* nonnull align 512 %0, i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.132"(%"class.hls::stream"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream"
  %2 = alloca i32
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i32* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_4(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i32* %2 to i8*
  %9 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %8, i8* %9)
  %10 = load volatile i32, i32* %2
  %11 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0
  %12 = bitcast %"class.std::complex"* %11 to i32*
  store i32 %10, i32* %12
  %13 = bitcast i4* %4 to i8*
  %14 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %13, i8* %14)
  %15 = bitcast i4* %4 to i8*
  %16 = load i8, i8* %15
  %17 = trunc i8 %16 to i4
  %18 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1
  %19 = bitcast %struct.ap_uint* %18 to i4*
  store i4 %17, i4* %19
  %20 = bitcast i4* %3 to i8*
  %21 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %20, i8* %21)
  %22 = bitcast i4* %3 to i8*
  %23 = load i8, i8* %22
  %24 = trunc i8 %23 to i4
  %25 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2
  %26 = bitcast %struct.ap_uint* %25 to i4*
  store i4 %24, i4* %26
  %27 = bitcast i1* %5 to i8*
  %28 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %27, i8* %28)
  %29 = bitcast i1* %5 to i8*
  %30 = load i8, i8* %29
  %31 = trunc i8 %30 to i1
  %32 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4
  %33 = bitcast %struct.ap_uint.90* %32 to i1*
  store i1 %31, i1* %33
  %34 = bitcast %"class.hls::stream"* %1 to i8*
  %35 = bitcast %"class.hls::stream"* %0 to i8*
  call void @fpga_fifo_push_10(i8* %34, i8* %35)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream"(i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream.140"(i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.140"(i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream"
  %2 = alloca %"class.hls::stream"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_10(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream"* %2 to i8*
  %6 = bitcast %"class.hls::stream"* %0 to i8*
  call void @fpga_fifo_pop_10(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream", %"class.hls::stream"* %2
  store %"class.hls::stream" %7, %"class.hls::stream"* %1
  %8 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"class.std::complex"* %8 to i32*
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %struct.ap_uint* %12 to i4*
  %14 = bitcast i4* %13 to i8*
  %15 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %struct.ap_uint* %16 to i4*
  %18 = bitcast i4* %17 to i8*
  %19 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %struct.ap_uint.90* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_nlms_module_3tap_hw(i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, %struct.ap_ufixed*)

define void @nlms_module_3tap_hw_stub_wrapper(i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, %struct.ap_ufixed*) #5 {
entry:
  %13 = alloca %"class.hls::stream"
  %14 = alloca %"class.hls::stream"
  %15 = alloca %"class.hls::stream"
  call void @copy_out(%"class.hls::stream"* %13, i32* %0, i4* %1, i4* %2, i1* %3, %"class.hls::stream"* %14, i32* %4, i4* %5, i4* %6, i1* %7, %"class.hls::stream"* %15, i32* %8, i4* %9, i4* %10, i1* %11)
  call void @nlms_module_3tap_hw_stub(%"class.hls::stream"* %13, %"class.hls::stream"* %14, %"class.hls::stream"* %15, %struct.ap_ufixed* %12)
  call void @copy_in(%"class.hls::stream"* %13, i32* %0, i4* %1, i4* %2, i1* %3, %"class.hls::stream"* %14, i32* %4, i4* %5, i4* %6, i1* %7, %"class.hls::stream"* %15, i32* %8, i4* %9, i4* %10, i1* %11)
  ret void
}

declare void @nlms_module_3tap_hw_stub(%"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream"*, %struct.ap_ufixed*)

declare i1 @fpga_fifo_not_empty_10(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_10(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_10(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
