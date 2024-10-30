<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" type="image/png" href="{{ url('public/logo', $general_setting->site_logo) }}" />
    <title>{{ $general_setting->site_title }}</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">

    <style type="text/css">
        * {
            font-size: 14px;
            line-height: 24px;
            font-family: 'Ubuntu', sans-serif;
            text-transform: capitalize;
        }

        .btn {
            padding: 7px 10px;
            text-decoration: none;
            border: none;
            display: block;
            text-align: center;
            margin: 7px;
            cursor: pointer;
        }

        .btn-info {
            background-color: #999;
            color: #FFF;
        }

        .btn-primary {
            background-color: #6449e7;
            color: #FFF;
            width: 100%;
        }

        td,
        th,
        tr,
        table {
            border-collapse: collapse;
        }

        tr {
            border-bottom: 1px dotted #ddd;
        }

        td,
        th {
            padding: 10px 0;
            width: 50%;
        }

        table {
            width: 100%;
        }

        tfoot tr th:first-child {
            text-align: left;
        }

        .centered {
            text-align: center;
            align-content: center;
        }

        small {
            font-size: 11px;
        }

        @media print and (min-width: 601px) {

            html,
            body {
                height: 100vh;
                margin: 0 !important;
                padding: 0 !important;
                overflow: hidden;
            }

        }

        @media print and (min-width: 601px) {
            * {
                font-size: 12px;
                line-height: 20px;
            }

            td,
            th {
                padding: 5px 0;
            }

            .hidden-print {
                display: none !important;
            }

            @page {
                margin: 1.5cm 0.5cm 0.5cm;
            }

            @page: first {
                margin-top: 0.5cm;
            }

            tbody::after {
                content: '';
                display: block;
                page-break-after: always;
                page-break-inside: avoid;
                page-break-before: avoid;
            }
        }

        @media print and (max-width: 600px) {

            body {
                width: 58mm;
                font-family: Arial, sans-serif;
                font-size: 12px;
                margin: 0;
                padding: 0;
            }

            .hidden-print {
                display: none !important;
            }

            .invoice {
                padding: 10px;
            }

            .header,
            .footer {
                text-align: center;
            }

            .header h1,
            .footer p {
                margin: 0;
                padding: 0;
            }

            .details {
                margin-top: 10px;
            }

            .details .section {
                margin-bottom: 10px;
            }

            .items {
                width: 100%;
                border-collapse: collapse;
            }

            .items th,
            .items td {
                border: 1px solid #000;
                padding: 5px;
                text-align: left;
            }

            .items th {
                background-color: #f2f2f2;
            }

            .totals {
                margin-top: 10px;
                text-align: right;
            }
        }
    </style>
</head>

<body>

    <div style="max-width:700px;margin:0 auto">
        @if (preg_match('~[0-9]~', url()->previous()))
            @php $url = '../../pos'; @endphp
        @else
            @php $url = url()->previous(); @endphp
        @endif
        <div class="hidden-print">
            <table>
                <tr>
                    <td><a href="{{ $url }}" class="btn btn-info"><i class="fa fa-arrow-left"></i>
                            {{ trans('file.Back') }}</a> </td>
                    <td><button onclick="window.print();" class="btn btn-primary"><i class="dripicons-print"></i>
                            {{ trans('file.Print') }}</button></td>
                </tr>
            </table>
            <br>
        </div>

        <div id="receipt-data">
            <table width="100%" style="margin-top: 5px">
                <tr style="border-bottom: none;">
                    <td>
                        @if ($general_setting->site_logo)
                            <div class="img">
                                <img src="{{ url('public/logo', $general_setting->site_logo) }}" height="50"
                                    width="50" style="margin:5px 0;">
                            </div>
                        @endif
                    </td>
                    <td align="right">
                        {{ trans('file.Date') }}:
                        {{ date($general_setting->date_format, strtotime($lims_sale_data->created_at->toDateString())) }}<br>
                        {{ trans('file.reference') }}: {{ $lims_sale_data->reference_no }}<br>
                        {{ trans('file.customer') }}: {{ $lims_customer_data->name }}
                    </td>
                </tr>
            </table>
            <div class="centered" style="position: relative; top: -10px">
                <h1 style="text-align:center;">{{ $lims_biller_data->company_name }}</h1>

                {{ trans('file.Address') }}: {{ $lims_warehouse_data->address }}
                <br>{{ trans('file.Phone Number') }}: {{ $lims_warehouse_data->phone }}

            </div>
            <table class="table-data">
                <thead>
                    <tr>
                        <th align="left">Product</th>
                        <th align="left">Qty</th>
                        <th align="left">Price</th>
                        <th align="left">Total</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $total_product_tax = 0; ?>
                    @foreach ($lims_product_sale_data as $key => $product_sale_data)
                        <?php
                        $lims_product_data = \App\Product::find($product_sale_data->product_id);
                        if ($product_sale_data->variant_id) {
                            $variant_data = \App\Variant::find($product_sale_data->variant_id);
                            $product_name = $lims_product_data->name . ' [' . $variant_data->name . ']';
                        } elseif ($product_sale_data->product_batch_id) {
                            $product_batch_data = \App\ProductBatch::select('batch_no')->find($product_sale_data->product_batch_id);
                            $product_name = $lims_product_data->name . ' [' . trans('file.Batch No') . ':' . $product_batch_data->batch_no . ']';
                        } else {
                            $product_name = $lims_product_data->name;
                        }
                        
                        if ($product_sale_data->imei_number) {
                            $product_name .= '<br>' . trans('IMEI or Serial Numbers') . ': ' . $product_sale_data->imei_number;
                        }
                        ?>
                        <tr>
                            <td>
                                {!! $product_name !!}
                                @if ($product_sale_data->tax_rate)
                                    <?php $total_product_tax += $product_sale_data->tax; ?>
                                    [{{ trans('file.Tax') }} ({{ $product_sale_data->tax_rate }}%):
                                    {{ $product_sale_data->tax }}]
                                @endif
                            </td>
                            <td>{{ $product_sale_data->qty }}</td>
                            <td>{{ number_format((float) ($product_sale_data->total / $product_sale_data->qty), 1, '.', '') }}
                            </td>
                            <td style="text-align:right;vertical-align:bottom">
                                {{ number_format((float) $product_sale_data->total, 1, '.', '') }}</td>
                        </tr>
                    @endforeach

                    <!-- <tfoot> -->
                    <tr>
                        <th colspan="3" style="text-align:left">{{ trans('file.Total') }}</th>
                        <th style="text-align:right">
                            {{ number_format((float) $lims_sale_data->total_price, 2, '.', '') }}</th>
                    </tr>
                    @if ($general_setting->invoice_format == 'gst' && $general_setting->state == 1)
                        <tr>
                            <td colspan="3">IGST</td>
                            <td style="text-align:right">{{ number_format((float) $total_product_tax, 2, '.', '') }}
                            </td>
                        </tr>
                    @elseif($general_setting->invoice_format == 'gst' && $general_setting->state == 2)
                        <tr>
                            <td colspan="3">SGST</td>
                            <td style="text-align:right">
                                {{ number_format((float) ($total_product_tax / 2), 2, '.', '') }}</td>
                        </tr>
                        <tr>
                            <td colspan="3">CGST</td>
                            <td style="text-align:right">
                                {{ number_format((float) ($total_product_tax / 2), 2, '.', '') }}</td>
                        </tr>
                    @endif
                    @if ($lims_sale_data->order_tax)
                        <tr>
                            <th colspan="3" style="text-align:left">{{ trans('file.Order Tax') }}</th>
                            <th style="text-align:right">
                                {{ number_format((float) $lims_sale_data->order_tax, 2, '.', '') }}</th>
                        </tr>
                    @endif
                    @if ($lims_sale_data->order_discount)
                        <tr>
                            <th colspan="3" style="text-align:left">{{ trans('file.Order Discount') }}</th>
                            <th style="text-align:right">
                                {{ number_format((float) $lims_sale_data->order_discount, 2, '.', '') }}</th>
                        </tr>
                    @endif
                    @if ($lims_sale_data->coupon_discount)
                        <tr>
                            <th colspan="3" style="text-align:left">{{ trans('file.Coupon Discount') }}</th>
                            <th style="text-align:right">
                                {{ number_format((float) $lims_sale_data->coupon_discount, 2, '.', '') }}</th>
                        </tr>
                    @endif
                    @if ($lims_sale_data->shipping_cost)
                        <tr>
                            <th colspan="3" style="text-align:left">{{ trans('file.Shipping Cost') }}</th>
                            <th style="text-align:right">
                                {{ number_format((float) $lims_sale_data->shipping_cost, 2, '.', '') }}</th>
                        </tr>
                    @endif
                    <tr>
                        <th colspan="3" style="text-align:left">{{ trans('file.grand total') }}</th>
                        <th style="text-align:right">
                            {{ number_format((float) $lims_sale_data->grand_total, 2, '.', '') }}</th>
                    </tr>
                    <tr>
                        {{-- @if ($general_setting->currency_position == 'prefix')
                            <th class="centered" colspan="3">{{ trans('file.In Words') }}:
                                <span>{{ $currency->code }}</span>
                                <span>{{ str_replace('-', ' ', $numberInWords) }}</span>
                            </th>
                        @else
                            <th class="centered" colspan="3">{{ trans('file.In Words') }}:
                                <span>{{ str_replace('-', ' ', $numberInWords) }}</span>
                                <span>{{ $currency->code }}</span>
                            </th>
                        @endif --}}
                    </tr>

                    @foreach ($lims_payment_data as $payment_data)
                        <tr style="background-color:#ddd;">
                            <td style="padding: 5px;width:30%">{{ trans('file.Paid By') }}:
                                {{ $payment_data->paying_method }}</td>
                            <td colspan="2" style="padding: 5px;width:40%">{{ trans('file.Amount') }}:
                                {{ number_format((float) $payment_data->amount, 2, '.', '') }}</td>
                            <td style="padding: 5px;width:30%">{{ trans('file.Change') }}:
                                {{ number_format((float) $payment_data->change, 2, '.', '') }}</td>
                        </tr>
                    @endforeach
                    <tr>
                        <td class="centered" colspan="4">
                            {{ trans('file.Thank you for shopping.') }}</td>
                    </tr>
                </tbody>
                <!-- </tfoot> -->
            </table>
            <!-- <div class="centered" style="margin:30px 0 50px">
            <small>{{ trans('file.Invoice Generated By') }} {{ $general_setting->site_title }}.
            {{ trans('file.Developed By') }} LionCoders</strong></small>
        </div> -->
        </div>
    </div>

    <script type="text/javascript">
        localStorage.clear();

        function auto_print() {
            window.print()
        }
        setTimeout(auto_print, 1000);
    </script>

</body>

</html>
