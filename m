Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7018716919
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 18:21:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q425S-0002F9-1C;
	Tue, 30 May 2023 16:20:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=Johannes.Thumshirn@wdc.com>)
 id 1q425B-0002F1-Ip for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 16:20:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kQjT5UBv7SWmIm+v0oTD7aUyytFWRQrQeyiqTjx8oHs=; b=bKGwmA+E0D+BZYcDG5wQiIG9LF
 wXUveMg9ZFTPoQOpvn+D2M9mWeTwWG+a5KkI7B/NfPJnXtptX4kD5rcOfeVKINjTQqYXTW7yt1wl9
 2ZsgV+A3urEtkQV4wVwZEj+7JDb0wVe3BR4ooLsRCpbJLpcPJ37HAnRstK5Cr2LR4AyE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kQjT5UBv7SWmIm+v0oTD7aUyytFWRQrQeyiqTjx8oHs=; b=R07knedBMUO8hUO1NFTrBoeNfA
 1OWR7x1evFlW5iPqaxcBvb6DeJ/RS/4OoJzIOQqLhksvw86wBPQUwXrHAqJWt6/WqZ86WLN3fvRMS
 ftzdJCwn9lm/HSYglb5A1kO+2JdlYFyQ+bI/2NoOui2jSmLJkfRrq3HUgkjl3TAWZhhM=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4255-0004zX-KL for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 16:20:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685463619; x=1716999619;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kQjT5UBv7SWmIm+v0oTD7aUyytFWRQrQeyiqTjx8oHs=;
 b=WO2goWfjpufPI7QvSc79AV5Q4/LLkzehgz6Yw3/qj2L79T9YvRsEUn2w
 TpifoKBEWK5Wk3Pmk2pmEWPTQkuRfWUx7iLgjKZ3LcoSG57KApKf6ziVf
 +bpzbK6qupNdEDJqqAyi7XddlBnFT4t7XcMkRvaQxO7IvyxcPVfY9/JrH
 CgxJVhzYeWipGorTI3Gn78OyEVpM1JzuY+ci7Qob2SGvyfK43Xep20egS
 BVkSqGkjRqFTvK6+2QZGkSE0YcZynV13Ssglk+0AGQD3wJDhp99w2/PVo
 ixr/gg5AbUJe4y5ytf4jhaJA1U1smMD6tvzWempka8BHRcIdI4snjWmSa Q==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="231988912"
Received: from mail-sn1nam02lp2043.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.57.43])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 00:20:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WjDKeLau5cDsy6dQV6fJgMDPO66r/10ySxHzXr1j4fwKZes2e2gcJJj/GG5KSVgj/aTKyLOH7X1I5RbpT+xm4HYUvMnMniD2G7S8Ur+IWSztXqeBhPY5TOPdTveIWHWqPWoWMtEnBRWmIDIQILClENmXb2Boe+OiEeXLg5tDGVkpbU7Ati3hwH8MStTBuHfw75/8hIXokAn2wdX6RVI3slo0az+qvM8i+9oF3HvbqJ1o2VU2phJ8/u8s6HZKpOU24DJ3M5ELONujjBmqHYfbtN8L6WMxW5JykAgzqDrLcedJ55wtUY8QXKF4QuFnjoBZbMMxjok0YFZ2Lv04+Bg6eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kQjT5UBv7SWmIm+v0oTD7aUyytFWRQrQeyiqTjx8oHs=;
 b=KEq7tT+uTV3VtArrQIn28wKVjwSE3EoEh5uUjUbRCoQo63XS60/D54PjVyVjfF3U33G3ws1u/I2daFyXL3pQV735hAPlSS0psSjxdQ6nSOpms/AJ+2St3/yTeH4hVq/ikZfGlxaXXZyOFE52dpalX1TDvzN0Tc/e6nGZGlyo1EkIaYol2L3UUIFAGsf76Tflv9xiUGB0j2oUDEKcMle14Xp8gs9OtfJxec//W5Ff1HqJPjrsHi8fXcSdRMEKwk56rtb1bAV4EsMBzT5rXli+Oe4U9FXevfRgU15/iPiivAEd19w8VF4emytqShc1CJuo8s11ZByvLXOR2nUp3+4LoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kQjT5UBv7SWmIm+v0oTD7aUyytFWRQrQeyiqTjx8oHs=;
 b=AX76RNlSYc9HCO+abszXkU8e7UwvWOX6MaREka71izE/PUGHutP0fGjGrsAP/YbCcFQZCNqQWLyMRq0klV+v5TrpbQL9wmMKiJZ4htGiFKqw9lncc3ogL5EftcrOUuXo6P9Hl49wUnmy/2kgI6rFUfuroZnZpOs+ppP4ohAVek8=
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by PH0PR04MB8473.namprd04.prod.outlook.com (2603:10b6:510:29c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Tue, 30 May
 2023 16:20:01 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::8c4d:6283:7b41:ed6f]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::8c4d:6283:7b41:ed6f%7]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 16:20:01 +0000
To: Mike Snitzer <snitzer@kernel.org>
Thread-Topic: [PATCH v6 16/20] dm-crypt: check if adding pages to clone bio
 fails
Thread-Index: AQHZkw5zDyZgJf7Gpki5Aq+KksFaXq9y/FOAgAACuQA=
Date: Tue, 30 May 2023 16:20:01 +0000
Message-ID: <ace01bde-4457-5ac3-01a0-96f94772df19@wdc.com>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
 <e1c7ed59e2d2b69567ef2d9925fa997ecb7b4822.1685461490.git.johannes.thumshirn@wdc.com>
 <ZHYf5+ocDL0hsud6@redhat.com>
In-Reply-To: <ZHYf5+ocDL0hsud6@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.11.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|PH0PR04MB8473:EE_
x-ms-office365-filtering-correlation-id: afb1b198-a48a-42bd-19cc-08db6129b7fa
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: caSTg8y3wfFov1Paw5KCIYg2Alzuvjez73XTu7YJUPzBa+dPCzvY5NhSVj/tKCniKtAKgCTTsXKAa00RbZhFH5WAX948IjEzLnRtXgmTuvuxEcYgcEeuD266D8i2AptZM+NdkX31OcW/3BEGs3F7YFoT/FX6vBA/id/Vte8Kp/wvCPmdrVx74vsZvt+2o4XUeAyC/SjMy3D0aMcGRVCVUyaCo8/MMsfo+yCgWBImbb6Jl1DkFBauvZH1UhpZjSlZL2pyOEWJ1+QUjhT/XRa9uNvUIR63fqtk2rS1y1sQ7yDJoETqYgmQpFK1oV7K0uQLbpnILskWsW05hYr8GUHdyyhLPbnXm6RBedQqia7bLAV3C0FCwm/OJ1igzukdd8b2Fc6KHonNqwIlfWLrrgyA74PfAxu1TCgOzAV13BZmijIETPOBlBFDBG32G9YeqMve+UM4FBoo1BlEWgLVa8GY5UYa26X4umx3ixc0t+LY+KVKFGkmM/lsypYleL8C0L2zDmxqkXT/uaXNhaJMnyp2RVT2bOwd8mYbMhht9vO9Gh0jDYm1A/4FEvCtq5sHYzEcC/ETJ0og55v4RNYV7LKJKhs2dpQy3l/kyABSsKK48Te+oWSSmSHwzLGIatOSQ1YlitfLQvaPNpFXKnHNASBTpx1HhoakUmBvAwckhnf7dMk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR04MB7416.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(39860400002)(366004)(396003)(376002)(136003)(451199021)(31686004)(53546011)(41300700001)(83380400001)(6512007)(26005)(6506007)(186003)(36756003)(7416002)(91956017)(966005)(6916009)(66946007)(316002)(76116006)(66556008)(66446008)(66476007)(64756008)(5660300002)(4326008)(54906003)(2616005)(478600001)(31696002)(38070700005)(6486002)(86362001)(82960400001)(71200400001)(8936002)(8676002)(122000001)(38100700002)(4744005)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OWVRWjZEQTQ5OHlQOERmbCtDUWZKNTBSdVBHWnNsY0FoenVHKzY5LzIybTgv?=
 =?utf-8?B?YWJMOG1tK0tiZThRRXJWUHdwbHh0M3FKOEU3SUNEOFZucXQ2bjVJcTlIdFgy?=
 =?utf-8?B?djgwbjJBdnRibWpSQi83TUYxVDhwOFJVck1SVzMrVGdnQW54MGprNm4remxq?=
 =?utf-8?B?elhNakVUVkJOWE1xeUFOZnVoODJSSTZ2dUptYzFCUThtWjR0TmNQZllPRkQv?=
 =?utf-8?B?RGZTV1ltNTdzTUVDcmZ6V3pST29yeldOOEpVSkZWQ2tDaHFKdHRic3lnNENu?=
 =?utf-8?B?NWUrbnIzSjJEaFVtb0h3ZXNPM1hSWnpETkk2NmtVanNCcjRqRzJiZHNFQVlE?=
 =?utf-8?B?dEdnQjYwVmdMQzIvQkxlcWVJelpvZk1NcHJ5N1VTbWJwR044VFd1ODYzRVVJ?=
 =?utf-8?B?V1d0MTJTRlpYUmZoTzgvaG5pandCYW1wdlJpN1FoMy9wcHpjbVJpdzN3aTdJ?=
 =?utf-8?B?TWZ2ZTAyUUgyMlZzbHRtYUxRMGU1WDQ3NVVpN3c5YWRnc1UvZWlocnBkblJD?=
 =?utf-8?B?ZnBVbG1Od3pIdDNOK1dUQWl0VkgxRTc3ZThGeG9kTVZCYkNzMWxqamFqcHhs?=
 =?utf-8?B?MHJxYjBGSXZSaTcybitKMzcyaDEwN0pRMkFwbmNUSkE5amZqTXU0dEdSOTVY?=
 =?utf-8?B?S05maVRPZkt0dlBvTEd2UjZMby9mTUVrdkJ5YmFQMmd4L3ZZVmluRWY1bjJt?=
 =?utf-8?B?dEwyMHA5dlRYWFhDWEZNbExoUlJnaFh0empvMkpYdWtSZ0lCQmhtT1NWZzB3?=
 =?utf-8?B?L25qZmJNVmdEY1k4TnpESDBHRUk1Z0xCVmdKUlJNdFQwVlJRL0Z6aE00UXNE?=
 =?utf-8?B?d3BnWWkrOGdDVjBXVjlsVyt2MVg2ZzZrdkhVbEM1ZkRiekREc0V3QWxQN21i?=
 =?utf-8?B?aFBTSEZsNlNLNmlVeDRWa2lSV1JURm42VlQ5NkpleWhlblpLamVxZWZMYkRh?=
 =?utf-8?B?NlkzM2pGMTdYdnI2SlRsR3kzRkVjeFMvYmVrekljVkhSbEtSM3ZUVzMyM1Vn?=
 =?utf-8?B?ODFUaXhVZGR3NUNQQjlhaDlNVHFyTWNHb2pCUTlFcUFTR3k3eUdPQzIrVHF6?=
 =?utf-8?B?SmdHYVhqUmZ4anl3akNMeER6VXFqQjJZeDYxSjZFRkVVOE1abDh1N2J6Mktt?=
 =?utf-8?B?V0RRdVVZTFZzQk9KNnV1UWxDWGhPbXd2ZEJOM2p0R2JjcWhXbjQ1NGcxaXFq?=
 =?utf-8?B?ekpqR1Y0djgwYW11ODNrOVFVZnl0Y2tnNlc5akZpaThoNjIyNytzdGE0SEMv?=
 =?utf-8?B?Y2hhTDdzcHFUTG9ueURiU1FUSGt4cWx1YXhrZ1B5N0dwQlhJU3ZwZmZXMTJO?=
 =?utf-8?B?U0JyZ2hOTUlUMDJJb1VVRzd3cU1hZC9oV1cybDQ1YkgvWi9oTjNqSHVVcGg4?=
 =?utf-8?B?YkRhWXkzMk1IMmhsU1FIWmN4dnhISlFIL3BBK0xVZC8rQTlTVjZVRjVENkVl?=
 =?utf-8?B?ZVZjNzZqT2pMVUdBSU90aTlmTW5pSm9USnNqaG44RjBvUGdUY2JuNzkwaVZB?=
 =?utf-8?B?UEx0ZzdaRVFPbGRYdGJPMkdnSXErTStUWkQwbUdFS25TQ3dpRVRHVlZVbHZx?=
 =?utf-8?B?RDh6SzZqK3dCam9ZNVNoaE1tQkhnRlFQRXZ2S3BmVmdRUmJYaUx3aFFrVk1O?=
 =?utf-8?B?MmlrUmRQb1ZvZ2RETWhpRkNkakNHQ0xXYzJINzFiRXFjYjdSa2JDNVptSGhs?=
 =?utf-8?B?cE51R2ZnTXdhZitRbEtYdXBpNjcvSDNhSmhINTJXbHljdkcybDBBMjFjMm1s?=
 =?utf-8?B?MUdxdWxZenpJNVBYMFdNNy9CREVoRnV1Tmd4ZEhXd3NJTjlYRTJ5aksvQ0tn?=
 =?utf-8?B?cERadWVFdnNJRm5OUmorelNNYlVJZHhRVTNUS0FTMG1ham12N3JMMkR0VVJm?=
 =?utf-8?B?WGlWN1lMbnVST1YyYmNmekpReVNlUlFVOHVZSFlGb25sbzZ1UVFxQlBsN1Qy?=
 =?utf-8?B?S0dFenhoSWl0ZHY3am0zRWtGazFzSWgxOGRMUloxdHBoZ3laY092U3Zva1Ji?=
 =?utf-8?B?NGFNOG1UVVBPL1RVd2ZQc28vMDhTNmJra0w0SHVXa3M4bHlSUTlmOG9QbEh2?=
 =?utf-8?B?bWpJbU1xTVU1c3RUMWdydHl0Qlg5dkpJeGx6MExWdGp3dUg1YlNkNlFBaGR1?=
 =?utf-8?B?cHFkWEN0anREMnkxd2xjTTZBY3RJUUdyTlhjZkRHUktJYzg4dWFHRzE5NU02?=
 =?utf-8?B?SVE9PQ==?=
Content-ID: <21F8F7AEF6A7D145AB1DA9A01ACFF1B9@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?QUZhaEI3MW4rOTNkQWdrdjExRzBsWVRjS2hnYVdjZ0lVUGtGS2JpNENmQWVK?=
 =?utf-8?B?dExJMU0vSjlaejdKZG1BMFZveUxlNlhmYVBDNWIvalpnYmhsL3lWUTN3UEh3?=
 =?utf-8?B?SlVRQ292MEdJOHN0Qk8zeEVrNGpxOFlONndNSkI1OGFDS0lLZXBKa3pxWWdR?=
 =?utf-8?B?dDdWS0FJMjVucUNGeXUycHV2QXhxdnVKa3VMNWJ3R2wvMng4VE01VjluekRp?=
 =?utf-8?B?Vk1yOE1uMWhwSTFoNlZLeWFJS1YxVXREbExCTFUrc1oyNzFjVjUyR2ZHeWVQ?=
 =?utf-8?B?T2dOTWl1TFZkYmF5amkvYUpITXhqanZQS0Fnd2dJbm5LdlBlSS9QdFBXejRE?=
 =?utf-8?B?WGpGdzV4RXNPUENLMDkzSVRUb1FSdkpBalUvdmpTSG10Qm9GV0hzenVZekNm?=
 =?utf-8?B?QzVYck9BUVNObktBWVZ0L0pBSXRJRkNndFdsM0ZWcnl4SU1uSjJrc2lZVitL?=
 =?utf-8?B?djl6dUNRV0VVZllQcHZ2bEZ2R0YycTU1dGRhWm42TjhHcFZKMnlaTTB2Z0V6?=
 =?utf-8?B?UlEvTXVvQzVZY2d5ajVWdE53b3ZBYjFhenZtcExxclJiSG1OeUtYK1VCZUJL?=
 =?utf-8?B?ajVVcGFYMVh2QUM3K21ocXh4ZGF0cXpvd1hRbm50QUpmcVJWOGErWFpOUUZ2?=
 =?utf-8?B?cDQ5UkE2OTBrMEZVR1FpQkRSTzdGVU9hTjl5ZytXR2VCMk5QcW5LSFpVb1A4?=
 =?utf-8?B?UlMrMEJpU3ptMUhxR0wxNzMwbmxLVUhxN3RpWFF6WGVyUzdSbnZVU1ZTQmVw?=
 =?utf-8?B?SlJEV2pzOXRvbllBMW5OVzRuVHdkaGxaaC8vWElHVG1iR0NJYkdkUUNzNm9z?=
 =?utf-8?B?cWhDYTYyR2NIc21udFM1SmxOUmh0aXdQVWYxNnFRWWI5QmI5MEM1K05CZ3NJ?=
 =?utf-8?B?a2s5T3E5dWlxdUtNMkRGek5idGNvZWVPZUYzWW1uZzFvNWpxQnNBT2tYQ2h3?=
 =?utf-8?B?M1JKVEZBWW9nelBNcTRoS09USHZOUUdWU0YyMEpxaG5WcncyTXpZRWk4YXFI?=
 =?utf-8?B?am50TXY3eklXVkFIVk9kQXpUTGpIVUtSdjFZUEhzMVY0bm0wNWNsLzZ0dmpD?=
 =?utf-8?B?MWZwNkpPbm5GTmRUYkc0N3VITWtpNEx1ODU3MWVVQmVwclJtYkl1Z25Zeng3?=
 =?utf-8?B?cjg1SjlEaFlnYW81NDlxVU02MGEwYnpsVG9oMWpoaUNBemJYT1N4VnZBOHFj?=
 =?utf-8?B?Sk5RS2swZzMwWjdxTnQrOEtJVDJnVXNBVW1BWXRtSGFDdEtma2x4Z1FBa2xU?=
 =?utf-8?B?bUpOOU1DM3BvQ2JaQWh5b1VodjlMa1BDYUd1dVNHN2lrSC8zSk4wZkIvTEtx?=
 =?utf-8?B?TTZVcDR3NzA3YWhIVlh3N1JsblNMZGpSbVp5YjIxRHNuWGZzYnNTRVB0THBi?=
 =?utf-8?B?V29ob21jdU1nckJWY2JKVVVvdGMwN2l4c0N0THlFRDJBenREb05oQkJ4OHpJ?=
 =?utf-8?Q?KWIAoF/P?=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afb1b198-a48a-42bd-19cc-08db6129b7fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 16:20:01.0794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rVrJYuPPD2ahHIgHRJ0cOU2y/uVYZ2J355XqqG3kIkbA2q/FiXpO1gg4eYzoa6J8mUr6kvHKHpeUTxAP3yZBm4a+Yuu2d33BnRnTVPnDAMA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR04MB8473
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 30.05.23 18:10, Mike Snitzer wrote: > On Tue, May 30 2023
 at 11:49P -0400, > Johannes Thumshirn <johannes.thumshirn@wdc.com> wrote:
 > >> Check if adding pages to clone bio fails and if it does retr [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1q4255-0004zX-KL
Subject: Re: [Jfs-discussion] [PATCH v6 16/20] dm-crypt: check if adding
 pages to clone bio fails
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
Cc: Jens Axboe <axboe@kernel.dk>, Dave Kleikamp <shaggy@kernel.org>,
 "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, Matthew Wilcox <willy@infradead.org>,
 Ming Lei <ming.lei@redhat.com>,
 "cluster-devel@redhat.com" <cluster-devel@redhat.com>,
 Song Liu <song@kernel.org>, "dm-devel@redhat.com" <dm-devel@redhat.com>,
 Mikulas Patocka <mpatocka@redhat.com>, Bob Peterson <rpeterso@redhat.com>,
 "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>, "gouhao@uniontech.com" <gouhao@uniontech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 30.05.23 18:10, Mike Snitzer wrote:
> On Tue, May 30 2023 at 11:49P -0400,
> Johannes Thumshirn <johannes.thumshirn@wdc.com> wrote:
> 
>> Check if adding pages to clone bio fails and if it does retry with
>> reclaim. This mirrors the behaviour of page allocation in
>> crypt_alloc_buffer().
> 
> Nope.
> 
>> This way we can mark bio_add_pages as __must_check.
>>
>> Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
>> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
> 
> The above patch header doesn't reflect the code.
> 
> I also think __bio_add_page should be used, like my racey reply to
> Mikulas vs your v6 patchbomb said, please see:
> https://listman.redhat.com/archives/dm-devel/2023-May/054388.html

Yep that mail was racing with my send of v6.

I can send out a v7 of the series tomorrow or just that one patch updated.
Whatever Jens preferes.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
