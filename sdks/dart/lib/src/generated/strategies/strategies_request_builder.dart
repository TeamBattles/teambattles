// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_slug_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \strategies
class StrategiesRequestBuilder extends BaseRequestBuilder<StrategiesRequestBuilder> {
    /// Gets an item from the teambattles.strategies.item collection
    ///  [slug] Strategy public share slug.
    WithSlugItemRequestBuilder bySlug(String slug) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('slug', () => slug);
        return WithSlugItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    StrategiesRequestBuilder clone() {
        return StrategiesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [StrategiesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StrategiesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/strategies", pathParameters) ;
    /// Instantiates a new [StrategiesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StrategiesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/strategies", {RequestInformation.rawUrlKey : rawUrl}) ;
}
