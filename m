Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A04C70F3B8
	for <lists+jfs-discussion@lfdr.de>; Wed, 24 May 2023 12:05:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q1lMk-0005Lb-AC;
	Wed, 24 May 2023 10:05:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=501a10e66=Johannes.Thumshirn@wdc.com>)
 id 1q1lMg-0005LV-KL for jfs-discussion@lists.sourceforge.net;
 Wed, 24 May 2023 10:05:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iwUHx/mkddptwweO2bpslpk+0R8WWAA6SJCoiOyK3LU=; b=fFgt1b0qA5O/WGLLuH+1ZUsEnl
 AfbyTLoyvP8ozh9YXi1vY21YgC40DD5/cKEhvYqFy6JQjEUWf4ogNtpg9l7iry4aNBa0LFo86ckpN
 2TB/H/2StawYQbRZC5TxJYsQYyMHbNKBOStz/dzqiW1viJfLrBc0NIF3vKl5oOGv1jPA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iwUHx/mkddptwweO2bpslpk+0R8WWAA6SJCoiOyK3LU=; b=b3rbXQ+uxrlwsawNQC1JxJPwfz
 qXC9aUQUXT9PSotvNZOvQim5W9WTNWFer4ra/Ku8H75PSUadCso7tkMwckdp5OfDLDqj0cl6EN8sD
 IJCUU9zfFoInIJC4lAERsVJR38aXPw3F8VPvCuv4adcKXl2Hm8NFp9aRYW6IbNgAbCqM=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q1lMd-00033w-Ic for jfs-discussion@lists.sourceforge.net;
 Wed, 24 May 2023 10:05:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1684922703; x=1716458703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=iwUHx/mkddptwweO2bpslpk+0R8WWAA6SJCoiOyK3LU=;
 b=hKS9fowptZSJtI60k8SQBVR454fWpHmmOvV9YZLOd8/kTpSz8D8F7qQd
 xBUu8Y6aKWHQmMMsMHNtijldDTydyyl/WmfrrVNKhqeYh0H7VvYwwm0br
 9Tto4A1lY8tMwKdQtSjykyWsBT9RTRSPw4+yv9FEwGgn1KAHBvVPpSR4n
 IjBSbDzWu0GhBPpRoFrq6WZA6k+sFBAxKQ89uSMXzkDHEFEa5qibTyaps
 zGIlS3I9hOidBlA2OUC85j/wgKmjGX5bQjkkdgeKfi+g3ukfYKyUQO8G3
 +BJokCQlt1nE/vFe5uyp5KuBUo/6LP3spos+2EFWFRtnmC+SjZCsSu0My Q==;
X-IronPort-AV: E=Sophos;i="6.00,188,1681142400"; d="scan'208";a="335996862"
Received: from mail-co1nam11lp2175.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.175])
 by ob1.hgst.iphmx.com with ESMTP; 24 May 2023 18:04:55 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GIJyEESWxkPeL47w1FPAhSFjWjTDS1amdWsnzOjuOWS52If9XND56FSZKKtXyA0Z7HozOEyzunZ7varb6KjhbixDPI4kbRPqCGjHCin2puTk/VAvafDv4q0x+YKMe18p0bi5D0p4EjRFfo+oUH3bGYtySQrXPCJ4Dwe69osGMOZSRgDF2jgdUHJtoRHro+Y6aO4oL4olUf0UDYxiMa4WnZPBRdczurNIq/9J8TNn0b+apJYH57eHkS4HJdm8OTLC436OrU4yuvvE1kckSLQimEaS1POUmD4vyi8FhSGA8ixhvPNlWXvzWVKLpVYzG1vmYmdhvvE4zTt4LTjhNNsGLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iwUHx/mkddptwweO2bpslpk+0R8WWAA6SJCoiOyK3LU=;
 b=IO18RCTbRdMX1h+RFT6Vu9CBtDi+ldxlVBqz1R0Q6owjetKxskf2kHD7aVUZWHU62IxiaJqmlnRC4s9QypSZDS0264msPaQbTirx5DboM/gK54DnpOP70NHFT5dK+DZNebGN9D2sZ5ar5do92J5Ytv2Y5uCIbRITnkxmoOnM5vUSO/+JH0BSX94iSSn/YRo7f4XFOs4VhOFulYGHuAmRUdzbPRwxsU0rg3rufve0QKPvga1gwAMIlTLv+frTkdu2hL82AddY59k4N4PFMWwIThaeh1G4RbJrlaZDI09akJ+L/ZnC+jDthj7JWeXmUD5DdZWZL198hbb77kZXHRQ6Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iwUHx/mkddptwweO2bpslpk+0R8WWAA6SJCoiOyK3LU=;
 b=MR+PlDO/nYhUnw3W03pOLyASRqi2wwhmTSmToKezABbzvRMdjRxWlhipAHIDdnBGOKxLREWUQsxduYkGTPN6ktwlUT0qkJ3ssRQeZ0qVeBRsI/X3k94QVwMwURC5CO/cDODHdfWzXRjNIHO0C21JQAFRfXvvd791IafgZo2/a9w=
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by DM6PR04MB7084.namprd04.prod.outlook.com (2603:10b6:5:242::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.15; Wed, 24 May
 2023 10:04:52 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::8c4d:6283:7b41:ed6f]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::8c4d:6283:7b41:ed6f%7]) with mapi id 15.20.6433.015; Wed, 24 May 2023
 10:04:51 +0000
To: Jens Axboe <axboe@kernel.dk>
Thread-Topic: [PATCH v5 00/20] bio: check return values of bio_add_page
Thread-Index: AQHZfN/AsiDj2VYjN0WoDrrCAoWRkq9LWBCAgABlRACAHZdIgA==
Date: Wed, 24 May 2023 10:04:51 +0000
Message-ID: <54ddc290-0841-6311-2767-bb65b1f3089b@wdc.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
 <1ac1fc5e-3c32-9d62-65bf-5ccbb82c37cc@wdc.com>
 <e56b4f96-a379-f97b-168f-d03f170744b2@kernel.dk>
In-Reply-To: <e56b4f96-a379-f97b-168f-d03f170744b2@kernel.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.11.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB7416:EE_|DM6PR04MB7084:EE_
x-ms-office365-filtering-correlation-id: 262b5e88-09e9-4ae5-6bc5-08db5c3e50e2
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QJ4op+BnwfHn3AP+9sIauJQNaYps3ktmVVetj9mILRlqvELrc1fDTLEwLdiN8grAS6qymUjT5zQ1w8BnnfkbuBjscOWvmcKTWYRs3gz6aBj6eapCNUckWdUX+up1BA5Sn/sHhGP3J07NFGTBmohAqz6Vv11qY0ZZXFDD6N1cuV5t/Ys2WOs04Fh/l/z1rvuNXGDPbWC4j8u1VZMYIRrj17dNwUSHY4G9HT/7zdzBFVOoknVAkPwIDLmzAMv53AQgRGOkwrFx9qRhXvneFNJKbnFOd6sbTnwmFfHA+WkhV4t0WyAf/v90FJnhBG6IbwEIq5s/g7l+lUI4fsknmduaq7Tbhi9EjVA2nOOezCKCeFP1bxRR/zEpjZK+htZwFd49yOunsnm+/k2x+eVrJkljvh7Ocfw6WbTPDQcArED4rUv8lT2YCYAQNU5xBw6kJ44rh5yZtmkIZraghsfNsqI9zlwZhh+q/awOxEboGdy6uklejsOOIOrTKPX0d3hgI/peGYZWy1zv71hmOa0eWLYXeEn8QE/TxKNU0xJk0j+xOHu3LA8Kdo49J1T9//QvtADaC61nEUROHoLTkj1lzj04288yCrbKL1zV1sVKkwbYPcu3Kv3PSSSOmZy63UmFRbVh/74Mo8Jc7ESkDoj5FDWTGHEhAEvIsvVXx9/dPu8T5QmB1DVJ+XHRqXGx9oc7VCck
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR04MB7416.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(39860400002)(376002)(366004)(346002)(396003)(451199021)(2906002)(2616005)(36756003)(186003)(7416002)(8936002)(8676002)(5660300002)(6512007)(6506007)(26005)(53546011)(478600001)(76116006)(66946007)(66446008)(91956017)(66556008)(66476007)(64756008)(6916009)(4326008)(31696002)(86362001)(54906003)(38070700005)(31686004)(38100700002)(82960400001)(122000001)(41300700001)(83380400001)(6486002)(71200400001)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dEc0YjA5WlhoRGZNL05VaFhGbmUzL3BOcENuY2JlUS9PS0Q3d3kyRmpsdkRH?=
 =?utf-8?B?ckcreEV2bWZJVzdmcDAzdk9hUXF6cVpMSU9JcDNCVVh5Z2FWM1RYS0pWNzN2?=
 =?utf-8?B?TEdxeWVwWDlGRGxKNGVOUVgxY2t5WlFrWFNCRDlBMEtlQ2tZUUw0MHJyeDlm?=
 =?utf-8?B?eDBVVGMxZmdDT0tvRzJOYzljcG5rVEUvNWlmM01lcE05cFVKVVJET0NSb3FP?=
 =?utf-8?B?M3FJdzk5WHpXVjhjN1FKUS9UUmpzSnE5UDJ0cXhyWjBaRWpmQmtkaGo4OUlZ?=
 =?utf-8?B?VU9jbEdVVm1oYktyT1k4NEpXcUdyN1pJVytnMTVUOG1uUjk3UU9DdGhTbTNF?=
 =?utf-8?B?ZDJTZHBHVW5TU2txUmtGTFlEL2xYTUsvWDJjU2tBU25KNEpLc3dZcURsMFJM?=
 =?utf-8?B?ZXdNTFRabENkdFRYZ3JRdjFiYnEyeGwraFBiMmdKeEVVVDJlZ3k2T2dsNld2?=
 =?utf-8?B?RXNtTm5uSXk5ZnVxcTFpc3BRNVBwT3FtM09UemFvdnlrMWwxRWJpOGhPd0JS?=
 =?utf-8?B?V01jTmdJWXZVSlNwV2tWdzArZmdiaHpsVjZBcGF6WHB6eUJHTGVyelFRV2JJ?=
 =?utf-8?B?OFVPTTVjYVpreDNxbDVPeTlLSUY5UW10bEV6SmRFU0M2UXhIQU44eWw2dk5t?=
 =?utf-8?B?QjgzWi9mRDdDMXNyRkY5SC9aVmpvbzlZSkdDU1ExMVZCREh6cnE5amVleEpC?=
 =?utf-8?B?NE1tdVRPdGZuV0VJcHAwOTN2cXNLYUV1RERmVzg4Q0VtbE5ZcVlUNEJDMTE5?=
 =?utf-8?B?WitjbDBTOWU2NFhkdlVibllNREc1N3QzajYxY1p6WXpjN082WUJFT2FlYjN6?=
 =?utf-8?B?cithbEcvQ3k5ZThFMlA1N1Z3SEk4WE1NeTRLME5OUDlXaUc2UWxkZUNicnR2?=
 =?utf-8?B?NmFnUFUrOWlpWlVMTzV0RVFDLzlPZmlXMmV1SHc2RW9CdjNaVkpCT3Y0M2pD?=
 =?utf-8?B?YXd0STFUQ2FoUmlVOWFIbWFDTW02dGR4TVlxTnd6UnBGOUtQeWJycERUN25n?=
 =?utf-8?B?SFhEYXZWQ3pUSXRQb3dOZmVSdlRMVlUrUFZhMHdNdDNzakx0Mmt6KzFRbUNx?=
 =?utf-8?B?MDQ3TzVHYVRta0ZVZUdvUU1wK1l2eHR3UnU3a1czQks0ck1SbUhtMkVYL2Ew?=
 =?utf-8?B?R2xpRmxMbE5WRjdBaXBQL1dudU9YNktaelFUU0pvVS96K0xsbFNVZnVKamhO?=
 =?utf-8?B?YTdLajlzL2plSWdjNk9nREF5M2MzWlVSb3czai91czFoTjJOK25QdEJIUklV?=
 =?utf-8?B?NXBlNHhLd1FZUUpXUGxqSUcyUVVCVFFnQWsyc3lVbWdybENaN1Q4WkphbzBk?=
 =?utf-8?B?bUJ2UEUxTmowT0FJYjZzT000WHJYSk8zVE53QVZkNnhkMHJLWEVjT1pDTm05?=
 =?utf-8?B?cHBTVmVyKzJJanJwYlJEcGhYOXVmQW9TeUJ0OUh1dHNLYUxhZzM3LzZqUjhy?=
 =?utf-8?B?c2REYmlWVXF1MVRRV2I3TnpxM25BbDQyYmliZm5wUFpDdzR5WHpTekthR2Rl?=
 =?utf-8?B?TERNalc1OHBtRzVIdXdwcmJ6dGJvU09tRWQ0bnFCRkhLQjROcWUxQVpSTmU0?=
 =?utf-8?B?MTRZM3FTejJKZ3FKa0pSMTlSckZralhRM3BSWUovQjl6cHQ3cmpmMVEwVjVG?=
 =?utf-8?B?Sm04WlpTSmxQSTZkckEzRkptY2wrb2NPUlpGNGRVVzgvZkhKdW5vM0RxeXdE?=
 =?utf-8?B?TDdMMjJHdDRXS1FQL1VTdUJBUDBhekxWUUw4VmxpRHUyQ1RPaURFRlRyZW5u?=
 =?utf-8?B?dmhZU1Z6dkZIMFVCWStwQUNPa2dZeFpxUWhRV0h4aW1zS0c4Vm5idC9HWG03?=
 =?utf-8?B?UTN2ckdIeTZyTmdlTHJHWnp0REtBak03VW1hUy9RbC93Szd5clh0Nm1yM2pV?=
 =?utf-8?B?NUxRVXhJY1ViOEg5NkcwRG11cFZxZVJGNmQ3MVpBdm5mWndJaTR5cDcwS3Jz?=
 =?utf-8?B?Y0UyR2V0YmdGdG5ueXY4TUtiMVRBekwyMW5yTVByZ3lqa2dyV1lZd1lXSTZ2?=
 =?utf-8?B?djFDZ1pWbVZhZHBJTjdlS2l1VUtBS1hscjJQckV6VXZHOUxHaEZHWUNnTVE5?=
 =?utf-8?B?SGNjcHBvQjBwWjN6bnY4REFzK3VhTHpQekdnQzZTVmpvSGdYaGM2bVA5Rm5o?=
 =?utf-8?B?RmdGQ2J4b3VTTjJmQ0djNFdkRVpEM3BsbG5waVUwZ1hydE41OXk1OVZ6RC9N?=
 =?utf-8?B?N1E9PQ==?=
Content-ID: <D085CFAB0618A84DA213ED2BB24DCB14@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?aEVQUzFCd3VIc0EvVDZOaCtuTE9WeHVIWUVoV2FMdVkrOS8wbm44bGZtSmhW?=
 =?utf-8?B?QjNRUXVHN2lqWUJZSHFXUExQNFdjcCt4S05TRXFKSEJZbFNXeVdxOXh3VFBn?=
 =?utf-8?B?dll6cHNzaThid2FROS94Qll1SUl3UGxaQVBLWjd6K010blcxQk1JVFIxd3Y0?=
 =?utf-8?B?alFYQjJOTEU5UEd4aHlGK1EzRHdCTW44QzlSMlh3TkJGeGhyVXFqVlAxSFMx?=
 =?utf-8?B?S24rYnpkQTVVa0tNa2djb2pqd0lRbC9Takw1S0FMQ1QvWWpEeDRIWW51SHZa?=
 =?utf-8?B?V3A1NkFDbG9UMllMSzVIV2hYc1NRNEtBdit1dXQ5ZnZWazFoSTVCOGtSVXIy?=
 =?utf-8?B?WjF3YmdsRzRuWkQ2d25uRG5SbnZEclF5U0FoR0JBclZlUzdpTTZuekRzaXhx?=
 =?utf-8?B?NUpSSnY4MUR6ays1a1Z5VWw3bVBwdHgvMnMvdjNCR2g2Q1RmaEloWEdjZW9C?=
 =?utf-8?B?Rmp2VHV0WFVFdWVFOS8vQ0tybzY1eXZXWmk4d3MyVWZ5ODhhMFF1R1VGV002?=
 =?utf-8?B?ZEtmVHUzb284UVFtRjJhZGFRSWNUK0VrSW5JRktJQmVpd1hJMmpnN2JqNnlR?=
 =?utf-8?B?a3U2dDRIR2ZsOXVNQ3Q3aHpSKytIaGk0b0VEZDZhaU10VUIzRVRwalFkNGZB?=
 =?utf-8?B?Yk9FLyt3UnJ4VytRVGF0azNYVzFIVGF2Q1BxK0p4Tm81cGtvTTA2aGpyKzk1?=
 =?utf-8?B?UEoxVjhVYVNtcktOQVpITGFzMzNiMUgxVmVPdm5jSHVJbHRxOEFZR2xPcWVo?=
 =?utf-8?B?NFRtYkhrM3ErZnFnR0V2cmxLWFFVaTJWWGJQVWJBcHBvR0ovSXF0R25HOW1m?=
 =?utf-8?B?K0dobkpWbXNKUnNuSVVEbDhyT0lzUXEzMENkZE04bENnUkdDTzB6QUpRb2Q5?=
 =?utf-8?B?Zmc3QWVlY2hPd1FuZmhOYW1uMXpidGovRzlBNUdJaDk5VnBOZTNIM2cybk1z?=
 =?utf-8?B?K05aRE5YZk1HM1dwR3dhTVlsWGFTVzgzdU0yMTR0UHdHQ1I2VjNndVRtV0Zp?=
 =?utf-8?B?Nzh0QnE4Y0ZoWU9TTWJZaXNXUUFXQnNTSW5id01HM2hDdTJHdXpqWjhBWHk4?=
 =?utf-8?B?cElZMVFLdW1ENTY1UVFBUkxDNW5rbFdBTE1qRHdKRjFzbkpNYUxoblpBenRl?=
 =?utf-8?B?REU5RXl2MHpBYWJXOGNKZks0VGJMTVVyUDhwbUFWaVlUMnRqbkxPb1VielI1?=
 =?utf-8?B?amVkaEpPL1VSUEF5cTJqUFd0WHBZS2NvRE5Wd2FIWDNwc3ZmOVFrK1NlNEVt?=
 =?utf-8?B?WVhyMEVqYXpsdWM2dUk4ZWx6bzRUR1RXZU82ZlpEMzIvMENHdng4NUNzOTNj?=
 =?utf-8?B?RlJjWlRLM1lLZUxhWUs4NE5ISCsrbENyZ0Z6NzEwVUN2blJRYXUrM2M4RklE?=
 =?utf-8?B?NTVvQXNTbS9zRExEQWZhZjIyc083bUtZN1Yrc3Z5K010SnZJcmRkSTNnZExa?=
 =?utf-8?Q?Y9fq9wqj?=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 262b5e88-09e9-4ae5-6bc5-08db5c3e50e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2023 10:04:51.7717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VozgkTsI0CL0LEFam+6i9yjWBGwiLP3fXs/RJbD7eYFaUorPGutW5eD3DaJJ5Oyg8UQpPJbogB/j2sFLfiJRKt53r9qmhxKUO2FotDyyAgk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB7084
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 05.05.23 16:12, Jens Axboe wrote: > On 5/5/23 2:09?AM,
 Johannes Thumshirn wrote: >> On 02.05.23 12:20, Johannes Thumshirn wrote:
 >>> We have two functions for adding a page to a bio, __bio_add_page [...]
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1q1lMd-00033w-Ic
Subject: Re: [Jfs-discussion] [PATCH v5 00/20] bio: check return values of
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, "kch@nvidia.com" <kch@nvidia.com>,
 "agruenba@redhat.com" <agruenba@redhat.com>,
 "shaggy@kernel.org" <shaggy@kernel.org>, "song@kernel.org" <song@kernel.org>,
 "snitzer@kernel.org" <snitzer@kernel.org>,
 "jfs-discussion@lists.sourceforge.net" <jfs-discussion@lists.sourceforge.net>,
 "willy@infradead.org" <willy@infradead.org>,
 "ming.lei@redhat.com" <ming.lei@redhat.com>,
 "cluster-devel@redhat.com" <cluster-devel@redhat.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "dm-devel@redhat.com" <dm-devel@redhat.com>, "hare@suse.de" <hare@suse.de>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 "hch@lst.de" <hch@lst.de>, "rpeterso@redhat.com" <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 05.05.23 16:12, Jens Axboe wrote:
> On 5/5/23 2:09?AM, Johannes Thumshirn wrote:
>> On 02.05.23 12:20, Johannes Thumshirn wrote:
>>> We have two functions for adding a page to a bio, __bio_add_page() which is
>>> used to add a single page to a freshly created bio and bio_add_page() which is
>>> used to add a page to an existing bio.
>>>
>>> While __bio_add_page() is expected to succeed, bio_add_page() can fail.
>>>
>>> This series converts the callers of bio_add_page() which can easily use
>>> __bio_add_page() to using it and checks the return of bio_add_page() for
>>> callers that don't work on a freshly created bio.
>>>
>>> Lastly it marks bio_add_page() as __must_check so we don't have to go again
>>> and audit all callers.
>>>
>>> Changes to v4:
>>> - Rebased onto latest Linus' master
>>> - Dropped already merged patches
>>> - Added Sergey's Reviewed-by
>>>
>>> Changes to v3:
>>> - Added __bio_add_folio and use it in iomap (Willy)
>>> - Mark bio_add_folio must check (Willy)
>>> - s/GFS/GFS2/ (Andreas)
>>>
>>> Changes to v2:
>>> - Removed 'wont fail' comments pointed out by Song
>>>
>>> Changes to v1:
>>> - Removed pointless comment pointed out by Willy
>>> - Changed commit messages pointed out by Damien
>>> - Colledted Damien's Reviews and Acks
>>
>> Jens any comments on this?
> 
> I'll take a look post -rc1.
> 

Ping again?

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
