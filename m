Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 532E142D096
	for <lists+jfs-discussion@lfdr.de>; Thu, 14 Oct 2021 04:42:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1maqgx-0000sf-W3; Thu, 14 Oct 2021 02:41:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <chaitanyak@nvidia.com>)
 id 1maq9L-0007pG-7F; Thu, 14 Oct 2021 02:07:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=864Gkq+OUjAaLhBpXJA5Ah2pBllzcjFIWDplOWzOyP4=; b=FxHNDaP964ECu34k+WAci997YH
 YJYJhYfFrkSpWTTbxhbTPcMOUueERSLqbeyDBItRm8Vxi5UQ975zGw7n0PalZZdzdUgw2FXVauuRn
 vCIoEym5iQ2YNv75LF7PixOSAhsEzBxF0GZucKvGoRoJO4b3VB7njIJupL1Z8pv09NOQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=864Gkq+OUjAaLhBpXJA5Ah2pBllzcjFIWDplOWzOyP4=; b=FklLKDIBCAVzdl4/k6g5VtPfIP
 r9liTJni67qWb8qdwO1SQUQd+Q4Q2evr6ZVXb2UMvNgvOUX5SiTYh7x+mG2pHJj5f1pTJWGvMohv6
 hyD0K/VLgP7gWRk9aE3KNUsLfAfurp6HYJ5JbcNCwcZvESdGdVQdxwwW0SCNVl5gArl8=;
Received: from mail-bn8nam12on2089.outbound.protection.outlook.com
 ([40.107.237.89] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1maq9E-0003B0-SN; Thu, 14 Oct 2021 02:07:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eAhd5I6nnjhGqg9wfbNUBBBSoBrlYpc5IkcS4AJ3d85TveWNYIER96FpAiBdNqzOYFHpTmrlqp2fjGSCXsoJlkWYcgXT6okzLAsuMP8iZJAXaSBCvVC+AF/GlYWzxJKrXtOTQD/Kx9icCs2IPzlk+Dckl5m5na2ewdxCSl36Z6iXaDOMA5/+iUuhwXmOhS9Ry2Ndv8SPuPhGQWRKQAvGz0GpsbyxxXcvKpTR9SdiC74I6kjC1xCeQ0itPgxBKbF5DZQiTvNWCbOg8iuXuRstC3x1nFvAjtzAz9KVdhZtRkWxA7k9vdH3p0nncsYln8B/8G+GpCAj3RAs0r6qAJINZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=864Gkq+OUjAaLhBpXJA5Ah2pBllzcjFIWDplOWzOyP4=;
 b=aFShMIt9jV3ra3fSkvlzvlQVaHKXKGaHw6NaSusbnR2cOxJLpTNxtpqZ8OgLgR1Y4KrIPaBIQTq6V7zyxwIJIaTyUBzdehXxxphMIiTu9ioQlXqZAh0RJLh6kt86FYZzSb9+xhxv77e3ROEqBhJXPeHibgSyTcXMHRNr8rOvOYFPlSOPf2/u5LMYfsG+SfQ1ekwCwbPl1psAJE8HxDmS8La68zv6vPUBrit/M+Jo5oVhfa4Tc60X/AeeVqzBOHQkasXu1oLP9BFDC1tvcZW5JN4OZB1YYBd0JgQbyqoHUPMjXdS80YFqRYDYkp/quawlEsVh5SDgjeGGQkxGxlk5zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=864Gkq+OUjAaLhBpXJA5Ah2pBllzcjFIWDplOWzOyP4=;
 b=SR7TM+mzsVKJ5FcwuH4OJ/G6M7CVpu9nLgJGLji70wSll0bcXNQulE85bH5e4usBWwGp/h3mkJCnwPKOp/k9obor0lqbUS5BWCdwUcwxMwNUBhJkeO4D0dsCkCzyxiHbdC6K1KbCPqDS3pJtTx08yTpJFmn9XJKPYNzeAx4y5Vlm5I5+0upcLYyIImD+56o7GpNtg7HqYVlYnz/3EWic8VabFL+ZEqU5XPZquQRczajCRVup/HMIBFwC6o7JgXHWjmztJuu1zzKNFQweOLEdd3Mbrm7NRaULyvaUGIjZbtRmocQrCXvxm6EFz7/SB60BJR8Q9pCOfCC8Xy+Nix/I4w==
Received: from MW2PR12MB4667.namprd12.prod.outlook.com (2603:10b6:302:12::28)
 by MW2PR12MB2379.namprd12.prod.outlook.com (2603:10b6:907:9::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.19; Wed, 13 Oct
 2021 22:33:58 +0000
Received: from MW2PR12MB4667.namprd12.prod.outlook.com
 ([fe80::3db1:105d:2524:524]) by MW2PR12MB4667.namprd12.prod.outlook.com
 ([fe80::3db1:105d:2524:524%7]) with mapi id 15.20.4587.026; Wed, 13 Oct 2021
 22:33:58 +0000
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Thread-Topic: [PATCH 02/29] drbd: use bdev_nr_sectors instead of open coding it
Thread-Index: AQHXv/Fw+fZmcLtgm0ivWGuz5dJtu6vRhO+A
Date: Wed, 13 Oct 2021 22:33:58 +0000
Message-ID: <473988dd-f18a-3ca0-7b3e-f5ad34f1b045@nvidia.com>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-3-hch@lst.de>
In-Reply-To: <20211013051042.1065752-3-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
authentication-results: lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 82b45371-cc14-405f-24bd-08d98e998c64
x-ms-traffictypediagnostic: MW2PR12MB2379:
x-microsoft-antispam-prvs: <MW2PR12MB2379E51F4C87ED93D1735180A3B79@MW2PR12MB2379.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yc2rUiYBejKEb16Y8tfL5gzu0Ohbg9H7y9NStXHxgHhTYm6o6/HVrpYHPmg4ACugQAC7d8CqoVZb/wB3okQl5ZywXtXLj6N5du38klYVQXd9Gu+/RVUWDsQjAA4o5YaDXV0CYDaqPq3huJlQCnkEpii3r5mAFkJQ1Q6Ddotscy907z67twCV1nAFpIwTqWkBu6u7iBU0wb3K5PSYJhxxES8UPVToI/vRV71O3T6L1k1s+ZFbm7u6Nl364ZIjU6MbPC9yUFjaAWF6RbqUS36O8suOHsP9UuCfXmUe0UTGzqOmUud8UIr0S3Q1mz5HeE0gB08xf1rGQiTeh8G3d0YNzgb3afO7j0y6Ag258GUSvnenzm/SVfPyIMxiM7uCrEETvL3tT8XS/m+yiib1ZwON3WhGCMx01hPcob1voyJNpdVxi8LMhqfRlVD7RJo+/26xsEEk4OvTmpVK99dg4aDD5B6K/ebX7AJrzDovbHFFKy92C/aAIkrS8Rd7y0P/W+nY2b/IhmcVEuQ0cwK346JetkytHJck7Ko8x7agnKvNQB/I+jsdZIbPHhteUkraKcnNAMFSi3miKTgWTkKfareXVGMlj1TB7SBe2bdUNEjc4bC/WnE53d5VznJutxjVL6a0FjIw2y02GgSHW4phu+3EndafWQlKTgeYHKFTffGH+jX2ee16bs/es5ufpnEYsckB3HNc4SLqLIer9QdH9SXHPh3Sadum6tYMxdihWbX1u3oTZ4q55w6Ap1isqS9iM3DwDGRK8n9ic+TimKywGt5jrg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR12MB4667.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(508600001)(122000001)(38100700002)(36756003)(5660300002)(83380400001)(316002)(6506007)(91956017)(66476007)(76116006)(86362001)(6486002)(8936002)(8676002)(66556008)(4326008)(2616005)(2906002)(110136005)(54906003)(66446008)(6512007)(64756008)(186003)(66946007)(31686004)(53546011)(71200400001)(38070700005)(7416002)(558084003)(7406005)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d2UrellEYXM5NjBPYzdYcjVzRTNNak5CY0VCUWtzc1lENDliS05XL1dZMnhk?=
 =?utf-8?B?dGFiVzg1WElIeGkzZm1RTlBBeFBmc2ZuR28wNi9kdVVoOTJIMGd6VU4rSS9K?=
 =?utf-8?B?TzZBSWNzclhFR2NFa2s3Sjl0UTVhQTl4Ylo4d1VTZUJaR2dBd1lKS3BTSW11?=
 =?utf-8?B?Y2J3Z2JxYkM0RHZkQityMjlzNE5kU0FVL2gwMWQ1OU0wNE9rak9FM3dmUjRR?=
 =?utf-8?B?VFJsN05JMHZZNmc1N3FrS0w4d3hmd3lGUGxHckY0aHdzMFZNYkJCQUkyWVhn?=
 =?utf-8?B?VHN6eCtZbndHQVlwQTRlWEQzZ3NiNm9UamdnZ0hlZlZ2dk1zSlVHeWhnOHpw?=
 =?utf-8?B?aE04ZXFiblhLYS9mUC9Dbk01Wm1LM2RUQ2hOa1pFRStiekhCVGdYRm1wem5P?=
 =?utf-8?B?aExYNFltZWZJbk90ZkY1U240NVRKbnRVdzM4UFFHSlB1RklnWXpCMDAxblZn?=
 =?utf-8?B?RTVzM1R0M2pFNUxGTTgxV2UyTk1qRjRXTUdDVzFEYnZOSnROQ2xhb1FUTkp5?=
 =?utf-8?B?WkhaTy9JcWZRTEZSTS9aNGpSZHNNMnZiWStnM1VXblM4SWozdHFURVFBQVlh?=
 =?utf-8?B?c1MxcXFLKzNINUpqZ2Yvemx4ejdDcXNYbFdqTisyVTNDbmViQ0lxY3hYeFhj?=
 =?utf-8?B?TVppaXd0OU1ONS9pYTZPRFZNb3R2cGVlOFk5OVZYb0s4WmdueFJpWXJmRWtm?=
 =?utf-8?B?d04zQTVOeUllRUFnQ2w3d2N5bmV1U2pTRmpQZ1hiOWhaWStZOVpFSFk2Wkp2?=
 =?utf-8?B?ZHpGMDZkUU5Ia3Z5WHJPTFpnT2NXTmhBajZPcS9OV2VhY2VSQm5PZkNhaHZP?=
 =?utf-8?B?Z0tKUGU2WkVHV3cxN2NkSGQweVJEaDI4N1FySEp6RkJBOUttVmFGbzc2UzE1?=
 =?utf-8?B?K1VIdGZMdW9zeFFVRFNBMC9wVEdXdzlYV0hGRXN2NzFDeGJ1aFoyTFVUNmQv?=
 =?utf-8?B?Z1M2TTVpQ1NJZFdZS3JCNFRiR2hlcSttSlVOMzVDbC9PTjlrTU1zWDN2TEdB?=
 =?utf-8?B?bVN4Y3VZbkxWM1hkSHpwcEhsVjVNbGd6cklyaldHRjVMeFIveGFzb3h4T0RY?=
 =?utf-8?B?M3REaUl2YmNIaC9oK2w1ZTVhcFQ5blU4OUJkU1hwSTBjYlp3WEhhTkdXT3Za?=
 =?utf-8?B?RkVHdE9Nek5XZlBVNVJmZmtMaEdVRXBjTGtEbEMyNEUzaUFBUmdadkNlOFQ1?=
 =?utf-8?B?K2NDbWJ3SHcxVktZQ1NoVGRRMXBEZWYwWlpKMjdVT1VkbDU1ZXhLUnVSdHoz?=
 =?utf-8?B?MzR2UEErOVlYY0lMbmJZQ3RGcVppa0tHZjVyaDhhT1Y1UW5NeU1PTnRIb1dZ?=
 =?utf-8?B?eHp6NDdYU0pzck91UEQzYURIT3gzMlp0T3VTQ1Ywd2dsVzY3S0RJNmZJOXVm?=
 =?utf-8?B?TjNmbHlRdnBiM04xSTU1alhNcTVKT0JIMHlMUm8xZno0QXRoQmpMMHJSd0Nh?=
 =?utf-8?B?MGRDN1pJRmkydzluSUhlQkd2eDFJNldKdzY1S0FTNGtlTlNzM29kWEUyUE4y?=
 =?utf-8?B?YUNrdnlVSjd0b2VKRzUveC9SQU1lSG1Jd2cySjdTeU0yWEJnOHNuTWc0ZVdj?=
 =?utf-8?B?OU11V2tpNmdWeUc2emd5dnBOdUVSclVDOXJJVTA5a3ljdmthU1lybVV6Mm5y?=
 =?utf-8?B?Z2hHYVZtcHcxWTl0ek5kRi9EdWFWT0RlaFMwL2plRlhzNXQzODlKQjNTVmt1?=
 =?utf-8?B?VUFQNUdmZElZZ3JrS293M0w5TU5XTElrWFR4ZDR1NzhuUndPUmthM0k4MHVK?=
 =?utf-8?B?cENaOHA5enhjcmRZR0REMlFaOFpIN0pDS1B5KzJINldGR1pGMmhWcm90ck0w?=
 =?utf-8?B?Y0Yyc081RUtKQWY0NlZIOEpOWTV1YUNoeUQzdEdqNmRNVUNCajhyRWNzOVd1?=
 =?utf-8?Q?LLSYYjlw9Pj/w?=
x-ms-exchange-transport-forked: True
Content-ID: <43BBE4AA93E9954CAC870DE93CD2159C@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW2PR12MB4667.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82b45371-cc14-405f-24bd-08d98e998c64
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2021 22:33:58.4460 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sUXTUhN7+/pSfSk2Q8INU7sTSrLD8giM4dtXzKen74fxkniAVtH+59sgrSc9iRqeHqxYKyJSInGCb0g8228cXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR12MB2379
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/12/2021 10:10 PM, Christoph Hellwig wrote: > Use the
 proper helper to read the block device size. > > Signed-off-by: Christoph
 Hellwig <hch@lst.de> Looks good. Reviewed-by: Chaitanya Kulkarni
 <kch@nvidia.com>
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.89 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nvidia.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.89 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1maq9E-0003B0-SN
X-Mailman-Approved-At: Thu, 14 Oct 2021 02:41:56 +0000
Subject: Re: [Jfs-discussion] [PATCH 02/29] drbd: use bdev_nr_sectors
 instead of open coding it
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
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
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

On 10/12/2021 10:10 PM, Christoph Hellwig wrote:
> Use the proper helper to read the block device size.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good.

Reviewed-by: Chaitanya Kulkarni <kch@nvidia.com>

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
