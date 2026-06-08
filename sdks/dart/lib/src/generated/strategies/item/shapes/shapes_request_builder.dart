// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/api_strategy_shapes_envelope.dart';
import '../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \strategies\{slug}\shapes
class ShapesRequestBuilder extends BaseRequestBuilder<ShapesRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ShapesRequestBuilder clone() {
        return ShapesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ShapesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ShapesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/strategies/{slug}/shapes", pathParameters) ;
    /// Instantiates a new [ShapesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ShapesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/strategies/{slug}/shapes", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the canvas shapes of a shareable strategy resolved by its public share slug, ordered by stacking index. Hidden working shapes are omitted. The same visibility gate as the strategy read applies (private returns 404 unless the API key owner owns it). Requires strategies.read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ApiStrategyShapesEnvelope?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ApiStrategyShapesEnvelope>(requestInfo, ApiStrategyShapesEnvelope.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the canvas shapes of a shareable strategy resolved by its public share slug, ordered by stacking index. Hidden working shapes are omitted. The same visibility gate as the strategy read applies (private returns 404 unless the API key owner owns it). Requires strategies.read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
