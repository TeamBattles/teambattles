// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './connections_get_response.dart';

/// auto generated
/// Builds and executes requests for operations under \user\connections
class ConnectionsRequestBuilder extends BaseRequestBuilder<ConnectionsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ConnectionsRequestBuilder clone() {
        return ConnectionsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ConnectionsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ConnectionsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user/connections", pathParameters) ;
    /// Instantiates a new [ConnectionsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ConnectionsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user/connections", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the full set of connections for the API key owner, including private connections and the owner-only isSelfReported and showOnProfile flags. The user is always derived from the API key. Requires users.profile:read.
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
    /// Returns the full set of connections for the API key owner, including private connections and the owner-only isSelfReported and showOnProfile flags. The user is always derived from the API key. Requires users.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
