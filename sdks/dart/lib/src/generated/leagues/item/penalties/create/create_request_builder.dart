// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/create_penalty_request_body.dart';
import '../../../../models/create_penalty_response.dart';
import '../../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\penalties\create
class CreateRequestBuilder extends BaseRequestBuilder<CreateRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    CreateRequestBuilder clone() {
        return CreateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CreateRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CreateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/penalties/create", pathParameters) ;
    /// Instantiates a new [CreateRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CreateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/penalties/create", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Issues a warning, match-forfeit penalty, or point deduction to a league team. Requires a league-operator key bound to the league and the league penalties capability.
    ///  [body] Creates a league team penalty.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<CreatePenaltyResponse?> postAsync(CreatePenaltyRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<CreatePenaltyResponse>(requestInfo, CreatePenaltyResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Issues a warning, match-forfeit penalty, or point deduction to a league team. Requires a league-operator key bound to the league and the league penalties capability.
    ///  [body] Creates a league team penalty.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(CreatePenaltyRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
