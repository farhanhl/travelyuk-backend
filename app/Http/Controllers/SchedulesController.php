<?php

namespace App\Http\Controllers;

use App\Models\Schedule;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;

class SchedulesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(): JsonResponse
    {
        $schedules = Schedule::latestFirst()->get();
        return response()->json(['schedules' => $schedules]);
    }

    public function searchSchedule(Request $request): JsonResponse
    {
        try {
            $request->validate([
                'origin_city_id' => 'required|integer',
                'destination_city_id' => 'required|integer',
                'date' => 'required|date_format:Y-m-d',
            ]);

            $originCityId = $request->input('origin_city_id');
            $destinationCityId = $request->input('destination_city_id');
            $date = $request->input('date');

            $schedules = Schedule::byCitiesAndDate($originCityId, $destinationCityId, $date)
                                 ->latestFirst()
                                 ->get();

            return response()->json(['schedules' => $schedules]);
        } catch (\Exception $e) {
            return response()->json(['message' => $e], 500);
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
        $request->validate([
            'origin_city_id' => 'required|exists:cities,id',
            'destination_city_id' => 'required|exists:cities,id',
            'date' => 'required|date',
            'departure_time' => 'required|date_format:H:i',
            'bus_name' => 'required|string',
            'price' => 'required|numeric',
        ]);

        $schedule = Schedule::create($request->all());

        return response()->json(['message' => 'Schedule berhasil ditambahkan', 'schedule' => $schedule], 201);
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
