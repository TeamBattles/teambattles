// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/transfer_org_ownership_body.dart';
import '../../../../models/transfer_org_ownership_response.dart';

/// auto generated
/// Builds and executes requests for operations under \orgs\{identifier}\ownership\transfer
class TransferRequestBuilder extends BaseRequestBuilder<TransferRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    TransferRequestBuilder clone() {
        return TransferRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TransferRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TransferRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/{identifier}/ownership/transfer", pathParameters) ;
    /// Instantiates a new [TransferRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TransferRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/{identifier}/ownership/transfer", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Transfers organization ownership from the caller (key owner) to another active member, who becomes the new owner. The caller must currently be the organization owner and is demoted to admin. Requires orgs.roster:read-write.
    ///  [body] Transfer organization ownership to another member.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TransferOrgOwnershipResponse?> postAsync(TransferOrgOwnershipBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TransferOrgOwnershipResponse>(requestInfo, TransferOrgOwnershipResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Transfers organization ownership from the caller (key owner) to another active member, who becomes the new owner. The caller must currently be the organization owner and is demoted to admin. Requires orgs.roster:read-write.
    ///  [body] Transfer organization ownership to another member.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TransferOrgOwnershipBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
