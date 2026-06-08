// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/revoke_ban_request_body.dart';
import '../../../../../models/revoke_ban_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\bans\{banId}\revoke
class RevokeRequestBuilder extends BaseRequestBuilder<RevokeRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RevokeRequestBuilder clone() {
        return RevokeRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RevokeRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RevokeRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/bans/{banId}/revoke", pathParameters) ;
    /// Instantiates a new [RevokeRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RevokeRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/bans/{banId}/revoke", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Revokes an active league team ban. Requires a league-operator key bound to the league and the league bans capability.
    ///  [body] Optional reason for revoking a league ban.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<RevokeBanResponse?> postAsync(RevokeBanRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<RevokeBanResponse>(requestInfo, RevokeBanResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Revokes an active league team ban. Requires a league-operator key bound to the league and the league bans capability.
    ///  [body] Optional reason for revoking a league ban.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(RevokeBanRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
