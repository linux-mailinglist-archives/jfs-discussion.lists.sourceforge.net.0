Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B41431B6D
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Oct 2021 15:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V5yTMJpXfStzZ0zVoscnGlC2FUBdQc9ZywZhJqIRvhU=; b=dNewFLiJ0SEdsNolNTnNR4tPB
	15dtkyYfiouqUvFc6YwZOt1Ivq8uO4HxUMZcKEsZORuC0VYClcZLUB/Xu0C/bp3J+O1qTDb3zw10E
	AA3w32zntcDooNcmVk6qa8xLqlQCU41NrHkPfeWUBfCVaKf2gFZSPJ3MC/gsL7zI50PAg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mcSjf-00029R-0m; Mon, 18 Oct 2021 13:31:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <chaitanyak@nvidia.com>)
 id 1mcMH9-0007KN-3t; Mon, 18 Oct 2021 06:37:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9D3dTg+R+I3ZacOuudzxWtnSiSug0urozqSOWCJeax0=; b=c6RSCeAqL1MaQxiErOFN4OyqOG
 OMW6hCYKPEeW9W0e/bMEnR3b4nJvW+/2JekVzfFpxH4RxBRnY/M8EAVoEJXGauPQyR+9wIdiflIGp
 RNBTMUwNHUrGejZxMNrdYHBP6+Oecs4qlY4aI1g8rheSXHLtUJO6xAxWcfQwJgfZ6nM4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9D3dTg+R+I3ZacOuudzxWtnSiSug0urozqSOWCJeax0=; b=QJtjhtPSmwm2fKfwlTSAKzMXIF
 SmplPHtOB1znZAo8XraBBu3TE8V4N8bvUTIw28uR6ZHyFxZX7gDtzxBOGNI3zuwHlODU6WO84N2Zr
 RoLcn7W1boBgMS3riLt48CvTFfJNKNE0ZN5yLIuCtcCYo+JmrGgtYPV+CYCiJhCaMKrc=;
Received: from mail-mw2nam12on2078.outbound.protection.outlook.com
 ([40.107.244.78] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcMH5-003zDl-3R; Mon, 18 Oct 2021 06:37:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OMizO5VVw3ha+IKbXN6Zjr2jHde9CYulDOSNo815ucoXBXdWumh5MQbpu/l8mbRvAshszeSInJFcxGBcavtu36q9S1N3yMlln2yXWLb8Ej36UL2v6ul0QTZ39pXsZhP1DDCxMqnM2+pZxlJbPW2QlvnQE9WP9DOUgL4C047kJqZaot1J1Jpj4eWrVAGz+We/TBZU53xhS/cKGqzoEaslqCVwgCI1t73qNs586nSOsRMf2VrONEwRfRtoLCzlqzwXtDiruJ+KE986kJaVjHRfAF55/wD3s8O9LTdyqiecwezLu2PAlf8uU5FxsZoFMtZoGRpnf/mnr7ZQHhWIncIbRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9D3dTg+R+I3ZacOuudzxWtnSiSug0urozqSOWCJeax0=;
 b=lGKqcGCbYVAa/by75wF4QXp9DKPimsMcivS2uUkblzhTmhdtXUy9cQq+deOD3eRX8hgdDIdkJ50+cHiUFT9HTO0rVD9c9pIEHSg6Pqyolw4vput7gn5X2ZAApJqWAVGVF1L5POx6ey/wa7+/lWnEWuz+iyOC6Le22XVAHC1WkalBCk9K9a2bG30Gtr0OSo6fn0X2c2sGDClCSWVs5BCnw1EfkiEbrNORrXMPD0Sk2ffiIWPxRVVcBl/K1k4w+GLmfhvTby/rwffasBk7MLm45cgtQm56wghDLX9nm1b00o+RvihXGMwgBaJIdNH6uhO1x0ZX5R5fnFPiLpPLNjbtmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9D3dTg+R+I3ZacOuudzxWtnSiSug0urozqSOWCJeax0=;
 b=Rvm8VRMXv2L3kI6V8T7xt1fsy8gLYJSTfnqNa8wY+Q+sPtGj6l505Bd4eVcJp9pUBOzM5vL0vpIcWDDo0edGZ4lwafK1L+5/N/7c3OW97bshZtdog6J5mZMK9vIH5SZ00IzhG4RI9PkIWaMb1C+CuBMg0W6o3CTl4p02KgXbIps8Jj2it6sSRRnR81zuG41kt/Iuwv24BdUT3h5tsUyotB0FZb3y2RcYpYonbYMIlkCyKskFAlqivbdrHjhsA3ERMpnSheNhXmZC+FYz4sQkWTkqEdamGKeMfsv+8lbQfxe5cH6upY+QOxOD4Oo0fTYeo3GGHIQXXEuXWcLBBKMYXg==
Received: from MW2PR12MB4667.namprd12.prod.outlook.com (2603:10b6:302:12::28)
 by MWHPR12MB1469.namprd12.prod.outlook.com (2603:10b6:301:10::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Mon, 18 Oct
 2021 06:21:41 +0000
Received: from MW2PR12MB4667.namprd12.prod.outlook.com
 ([fe80::3db1:105d:2524:524]) by MW2PR12MB4667.namprd12.prod.outlook.com
 ([fe80::3db1:105d:2524:524%7]) with mapi id 15.20.4608.018; Mon, 18 Oct 2021
 06:21:41 +0000
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Thread-Topic: [PATCH 01/30] block: move the SECTOR_SIZE related definitions to
 blk_types.h
Thread-Index: AQHXwchiYtDwIDnIkkKDkwvPT2NuuqvYTUOA
Date: Mon, 18 Oct 2021 06:21:41 +0000
Message-ID: <5cc35e9a-35f4-4d14-8092-2079c7cecab9@nvidia.com>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-2-hch@lst.de>
In-Reply-To: <20211015132643.1621913-2-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
authentication-results: lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 89a26aee-3cfd-4c7a-e849-08d991ff8ce8
x-ms-traffictypediagnostic: MWHPR12MB1469:
x-microsoft-antispam-prvs: <MWHPR12MB1469FF5DDD481E5D2B8F5D59A3BC9@MWHPR12MB1469.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xHKQnwLmoY7vnsYf9NMRwWbhdXBT3LG7IIUiEeK0CsZiZodaIFkrolrSYYF2YRnb/3dN1xjBy4ni5ijSMCpIQJhaowxU0z9rghIByeNgRtI787LMBkuwefU9NprKvWNh/M0JIW8Jr50VUrEjCaqJGh7g1HzLyuLBXqRPI/DKuIUDIPhW7w7+tCjBrw0b7a0kdPlN64FVTlrNE4bNRDCGjK82xyZi74xbB+HoYw/kV4VdPS5sE2nT218AOz/ZPmoHOY4tdzywIAkG9A++qeXMSKuqepAoPLekOtNbOLaSPTVr1G9BjRAQOHlJbWlTkbcOfpzKWrWxt/8fqIjbPWkZ5Ww0lajyIsR6tanWLQBZNHtR47CBrIg+pRLImvnmhS2vXNrza3kpMYTODvrntdHae+foepSlItiHHCKroJgzssW1Fa4+LX/eKShzsU+vCbk/i3gc6sqn4jrN6Dzw70CmWwSQ/R8UJ37DE4mTv5DvEoR0ZP68BggzUy35LJoefEybskB8Q7iKGb+r2+YSzU1cpFdVlnEjSwXSbYDMeF1M45BkoGk9h2AZQ4cuUZUakLsRpxpQ6Xa6U/tK9ZGkpw1F/iCfita74nZIUtDTqBQF4RuuFDQ/3KmfVpU1BqtIwBg0zNNpSfb1XIK6mymoj3wsoNwV94cT0kPIUNVRsry8b6mto4/djJ7kNWig09lteYXIpZjj6vegHHkr4bc2jcB1OYCFAkirhlNS4IBqs4q6NUm85zaXG69Q+I7MJxksknl60pJYsm/rK/Nfm+6kGhv4iA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR12MB4667.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(71200400001)(5660300002)(4326008)(8676002)(508600001)(122000001)(8936002)(558084003)(53546011)(2906002)(7416002)(6506007)(6486002)(6512007)(54906003)(38100700002)(31686004)(7406005)(31696002)(36756003)(83380400001)(316002)(110136005)(86362001)(66946007)(66556008)(66476007)(2616005)(64756008)(76116006)(38070700005)(91956017)(26005)(186003)(66446008)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Wm9IQmFHOVJVMkF4NlFFUS9vaVJuZU5DQW84MmFNbEhQZDFZajhmcjlkTnZW?=
 =?utf-8?B?TmNuVzZPOFBuUzdmaW90dzZ6SW1VNEFJSk90WHJOWURXS3pRM1pMWWR4R3Yz?=
 =?utf-8?B?RldMdEYyNmtndmxpTUlSS3hvU0dXQW1qWmJpV2plWlJNanliS1pIbHJud0wr?=
 =?utf-8?B?Ti9lQkFNY1R4amxiQ3dIVE5DZVBDaEpmdnhleU8xYVJkcmV6VHdqamJEeW1S?=
 =?utf-8?B?d1lBbjdqdk9nUk95S3FGV2FyWms2eVZDQ1NqSUY2NGdoN2pRa2VFaDVaaExO?=
 =?utf-8?B?aWRyVlNZb3pLU2pzSEdodnowMXZaYTRLQytmQ3VwM2dQTkNxWmdvM3hMWU1a?=
 =?utf-8?B?YUlYUGVkMkkraEtoR09SYkpmNjk4bnk0OXZ5bHd6TU5yZzRRTzdtcVJQbE8z?=
 =?utf-8?B?RWxYZndGN3FGZVpnN29zTW03dWtKOXpxSE1rYUZGN1Q0MytMWmIxZFgxS1o5?=
 =?utf-8?B?OWEvNHhxZG1GSWxQU2pFMWF3NnN0Q0NqUmNtTkxVR2xPaUZQMVN5TXU1ODVC?=
 =?utf-8?B?cnFKdEUxb251ZDJWaFd0YnpoZSs1ZmZtTUdPK3NTNFpGeE8zdkJTb1JNYkt2?=
 =?utf-8?B?dmI0YVBhRGNKa1B0VUxhWTlCeGtYUkxtTG5wT3ZRb0pLcDdiaVJzbFRiclQr?=
 =?utf-8?B?eEoxb3UyTmxxV2E4eThpRDZrd2pxWE9CcG1WRzN3cFkrbzR4cFBkaVA2OG82?=
 =?utf-8?B?VWM5R1FpUFRCRE5yWGdrQUJqTXNhYUFuUEpGU0pOeWF3R3h0NkpCMnl3WVRJ?=
 =?utf-8?B?cHYxVVowb1FHQUtsQlMrWnpnWjVIU1hrZ1lVWmhZMk1tMUZySXZHT1hRS3ls?=
 =?utf-8?B?M3NqbXFWclNwSTdib3RnTVk3VnpxWkp5RUVmL1NoYktlSkZuaEhuZEVDZ2Nm?=
 =?utf-8?B?cmxSUTFDMCtKZE9tdkVTbzh4ZmNZc2hyS01IWDhlcS85MmVLL21hMmJrd0xj?=
 =?utf-8?B?OGw0RElpRit4QXB4V1J1RVB3UnFpcHdvOHpsaVhGQmtFV3NTT0pHVmF1Vk84?=
 =?utf-8?B?KzlScndLc3RqSzFBSGNvKzBqbzVpS3V1TmNLUmd2UXpabEIyd1RXMVRVWEhZ?=
 =?utf-8?B?dnpFRHNNWXFqdVNtdEVNbjJudUZkYjVyWWZQY0VWYXFDZnZ2WFM1dVNBRjQr?=
 =?utf-8?B?NFc3OWtqYlhnSmUwRU92MkNCajRWUWZyeWM0RVNFM0UxL0poczhEVCs2RzhL?=
 =?utf-8?B?eVZrS1VWRVMwWjNXL3FVSnBVMnhWcnU4NkNTMVFKeStjVnhZdXFBNmFDWWcv?=
 =?utf-8?B?dzhJdlFBZWxOT0ZSNmx6WWRQQ2ExV2JhMWE0bXFpSFlHbS9rK3J1K09kS01l?=
 =?utf-8?B?TlZOQTlkRk5SMzhVaUcrcFJpQ1NjbGJlUi9RSnI5S3NpMTFWakhVRDJqMHpw?=
 =?utf-8?B?bW10bzZkTzVWMnhIZENMWDdyMVFxbHFpVkJRUnAwaDdTY0RoYUpLc212TFRK?=
 =?utf-8?B?djZKUlVMQ0xtaFlOakxHOE1VbEdDQ3BMNEk5VlhEd1NqRjJLYllrZloyRm4y?=
 =?utf-8?B?M1NCQXFJd1hmaWRBTnpSNlBFRHNGZ08xK2tHeHhKeUFDL3BrSThUZXUrMFM0?=
 =?utf-8?B?NFAvZk5GYUNZQmkzYitYcEtRWCs2dTNoN1hOaHhxcTVBdDlMWWpFS2tCd1A2?=
 =?utf-8?B?NDg0VithQ1lWMm5NdGVtRkZiRWgxMU5ycjJYeDFhWGpaLzdjdWlXaFE5NnpC?=
 =?utf-8?B?ZkVZT3lkd3ZvclhlaFgxUmJZUTMvdm1aNVVJVThld1U1a1hJcWwyZHVZWkY2?=
 =?utf-8?Q?yZZvcf8dwKibgVGWIc=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <8FDA8D39C6C7234E8DB3CF40FCF6819B@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW2PR12MB4667.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89a26aee-3cfd-4c7a-e849-08d991ff8ce8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2021 06:21:41.4848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hYDUWqTWNEyCly4NT2jjgAq+IoQyzqB41UaIeDoI2EDLfGjEQnHMyPXhMccrX4lhhVR2GXsqdZSCzYPOECyUzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1469
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/15/21 06:26, Christoph Hellwig wrote: > Ensure these
 are always available for inlines in the various block layer > headers. >
 > Signed-off-by: Christoph Hellwig <hch@lst.de> Looks good. Reviewed-by:
 Chaitanya Kulkarni <kch@nvidia.com> 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.78 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcMH5-003zDl-3R
X-Mailman-Approved-At: Mon, 18 Oct 2021 13:31:18 +0000
Subject: Re: [Jfs-discussion] [PATCH 01/30] block: move the SECTOR_SIZE
 related definitions to blk_types.h
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
From: Chaitanya Kulkarni via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Chaitanya Kulkarni <chaitanyak@nvidia.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, Mike Snitzer <snitzer@redhat.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, "dm-devel@redhat.com" <dm-devel@redhat.com>,
 "target-devel@vger.kernel.org" <target-devel@vger.kernel.org>,
 "reiserfs-devel@vger.kernel.org" <reiserfs-devel@vger.kernel.org>,
 "drbd-dev@lists.linbit.com" <drbd-dev@lists.linbit.com>,
 "linux-nilfs@vger.kernel.org" <linux-nilfs@vger.kernel.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 "linux-ext4@vger.kernel.org" <linux-ext4@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 Coly Li <colyli@suse.de>,
 "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 "linux-bcache@vger.kernel.org" <linux-bcache@vger.kernel.org>,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
 Theodore Ts'o <tytso@mit.edu>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 Jan Kara <jack@suse.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Phillip Lougher <phillip@squashfs.org.uk>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/15/21 06:26, Christoph Hellwig wrote:
> Ensure these are always available for inlines in the various block layer
> headers.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good.

Reviewed-by: Chaitanya Kulkarni <kch@nvidia.com>



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
