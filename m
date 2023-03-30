Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2BB6D0C05
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 18:58:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phvb4-00029a-B0;
	Thu, 30 Mar 2023 16:57:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=Johannes.Thumshirn@wdc.com>)
 id 1phvaw-00029O-3v for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 16:57:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+Ujby6oeXTC/HDiOr8Ywrt3ySR3sR25UYi6bLRKPiQc=; b=Q9PqQ1EWpMV71Yzp5zLh8SEwzp
 aFBJpWoWoBPKAs23RGElMN0Uz1wE5Zhtj/emUFz7kyVDl6tnZh5bOf+PCv4eayichJtRNgY8rdNrh
 s9VEeIHsETtPTICknrwyT+LccVlA/X3LSNA/nCoUkgR6hBTDihCvwizDIQFEgz9Guyy4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+Ujby6oeXTC/HDiOr8Ywrt3ySR3sR25UYi6bLRKPiQc=; b=ETuosJoRb15htdUpVXzlL2tuZ0
 4J20mBu+MUlfONVIG+AW0FFVAVq3yH9Ts+9gVvuovbZs9+VSEahefhGsrFBkTsvkbcOaEtK5ABwcZ
 kJnH6BmV8pS55QYpy0yWlHCEiuC/RAYT31nPZMEDLwjpez0R0n2yff8FQMz/qd5xIJpE=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phvas-0004p2-2I for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 16:57:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680195464; x=1711731464;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+Ujby6oeXTC/HDiOr8Ywrt3ySR3sR25UYi6bLRKPiQc=;
 b=OnHCw8EgNkXaeThPapZzsmDckypPstLPsOdPS5NHM/jZ3r+s4bVPuABe
 pdAA7L6aLJ7OY2IhqbcB8KaPKEUaf7hYxD7Pv2wK+el1YrRj5LoSvf5cl
 qY1sXvPsuwjqefpw9un6ZAUBJcjuOp/dj+O9vgscLN2TA4gP0iiBdJyZZ
 cclU89Ya2FzIVhYIXNCvRmlSsQwWghXdnF6N+ZRQje7Uhrl81ddoU2VXF
 Qtq8H44qCiIo/3vAgB1/C6EU+0dbbmckbVQtoeQiyL5X/aYERc5byYYFp
 W5B3ZWz9bvw3SSMXaerDs0dtBdbYg8GavhZtRv9VEvGQLb/GEBbk1rf6B Q==;
X-IronPort-AV: E=Sophos;i="5.98,305,1673884800"; d="scan'208";a="231886126"
Received: from mail-bn1nam02lp2046.outbound.protection.outlook.com (HELO
 NAM02-BN1-obe.outbound.protection.outlook.com) ([104.47.51.46])
 by ob1.hgst.iphmx.com with ESMTP; 31 Mar 2023 00:42:02 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YZ8FUR5E0nAr/z3v1QxXuFAlDpIHb7GsU2yuSSyYj6tW5/K/t7p854uYPDG0zAx7PKEaTRNgrWI072KwKAP6MBFWG2myUOc8emE460MxCXh+acnYXPc2tXENq+DMJ5IfKfVNZRrM+eOe1bAOPzKwl+ezRgnd5E1TrBpGTJYx4guupHaOBqVOwdw4Evgo9y46arQgscmEmRtHesQ5vaQdLMsxkpCw1gqsPI+4Aoz+GOezdGNJi6KEz/XuWzxk1LbkzJ/5Wd8TaFbstaAVkTwhucQos34RqNg1b1xAC4aogW7kwu33sfN+DTmzCvbZLFtPWKnYhCyGPpL764jai9M48w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Ujby6oeXTC/HDiOr8Ywrt3ySR3sR25UYi6bLRKPiQc=;
 b=O9fzAtQuKvsYcQT7Zpr+BQwA7rJJYy9N2GPILmoXvuBSbO7hrzdlP3SzE0YuCStDRchRXZG5m7ebHUSkp9XOLZ82jmNTDQRxdF+3v/Yxn1d3W0MAVPBupQE/ha9wenLv946MTiQtDP1S85ry3knd/MHLgeCzyQeN+12rrpGBqqVXGjxHDYPKPhwO7k5I7wj68dwtpsiYQV+lqwtRAKrfj98qegSMtHrvu693TxYJ9Ygsdg+EEstE02RP2UDk3AtEgDKGnaZx1r8yrjo65rvndoZUOQRyuSrIb8qVv7LXsfhbu5bYNLA4/+jVxVBM1fLEdwb8D2LAvzf/rBXcweurtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+Ujby6oeXTC/HDiOr8Ywrt3ySR3sR25UYi6bLRKPiQc=;
 b=Gu4/EHJ2o75s0g7OWAJOKwyEU98CcJmhJQ6wz7JIzTt/r3rna1uveCaiZQYD4VPDl72J4q1ueCIUUaVRGv/z+prxzQdIlSmZKiFBO4+px9qy9no5kh6eNNmkGJyJPRWP/yjKp8yGh8iEDhFEZLhUz8Nvl/rOfGPHRvahV4G3ZAw=
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by CO6PR04MB7571.namprd04.prod.outlook.com (2603:10b6:303:ab::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.22; Thu, 30 Mar
 2023 16:41:59 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::8c4d:6283:7b41:ed6f]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::8c4d:6283:7b41:ed6f%6]) with mapi id 15.20.6254.020; Thu, 30 Mar 2023
 16:41:59 +0000
To: "dsterba@suse.cz" <dsterba@suse.cz>
Thread-Topic: [PATCH v2 00/19] bio: check return values of bio_add_page
Thread-Index: AQHZYvSUAQyHSHKcFk6jVy1YtMnDXa8Td2WAgAAPyAA=
Date: Thu, 30 Mar 2023 16:41:58 +0000
Message-ID: <9835fc72-18b4-517d-0861-b5b413252eb9@wdc.com>
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
 <20230330154529.GS10580@twin.jikos.cz>
In-Reply-To: <20230330154529.GS10580@twin.jikos.cz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|CO6PR04MB7571:EE_
x-ms-office365-filtering-correlation-id: 43ad4c16-aa6c-40fa-e2e0-08db313dae47
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PtdD2Kz1jfCg0E30W3vADGsaI5S/V/twHIgZucKSCJYD1avQLYUxTPgK9LR0dMeNPdAms2dtx1ZavrTRZJC3ATZnVTJyhjVwhhFpt9pfd1LjKgD82a4JNe2E9hl82ZOPyMl6+TctY+iNVANkT+BtTBKSSDVz+eG6oRdWEN1YijkBzBSSLkyIj5VrmZB3FuNsVP22immeZEEl67dkDOpLRJuH0QRXsZ32Zost2nu48pZ5j4scdggTvy0OafNkK38FN9BYZbgPANlkPkzwTc92m2+CKNE8yC9YvgLuQojN8iOpmj1IhJ7ZicA3slIE4tXrPz5ZALYljwbvYaGN6rsjodfVtklYpoy8t28gMMStF7a3ZOWc/le42Nt9OrnkSaevUJki8kIXoEaD4N6GffuIDvI3jM46jNHXUd+ZUA6YOT/8TlwUZ5tV4nACG1xFtAsKGL8gUaUaV/JJALajaTYy8i3CAhzAwJB2H9XhwSvyqKR5Rq7CRBLTIB0VTqaljApCRmOdH9kRzdOccosBREyW3R+7O3hSD+sTMuAInIJXG4n9ABck+cc7CE/rOweFTi2dI3+8g8T562M3RlzFCgiQwLMcJ7mqgTXn4e46OECUYT4agx7X28KzP2Jcm70wQ/tevnT5bu9IJCjOXdrmnYXT0ZZ70/TjWGoBoLKD5QYxdXC7IJSuE/0HHhYr2L8mGQCC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR04MB7416.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(451199021)(31686004)(36756003)(6916009)(38100700002)(4326008)(5660300002)(8936002)(7416002)(122000001)(86362001)(82960400001)(38070700005)(66946007)(76116006)(66476007)(41300700001)(66556008)(8676002)(66446008)(64756008)(31696002)(6486002)(2616005)(83380400001)(91956017)(6506007)(54906003)(6512007)(53546011)(26005)(2906002)(71200400001)(478600001)(316002)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?akt6QlpraDkxUVRGMGdjUktRcmUxZ0xkOW9MYXhUamI5Tk90bzZWUURhanZI?=
 =?utf-8?B?YU9Fa1dFS2Q2V2J2QlRZRXdFVzAxbXFOeDl5SWJieDVpTzFGN0l2N0x2enNq?=
 =?utf-8?B?Znltc2VyUXpFMmZEMkdkcVJQTTBzMnhVNHhFYmtabW14SmJMNWtjMmd5aXli?=
 =?utf-8?B?cnV0UjZyYVpPS3E3R1Axc1ZxVEZRR1MvU2xrZXp0T0NSb1o1SndkV2lES2hX?=
 =?utf-8?B?bmlCaTFyNlFqK09LMUxnZXBZNFl4eng2clpXUHVsa01jUlEwbHJDVjhKSTYy?=
 =?utf-8?B?QnI3MmUwUXVDRHIrSWFvTGRPcTh6ZWJ3MDRKL21hWlJQa01QeU40eE9aQTI3?=
 =?utf-8?B?MWV2cHZpUVpONFFaLzB0enZjaUhuYjFrZU1uOXQ3R0VvL3hkMnhjR2xpTktr?=
 =?utf-8?B?YUplTm1mYjNrS2Z3NEpWOEZCMEovTVlLQkhySU9zc250NSt5M3FMT1BiRnE2?=
 =?utf-8?B?ZE4zSzlVaUNSZzJWcU80ZkVSbGxnVG9Ubkd6amFNQXlvT2xnUXZOYm4wK2Mr?=
 =?utf-8?B?UTZCS3R0NUpJbGZLYit5UkVCRHlhMnRjOGZFaUhlN3FyQ2pIcnhINGlZN3lp?=
 =?utf-8?B?NktqV3MyZW1zK25Kdkk0Qm1KLzh0b21Xb29DRThJMHBwOHg5Q1VjTFRSQzh6?=
 =?utf-8?B?QXc3QzdRQ0UrK0JLN2JLS1ZHT1BhaWpvaFdzUStKL096Q2JpQVg5cTJFNFJB?=
 =?utf-8?B?UW5xb2pzMTF3TWR0YVE1cUo4alpxUExFQThmTUVvQmdDa2dMOStBVU03Q3cz?=
 =?utf-8?B?Q2pacDdGbmxHQnpjczNDNm9WL1BDMFhhQ2dhamd3ZkVsa29YNlZxN09Zd2Yv?=
 =?utf-8?B?aUpuUGRvOWdGdU5QaUc0K1d0bnZGVG9TelhlOUJ0Z0M4cTEyaVF3cUVTYXNu?=
 =?utf-8?B?ZjlQaFpTbGhCUnpjWEVZUHBtMk9GS05GNFpOZGhoeG9CaHlZT1l6d2tqaXRk?=
 =?utf-8?B?MGlaMkM2N0NTSDdlV1doUnhoQ1pPaFlPUjFnV3UybnV0V3VjZTdVOE1HNDFC?=
 =?utf-8?B?aEN1aHY0THN0SmVVQjdNaTZ1eDJiNjZaajZ0RTI5ZlZJSENDcDBpTGtSU0ZC?=
 =?utf-8?B?ZFRQMHdzUVJJd3ZsdXZPRE5yQS9SN1VXTktKbGd4ck4vc3BIOWpYZU1nMHh0?=
 =?utf-8?B?Zld5MmQwMHRhUlRKUkVyZkhnRlFSUFdUaFRLWUVXRkMxNzFZeWdZMUlIVXZ1?=
 =?utf-8?B?bVYwZjV0WGNUQ0o2U0VLTlo2YURSczhtT0ZpU3NDdnljdk90Wnh6cHhOSzV6?=
 =?utf-8?B?UHowVDVOMEJTUGErYWJRaENId1A2dG9jZG96bzRNbUM4cXVqNEdNaEdvendj?=
 =?utf-8?B?TGlFb0JsUGlEQ3RLK0ZmZWE3Tmp6QkhGV1lYamZpSGE0Y24wbUxWbGJvSkpP?=
 =?utf-8?B?a0VOZXlyanFnVUhXUk5tcUwwNTZiU084WGx2NWd4UVpVK2xIMElBWDdXcmR5?=
 =?utf-8?B?ZzhOdzNZdUh5QWJFTjJxQUI0V0YzWURZQmVpR2pTL2xvQ1RaWDVyaVRuS2E0?=
 =?utf-8?B?UjNQbHBDMExpcTFTZE1VTWlSQWRhK05DR0lHQ2JKT1BjUXIvT3VnZnFiRU5F?=
 =?utf-8?B?VGRuRzBmeitxdDFKSVZ4VXk0S01XY2ZpQ0h0b2lBNjEyYlR0R1ZsVk1FbTI5?=
 =?utf-8?B?U2NiclFEYkdHdlNVY3U4bFdXeTR1SzZhS3FzTWtTclBMSHV1RndybG85NkJZ?=
 =?utf-8?B?Z0RqSzU1NlFUZldVWlBza0ZmYXV6QlhnN0dpZW5LVjlnQVVtVWpJdTVyL1hE?=
 =?utf-8?B?ZTFRVHNFMURUaUs5SEovUUY4Q2p3ZUduTDh5bHNhSDNrRVJEeEx3TWExalpZ?=
 =?utf-8?B?MEs1UTYzdUVQWlM2SVJGTVgvc2hTd3BhQjBrRjBhKzYwL1gvcUFQWTd2MEli?=
 =?utf-8?B?MjIwMWdLUzR6eGYydXVXamwyYmUxVU82NU44eWdUTGhNejRuTlpHdzl4UkN6?=
 =?utf-8?B?b1BmM1pHNmwxLzFPamIyL2xMWW4zYXFEOGxSWFZsdnl3a3ZxVmtWZWVzSm14?=
 =?utf-8?B?ZWZaTDlxS3B2MkFpc3Z1bFFRR3JnTGloSmJkeHpyVUptcTAybVJBOEd4SnlE?=
 =?utf-8?B?RVVITWRHbUhHaWZqTmxZaWgrZDdPcGF3MzRKVXgyTnBCQVFKWWgzTnJQYmFD?=
 =?utf-8?B?TjQ4cVdOL29qS2V1ZWphQWNaOXRoRjNwazQ4a0FzSTlWQVhLWW9makNYQllY?=
 =?utf-8?B?eXc9PQ==?=
Content-ID: <B7D3AB49B075CD469A230F2483958329@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?TmZIS25HNkc5cGhBclV5WTNDbmNiaEcvSEFFNHNSbVJJSktJeDZtN3A5QjRp?=
 =?utf-8?B?S0s1TWkyeWtSQndENENYTXhLdmh4QzZvTHJ0TStSeVNvWXdKZnFqckZUVU5Z?=
 =?utf-8?B?N1BPUDlvL3JzVzZFZkFFRHk5ZlFoNkc0a25JYzByeEdjbFBMbzhaaWNMc0xh?=
 =?utf-8?B?UytFbVU5bnJQbkc2ZzgvN1p1bXNNZFdsNU9VK0k0czczMW9VbWU3U2lvb0Fm?=
 =?utf-8?B?NGJQc1Zwb0xPUk5KQXhXVG56ejBEdDFCM2pRMHNvcGJsTi9KOWpvaHhHQjd3?=
 =?utf-8?B?S0p6MUtYakptZzEvRCtUdlBGN29BaVZKM1cycXpJVEFsL085dWJ2QUl4UzV4?=
 =?utf-8?B?M1NGOUVPWW14WTA5WXZxbkxBUlo1bzV5dUh3SkpHVG5FOHNETTFGd0NhSUxR?=
 =?utf-8?B?M00zRUFlcHZPa25ONk1UNXR4MHIzWFRvSEpNR2J6aTRCVG5KNlU5bjlwTEVS?=
 =?utf-8?B?dlIvMndBQi9ULzN4aVJzNkFtZ0VOa1hoSERxQ2o0QW5CWWF6aGlhSmJNcUpv?=
 =?utf-8?B?Q2dkaFFjV1pibW5LNURRUy96bXRRY2ZENnpJV1B5RjA3bVRLUHhNNzRXcXU0?=
 =?utf-8?B?bFhkTXBwZlBxajExN0cycXNNMkxlWTNnOTY4UjRLcEw3MG5Lb3hOWVBwTzV0?=
 =?utf-8?B?NXI4Yk1uNENiZ0RkZVhwc1FXdFJzSGtKVVNEQVBzVkU5MzlBb00yY0F1MTgr?=
 =?utf-8?B?T3dqWmFmazFuNkhxTjBtNHhBR29oQml5Mml6ekdZdVBXaVRYTWlwbkRVdS83?=
 =?utf-8?B?VXJROEhabHlGRTZLaExSdzdXWFV3SWZ0TDdScHE4QzA3TWxOQ003Szl1b0FC?=
 =?utf-8?B?YVdWVHdOMkZvbDlYQ0poRVlvZFV6L1dLRy9rRnB1NUhFTnJLR2MzNVMrMEZU?=
 =?utf-8?B?TmpQQlFHeVFSN2MzcWVjUURrUXk1SjFic2tiRmlmK1lsekxZYXVRS0xhQlRk?=
 =?utf-8?B?Z1N4RjNsTVNVaWdMQm9XZzFaa0FoeE1DRWhwK0toanBGM2tkVjFXUFJGZFVm?=
 =?utf-8?B?eEMwTW1NcjY2YVpBM0I1M1BSV2xTTXZCRmVyenF3T2VyODVKQ2o0TXRwUkRp?=
 =?utf-8?B?WmkvZm9PTnk0ZUZGREdBVXA3QzU2akhhclhhSHduTllCZlB5cnZVekVZemha?=
 =?utf-8?B?VXhyVnVlZWJiQ3pTZVRYNXJMc2Y1TngyZUpWbjRidGR5ZjlHeXVkV3pHOCs2?=
 =?utf-8?B?TjFJNTNXVEdSaFdNbTFjVVV5Q0VDZzRjcGVSSnBBUTY3Zy8rVGdYV0NobDI2?=
 =?utf-8?B?SXFPMFlERXRMNnJ6WFBHVk9CWWRaYU5NdVVGelovWElWUUZONEY5WHBVYUVY?=
 =?utf-8?B?TitSakc4UURJWUlvbHh2dGVUZHhaTmR5RTg3MjBPRmQ5M2k2Vzdja2NZeTNO?=
 =?utf-8?B?ZEsrYi83T3MrbERPaFZoS0NwOG8yVTR2TElBaGpmNXUyajVoSmJGWkgyVXRv?=
 =?utf-8?B?MURBd0tmWUN5S1B6eS9MWGc0aWhpRlFiTFUzSWRucnNaVXhlREJqMFRVYUdT?=
 =?utf-8?Q?6+BOFg=3D?=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43ad4c16-aa6c-40fa-e2e0-08db313dae47
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2023 16:41:58.9496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: chEw+vZ3Vslb0AdV/m7+G5hXZ9rEEZd/HKDL5yVbaw91onQ0ZDwiIGDwU4VJncO9sbLUX17zjyJTTMMlWSq1OH0SzV3MEZa/69Wuh6wkj4U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR04MB7571
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 30.03.23 17:52, David Sterba wrote: > On Thu, Mar 30, 2023
 at 03:43:42AM -0700, Johannes Thumshirn wrote: >> We have two functions for
 adding a page to a bio, __bio_add_page() which is >> used to a [...] 
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phvas-0004p2-2I
Subject: Re: [Jfs-discussion] [PATCH v2 00/19] bio: check return values of
 bio_add_page
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: Johannes Thumshirn via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
Cc: Jens Axboe <axboe@kernel.dk>,
 "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "cluster-devel@redhat.com" <cluster-devel@redhat.com>,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Song Liu <song@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 Mike Snitzer <snitzer@kernel.org>,
 "jfs-discussion@lists.sourceforge.net" <jfs-discussion@lists.sourceforge.net>,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "dm-devel@redhat.com" <dm-devel@redhat.com>, David Sterba <dsterba@suse.com>,
 Hannes Reinecke <hare@suse.de>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>,
 Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 30.03.23 17:52, David Sterba wrote:
> On Thu, Mar 30, 2023 at 03:43:42AM -0700, Johannes Thumshirn wrote:
>> We have two functions for adding a page to a bio, __bio_add_page() which is
>> used to add a single page to a freshly created bio and bio_add_page() which is
>> used to add a page to an existing bio.
>>
>> While __bio_add_page() is expected to succeed, bio_add_page() can fail.
>>
>> This series converts the callers of bio_add_page() which can easily use
>> __bio_add_page() to using it and checks the return of bio_add_page() for
>> callers that don't work on a freshly created bio.
>>
>> Lastly it marks bio_add_page() as __must_check so we don't have to go again
>> and audit all callers.
>>
>> Changes to v1:
>> - Removed pointless comment pointed out by Willy
>> - Changed commit messages pointed out by Damien
>> - Colledted Damien's Reviews and Acks
>>
>> Johannes Thumshirn (19):
> 
>>   btrfs: repair: use __bio_add_page for adding single page
>>   btrfs: raid56: use __bio_add_page to add single page
> 
> The btrfs patches added to misc-next, thanks.
> 

Thanks but wouldn't it make more sense for Jens to pick up all of them?
The last patch in the series flips bio_add_pages() over to
__must_check and so it'll create an interdependency between the
btrfs and the block tree.

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
