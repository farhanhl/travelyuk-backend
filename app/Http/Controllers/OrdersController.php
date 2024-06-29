<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Validation\ValidationException;

class OrdersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(): JsonResponse
    {
        $orders = Order::all();
        return response()->json(['orders' => $orders]);
    }

    public function getOrdersByUser($user_id): JsonResponse
    {
        $orders = Order::ofUser($user_id)->get();

        return response()->json(['orders' => $orders], 200);
    }

    public function updateStatus(Request $request, $order_id): JsonResponse
    {
        $order = Order::findOrFail($order_id);
        if($request->status == "is_paid"){
            $order->is_paid = true;
            $order->save();
    
            return response()->json(['message' => 'Status pembayaran berhasil diperbarui', 'order' => $order]);
        } else if($request->status == "is_payment_accepted"){
            $order->is_payment_accepted = true;
            $order->save();
    
            return response()->json(['message' => 'Pembayaran berhasil di konfirmasi', 'order' => $order]);
        } else if($request->status == "is_refund"){
            $order->is_refund = true;
            $order->save();
    
            return response()->json(['message' => 'Berhasil mengajukan pengembalian dana', 'order' => $order]);
        } else if($request->status == "is_refund_accepted"){
            $order->is_refund_accepted = true;
            $order->save();
    
            return response()->json(['message' => 'Dana user berhasil dikembalikan', 'order' => $order]);
        } else {
            return response()->json(['message' => 'Status tidak valid'], 400);
        }
    }

    public function getOrder($order_id): JsonResponse
    {
        try {
            $order = Order::findOrFail($order_id);
            return response()->json($order, 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Anda belum memiliki pesanan'], 404);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request): JsonResponse
    {
        try {
            $request->validate([
                'user_id' => 'required|exists:users,id',
                'schedule_id' => 'required|exists:schedules,id',
                'pax' => 'required',
                'price' => 'required',
            ]);

            $order = Order::create($request->all());

            return response()->json(['message' => 'Order berhasil dibuat', 'order' => $order], 201);
        } catch (ValidationException $e) {
            return response()->json([
                'message' => 'Harap isi semua data yang diperlukan',
                'errors' => $e->errors(),
            ], 422);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
