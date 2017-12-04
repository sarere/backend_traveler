<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
    }

    public function getReviews(Request $request)
    {
        $place_id = $request->placeId;
        $reviews = DB::table('reviews')
                        ->where('place_id', $place_id)
                        ->get();

        return response()->json($reviews);
    }

    public function submitReview(Request $request)
    {
        $message = null;
        $isReviewed = DB::table('reviews')
            ->join('users', 'users.id', '=', 'reviews.user_id')
            ->select('reviews.id')
            ->where('users.email', $request->email)
            ->where('reviews.place_id', $request->place_id)
            ->first();

        $place_rating = DB::table('places')
                            ->where('id',$request->place_id)
                            ->value('rating');

        $total_rating = DB::table('reviews')
                            ->where('place_id',$request->place_id)
                            ->count();

        $userId = DB::table('users')
                    ->where('email',$request->email)
                    ->value('id');

        if(!$isReviewed){
            DB::table('reviews')->insert([
                'title' => $request->title,
                'review' => $request->review,
                'user_id' => $userId,
                'rating_review' => $request->rating,
                'place_id' => $request->place_id
            ]);

            $total_rating += 1;
            $final_rating = ($place_rating + $request->rating)/$total_rating; 

            DB::table('places')
                    ->where('id',$request->place_id)
                    ->update([
                        'rating' => $final_rating
                    ]);

            $message = "success";
        } else {
            $message = "failed";
        }

        return response()->json(['message' => $message]);
        // return response()->json($final_rating);
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
    public function store(Request $request)
    {
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function show(Review $review)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function edit(Review $review)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Review $review)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function destroy(Review $review)
    {
        //
    }
}
