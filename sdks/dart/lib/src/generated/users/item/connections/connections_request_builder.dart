// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './connections_get_response.dart';

/// auto generated
/// Builds and executes requests for operations under \users\{identifier}\connections
class ConnectionsRequestBuilder extends BaseRequestBuilder<ConnectionsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ConnectionsRequestBuilder clone() {
        return ConnectionsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ConnectionsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ConnectionsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/users/{identifier}/connections", pathParameters) ;
    /// Instantiates a new [ConnectionsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ConnectionsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/users/{identifier}/connections", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns a user's linked-account connections. Access requires a public profile or self: a non-self viewer of a limited or private profile gets 403, which is stricter than the stats, teams, and organizations endpoints that also allow limited profiles. Non-self responses include only the connections the user marked visible on their profile; self responses include all of them. isVerified is true when the connection's platform matches one of the user's linked OAuth providers, not the connection's self-reported flag. Not paginated: returns the full matching set as connections plus a count, in no guaranteed order. Banned users return 404. Requires users.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ConnectionsGetResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ConnectionsGetResponse>(requestInfo, ConnectionsGetResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a user's linked-account connections. Access requires a public profile or self: a non-self viewer of a limited or private profile gets 403, which is stricter than the stats, teams, and organizations endpoints that also allow limited profiles. Non-self responses include only the connections the user marked visible on their profile; self responses include all of them. isVerified is true when the connection's platform matches one of the user's linked OAuth providers, not the connection's self-reported flag. Not paginated: returns the full matching set as connections plus a count, in no guaranteed order. Banned users return 404. Requires users.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
