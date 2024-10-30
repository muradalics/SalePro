<?php

namespace App\Http\Controllers\Api;

use App\Biller;
use App\Brand;
use App\Category;
use App\Customer;
use App\Expense;
use App\Http\Controllers\Controller;
use App\Product;
use App\Product_Warehouse;
use App\Sale;
use App\Warehouse;
use Illuminate\Http\Request;

class MobileApiController extends Controller
{
    public function index()
    {
        try {
            
            $data['customer'] = Customer::all();
            $data['billers'] = Biller::all();
            $data['werehouses'] = Warehouse::all();
            $data['products'] = Product::all();
            $data['categories'] = Category::all();
            $data['brands'] = Brand::all();
            $data['sales'] = Sale::all();

            return response()->json([
                'status' => true,
                'message' => 'All Data Successfully	',
                'data' => $data,
                // 'id' => auth()->user()->id
            ], 200);
        } catch (\Throwable $e) {
            return response()->json([
                'status' => false,
                'message' => $e->getMessage(),
            ], 500);
        }

    }

    public function postData(Request $request)
    {
        
            // Check if the sale record exists
            $sale = Sale::where('id', $request->id)->first();
            
            if ($sale) {
                // If the sale exists, update it
                $sale->update([
                    'id' => $request->id,
                    'reference_no' => $request->reference_no,
                    'user_id' => $request->user_id,
                    'cash_register_id' => $request->cash_register_id,
                    'customer_id' => $request->customer_id,
                    'warehouse_id' => $request->warehouse_id,
                    'biller_id' => $request->biller_id,
                    'item' => $request->item,
                    'total_qty' => $request->total_qty,
                    'total_price' => $request->total_price,
                    'grand_total' => $request->grand_total,
                    'order_discount_type' => $request->order_discount_type,
                    'order_discount' => $request->order_discount,
                    'sale_status' => $request->sale_status,
                    'payment_status' => $request->payment_status,
                    'created_at' => $request->created_at,
                    'updated_at' => $request->updated_at,
                ]);
            } else {
                // If the sale does not exist, create a new one
                $productwarehouse = Product_Warehouse::where(['product_id' => $request->item, 'warehouse_id' => $request->warehouse_id])->first();
                $productwarehouse->qty -= $request->total_qty;
                $productwarehouse->save();
                $product = Product::where(['id' => $request->item])->first();
                $product->qty -= $request->total_qty;
                $product->save();
                // return response()->json([
                //     'status' => true,
                //     'message' => 'All Data Successfully	',
                //     'data' => $product,
                //     // 'id' => auth()->user()->id
                // ], 200);
                Sale::create($request->all());
            }
        

        return response()->json(['message' => 'Sales synced successfully'], 200);

    }
}
