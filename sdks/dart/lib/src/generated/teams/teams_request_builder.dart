// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/create_team_body.dart';
import '../models/create_team_response.dart';
import '../models/error.dart';
import './item/with_identifier_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \teams
class TeamsRequestBuilder extends BaseRequestBuilder<TeamsRequestBuilder> {
    /// Gets an item from the teambattles.teams.item collection
    ///  [identifier] Team slug or Convex team ID.
    WithIdentifierItemRequestBuilder byIdentifier(String identifier) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('identifier', () => identifier);
        return WithIdentifierItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    TeamsRequestBuilder clone() {
        return TeamsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TeamsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TeamsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/teams", pathParameters) ;
    /// Instantiates a new [TeamsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TeamsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/teams", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Creates a new team as the personal API key owner. The owner must manage the owning organization. Role ceilings and cascades are enforced exactly as in the web app. Requires teams.profile:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Creates a new team as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<CreateTeamResponse?> postAsync(CreateTeamBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<CreateTeamResponse>(requestInfo, CreateTeamResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates a new team as the personal API key owner. The owner must manage the owning organization. Role ceilings and cascades are enforced exactly as in the web app. Requires teams.profile:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Creates a new team as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(CreateTeamBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
