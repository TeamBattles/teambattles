// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './connections/connections_request_builder.dart';
import './organizations/organizations_request_builder.dart';
import './stats/stats_request_builder.dart';
import './stream_/stream_request_builder.dart';
import './teams/teams_request_builder.dart';
import './trophies/trophies_request_builder.dart';
import './with_identifier_get_response.dart';

/// auto generated
/// Builds and executes requests for operations under \users\{identifier}
class WithIdentifierItemRequestBuilder extends BaseRequestBuilder<WithIdentifierItemRequestBuilder> {
    ///  The connections property
    ConnectionsRequestBuilder get connections {
        return ConnectionsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The organizations property
    OrganizationsRequestBuilder get organizations {
        return OrganizationsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The stats property
    StatsRequestBuilder get stats {
        return StatsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The stream property
    StreamRequestBuilder get stream_ {
        return StreamRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The teams property
    TeamsRequestBuilder get teams {
        return TeamsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The trophies property
    TrophiesRequestBuilder get trophies {
        return TrophiesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithIdentifierItemRequestBuilder clone() {
        return WithIdentifierItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithIdentifierItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithIdentifierItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/users/{identifier}", pathParameters) ;
    /// Instantiates a new [WithIdentifierItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithIdentifierItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/users/{identifier}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns an API-safe user profile projection. Private profiles return only the base profile envelope. Requires users.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<WithIdentifierGetResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WithIdentifierGetResponse>(requestInfo, WithIdentifierGetResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns an API-safe user profile projection. Private profiles return only the base profile envelope. Requires users.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
