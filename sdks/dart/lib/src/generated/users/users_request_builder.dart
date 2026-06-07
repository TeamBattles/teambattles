// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_identifier_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \users
class UsersRequestBuilder extends BaseRequestBuilder<UsersRequestBuilder> {
    /// Gets an item from the teambattles.users.item collection
    ///  [identifier] Username or Convex user ID.
    WithIdentifierItemRequestBuilder byIdentifier(String identifier) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('identifier', () => identifier);
        return WithIdentifierItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    UsersRequestBuilder clone() {
        return UsersRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [UsersRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    UsersRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/users", pathParameters) ;
    /// Instantiates a new [UsersRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    UsersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/users", {RequestInformation.rawUrlKey : rawUrl}) ;
}
