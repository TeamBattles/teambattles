// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/create_league_ticket_request_body.dart';
import '../../../../models/create_league_ticket_response.dart';
import '../../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\tickets\create
class CreateRequestBuilder extends BaseRequestBuilder<CreateRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    CreateRequestBuilder clone() {
        return CreateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CreateRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CreateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/tickets/create", pathParameters) ;
    /// Instantiates a new [CreateRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CreateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/tickets/create", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Creates a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
    ///  [body] Creates a league-scoped support ticket.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<CreateLeagueTicketResponse?> postAsync(CreateLeagueTicketRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<CreateLeagueTicketResponse>(requestInfo, CreateLeagueTicketResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
    ///  [body] Creates a league-scoped support ticket.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(CreateLeagueTicketRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
