// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './config/config_request_builder.dart';
import './issue/issue_request_builder.dart';
import './item/with_cooldown_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\cooldowns
class CooldownsRequestBuilder extends BaseRequestBuilder<CooldownsRequestBuilder> {
    ///  The config property
    ConfigRequestBuilder get config {
        return ConfigRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The issue property
    IssueRequestBuilder get issue {
        return IssueRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the teambattles.leagues.item.cooldowns.item collection
    ///  [cooldownId] League member cooldown ID.
    WithCooldownItemRequestBuilder byCooldownId(String cooldownId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('cooldownId', () => cooldownId);
        return WithCooldownItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    CooldownsRequestBuilder clone() {
        return CooldownsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CooldownsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CooldownsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/cooldowns", pathParameters) ;
    /// Instantiates a new [CooldownsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CooldownsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/cooldowns", {RequestInformation.rawUrlKey : rawUrl}) ;
}
