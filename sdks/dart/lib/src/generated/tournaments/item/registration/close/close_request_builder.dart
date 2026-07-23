// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/tournament_close_registration_response.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\registration\close
class CloseRequestBuilder extends BaseRequestBuilder<CloseRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    CloseRequestBuilder clone() {
        return CloseRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CloseRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CloseRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/registration/close", pathParameters) ;
    /// Instantiates a new [CloseRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CloseRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/registration/close", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Moves a REGISTRATION_OPEN tournament to REGISTRATION_CLOSED. Takes no request body. Any other status answers 400. This is REVERSIBLE - registration can be re-opened from REGISTRATION_CLOSED. Unlike opening, closing emits NO webhook and does not change the tournament's public listing, so a webhook consumer will not observe this transition; poll the tournament if you need to react to it. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentCloseRegistrationResponse?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentCloseRegistrationResponse>(requestInfo, TournamentCloseRegistrationResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Moves a REGISTRATION_OPEN tournament to REGISTRATION_CLOSED. Takes no request body. Any other status answers 400. This is REVERSIBLE - registration can be re-opened from REGISTRATION_CLOSED. Unlike opening, closing emits NO webhook and does not change the tournament's public listing, so a webhook consumer will not observe this transition; poll the tournament if you need to react to it. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
