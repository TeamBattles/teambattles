// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_identifier_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \orgs
class OrgsRequestBuilder extends BaseRequestBuilder<OrgsRequestBuilder> {
    /// Gets an item from the teambattles.orgs.item collection
    ///  [identifier] Organization id or slug.
    WithIdentifierItemRequestBuilder byIdentifier(String identifier) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('identifier', () => identifier);
        return WithIdentifierItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    OrgsRequestBuilder clone() {
        return OrgsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [OrgsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OrgsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs", pathParameters) ;
    /// Instantiates a new [OrgsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OrgsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs", {RequestInformation.rawUrlKey : rawUrl}) ;
}
