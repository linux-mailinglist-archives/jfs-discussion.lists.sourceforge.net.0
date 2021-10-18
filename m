Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1352431B82
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Oct 2021 15:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A3yJr6whcO9qw84ziX+zxdXngCju2kz3II8kkSv8GUM=; b=j+LMysxQtNAQdEMul4FRv4VI6
	MsjBSlZWErSvySntx2u+wJ+zvUijAVZy+y349iob7f1kxK1jrNHgKZ9MG/E3kVHTZdJ1QeF8b7xx3
	qeUr9qleVw8eEm1n4BNjz9WgmsZ3a3uyWSsV9cvAvCkM4DzKbYxQfpfTLQRnYcQHHS1Qg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mcSjf-00029q-Jf; Mon, 18 Oct 2021 13:31:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <chaitanyak@nvidia.com>)
 id 1mcPNp-0003mG-GN; Mon, 18 Oct 2021 09:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ayyanfnzFDbgewTLc054vxad7IKtCHZujvd+hjw2jPs=; b=BsmCM02sV9+LuK/jGFL5rC6fMA
 fg1eESCnHfOp14LyVwY/8ByUS8vKn8Fxj/uP5oSNY7ral8LTnGQSoAcaCTRXcCMorW71W+g0ST0Zq
 MuwRCuaCyRdM6eLcsKhAvVFlQKaaRhdORH3Uft4lXABaoWkEe4bSoQ1NpBMnRbwyzNx8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ayyanfnzFDbgewTLc054vxad7IKtCHZujvd+hjw2jPs=; b=FeoEykdYKeFKtX3gRYrBDw9KFc
 hemmUxJaTTX5O1iIk0ca7Zx47lrpfh8l3R8vVshosARNkh3DV6gcvQ30rVRcrMMb96ydPmSgNwonF
 az2cnibZclcLOARrkinsK+WrKbIb1dTJPEKq+eTq4W9Ec4cEiFQ4nf2Ib/uHLW/d19lU=;
Received: from mail-dm6nam11on2040.outbound.protection.outlook.com
 ([40.107.223.40] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcPNi-0001rJ-Di; Mon, 18 Oct 2021 09:56:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YLqMDtZvWQI45V/4p97PTcn8uYW37chYAUz6MqW5dxiSHq2yo3tfdGoV/XxEE+VoW9BwR+OZlmsf0FBurh0WQExeuQSNpgUV0DOpem8+uxQL7N2uvvekJXSE8w3yqstVJtQgRTxYG9ELSy2eKjuI92APYEwCSxxsD77W8iIsdAKIMbJNoiBPLZpfhPhDnBKKYQncFQj6PedCVouoODP0OdnmQO96sTJFsxasO1IrywV8qiTu7Mk53y/jLK9bTiGShStZJ+ATnQjCqP7RsezgeZrHSO4+8/FslY4GLnxPMBDvamVZzyhPLtBhLukPh8DOujLcX7xg4e0UbwgiA26HHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ayyanfnzFDbgewTLc054vxad7IKtCHZujvd+hjw2jPs=;
 b=Bo+vROCJ9oRZq7ecN2Qw7Ah9wvhvdj+8Zr4zFy7osmGH+P/Yj6sMhbq+Dd8Foa5m3SJcHQGqQn/VfO2FkzLRDscZhnMe68P0uKv3f5aJD3RLRJiqjlTnEF9d9NXHeTi9Kbrso6xwtsDcOpEBqfNpBt1vAk21O5AUZPpqWxH7uDiZ8jQaYJ/HtcSIFkoZsAZyWWKVvGUzHaTifiSTMv3zRX2mr+5BwXMxlw5JRKX7cxdXO/9Pg7TGqhVwoZoiM6775Fp3d66qblHYPwB1pwrTU0YfGg1HkGAL+0nRDVPZcGlKJbt4yPJpX2QrUKfAsU/bJa+Wg0ngCWO4R5Y4OZ8FeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ayyanfnzFDbgewTLc054vxad7IKtCHZujvd+hjw2jPs=;
 b=uPRfej+Zz//AcRvmXAd22eHzMRJ8SXtJGJiSHGo9YeHGcpcySXy4RYvnzPrln5JOKC6Q3OyWgriuc10VoN1lnVGnXzKlu4f1j/MP/pTyaXRGNNGBHu7e0aQIAzP6OJtAXj2PHh3Qu1bpa0s/5kTFdRcS/H+e4Wc67dktYf1SfdvmjdnI1ZHGg2vdOAGaDMcxXVYLvCubWdJ0DIz8w6BTwn3rBFHcTFZyIHBs1HSg9LkAzUY+XIpGfhanv/vbwt+1TALZScdAqEqF40XPOmcyaMkmMeTA4DbmYZO4/XuX1mYviE4xUcr9VSyM2P1gSmFdwIyT3hXoJDIg2hqSsb4dvQ==
Received: from MW2PR12MB4667.namprd12.prod.outlook.com (2603:10b6:302:12::28)
 by MWHPR1201MB0270.namprd12.prod.outlook.com (2603:10b6:301:4f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Mon, 18 Oct
 2021 06:22:53 +0000
Received: from MW2PR12MB4667.namprd12.prod.outlook.com
 ([fe80::3db1:105d:2524:524]) by MW2PR12MB4667.namprd12.prod.outlook.com
 ([fe80::3db1:105d:2524:524%7]) with mapi id 15.20.4608.018; Mon, 18 Oct 2021
 06:22:53 +0000
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Thread-Topic: [PATCH 11/30] affs: use bdev_nr_sectors instead of open coding it
Thread-Index: AQHXwciWG7jsGoCRTE+bLjlA7zp0cKvYTZiA
Date: Mon, 18 Oct 2021 06:22:53 +0000
Message-ID: <c3b7ccf9-21e5-144e-969b-1ce91ebab13f@nvidia.com>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-12-hch@lst.de>
In-Reply-To: <20211015132643.1621913-12-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
authentication-results: lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e72ae484-f405-48ab-12a5-08d991ffb7cb
x-ms-traffictypediagnostic: MWHPR1201MB0270:
x-microsoft-antispam-prvs: <MWHPR1201MB02707FE119F2A7C91CCA15EFA3BC9@MWHPR1201MB0270.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BRdr+CVyvHY2Raf/Lrv/9+AuR/2D7BesDkEzPH++L9NQcco5EBmM0qDKn6vT64OwhJXwxk5jQZzz4zsprcmhcKQ2nWSeKMnUBiWUA5Z1IJplS9Gp5cuxICX5BmlmTWSLSZhZo6hpuQSW65b9oKQyLJz7Qk0thP16P4d1neeqoxPXJm6M1ZllzHmshtXeKpaeoZUaAiT7CeFf2gnpQ0COCcZ5gqdTWrDz0h9ZE/gv9Yno/Tk3u7oYD2GJ7B5+PCzdxuex0aUiTc1UlE6C4W8wwdbZ06i/0vwHRrBLtAC38258viwyx2OukUDfS+6rbIaFtQRZLkwSF6NwbSEOrPxQoII5VBvGL7M1F8Hp8VgsVZ7FDLwl2Y7qptprNqirhw7IfQJB5Gp1AhwNAYnaU+b8xtTNEUXcENmVWsTxL/1+BuAmygzrrg/xFxzkICVGmzxwE7gNP1nGmXcaVYzTKk3BJcZ6KbO7I3jtA8EUg6p9zhaNX8on0nuCvchJwtvz8J1/Mt8dyhyeJNFhFt62aAsKyzMFcSYazGyMfCcs/oimALeJY27R8fLZ+m1kXRGx14oCU5QKLKDm6r7jSSDsRfHqkmtTgKTjcKgsKUHfu6MYE2ITJdNYE1JeWkndVYfLNN7V6/I/WALd6PZ+eLAc9EwHXJNSQvi9vEKgudUn9wAPrXFIZEuHL7ZbffQBMfOtThKOJpIcgL2BMG8yLf4FvSPn5PM1VwGpipKbMBQfo5HUH6F6wk00z2qRxjGXKyNt3GRIZCceitqke9vNuzAkWEIy+A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR12MB4667.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6512007)(66446008)(36756003)(76116006)(38070700005)(66476007)(91956017)(2616005)(316002)(26005)(6506007)(66556008)(186003)(66946007)(83380400001)(7416002)(7406005)(31686004)(2906002)(64756008)(86362001)(54906003)(110136005)(38100700002)(4326008)(31696002)(8936002)(8676002)(5660300002)(71200400001)(558084003)(53546011)(6486002)(508600001)(122000001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TXVjMlNpWWFuNjVVUWpPbzl3NExzRjV0NldKaXRKN3ZLMHArRTdTM1RGeWhU?=
 =?utf-8?B?SnRSeFFSTWJXZ1JGc1VlbWtEQ3JjeU9SVUpPb3AwYURSWUVUQm9taVg5OXRZ?=
 =?utf-8?B?RjM3bTRtdmc2clhYdVJEUWU3cHBseS9jNGpRc0ZTaTN0QTF0WGJHUDcxM1lE?=
 =?utf-8?B?OHpISW1zUGxrSHJxWEd3R09TRlorb1E0WVdTKzZPTVdXcjlpWGFldWwwYWlP?=
 =?utf-8?B?c1BITWs1cXMvRlRhcG1Pb0x1RlVYTkY2VjB2Qnpwb1Y5cmV1SFh4NjNKZk5D?=
 =?utf-8?B?ZU1uWFhHajRRcE5WR3Q2TVE1eEZqY3k0UUswbjFVdzI2b1B0WlhoRk9VVThI?=
 =?utf-8?B?bjAyd1BzY1QwU3Y0bkgwZE0xSldJamVFTDFlUVM3UEF5bGN6cVk1OWtVQldJ?=
 =?utf-8?B?SXdDTTZ2RW51dWN4SjdUUnZ0WEVWUk9wb2trNWtZcldUajVqY254eEpMa09O?=
 =?utf-8?B?Um5jZVFBQyt2YktRYi8zbWNjK0l0bEtWQk9qcXJqdVBBdDN1Z3RxUHVka2Fv?=
 =?utf-8?B?YWlOR3hyTVdnSGhEdkVtbW9YM2gxZmQ1N0g0eEdHY1VDbFE1K1ZEZUZBd1d2?=
 =?utf-8?B?dG9nNlJUbGQ5NFVtQ1VwOTFONTF6MmUzMERaSU0rYzNwZ0o0M2p2SUs1Rjlr?=
 =?utf-8?B?cjdaSUJrMjB5OVVUTW1uK2c4d1hwWUhYZHdja0hCYXMyVUFtcm9Gc29NZ1BR?=
 =?utf-8?B?aDNVOXVhK2JYU1pNV0xsdmU4S2k0bm9hU2svOUduMTJPMFNuYW1jVHZyZDZi?=
 =?utf-8?B?NlFpanF2YzJyazRxajhUbGgvc21HaEhoZ3JUYTh2UnlpVmdVQThzTDFac1NU?=
 =?utf-8?B?RjlnWWxieFBaWDNNV3dZeVlLZzA3RHg4cHZNYnAvcVFGcHQ3eEd3bzBWWm5z?=
 =?utf-8?B?bi91aXp0VFVOUUdsU0J5M3V3TXdVSmpiVk5FUGk5NFZOMm9ETCs4bnhEMC91?=
 =?utf-8?B?NUgxck9pSVpUcUtKQWNRQVdZWTFFeU5TSkk5R082K3ZNeUZKaXVHNDhOSXM2?=
 =?utf-8?B?a2JzZ3IvSmRlVHZqVGF1WmU5OHNkWjVmQ1ZPYXlack9rbUMvUmRKUTNqU243?=
 =?utf-8?B?VlJqTGk0Nk5YZ2IzRXl0MHc2anZzeVUydm1xSllvMWRFcVdYRzdaT0g3Lyt2?=
 =?utf-8?B?Wjh4NDRhZXUxU1NLVHR4Z3oyOCtWQlBkdnY1emVnMFRJTGtSSkgwRUV4T1Uw?=
 =?utf-8?B?a1BkUnlrRFJvT3hzUjVQS3RLNHEzSnhCN2MzNXl4MGxpS0prR2lBM29lYS9l?=
 =?utf-8?B?aEtlb2hkQWIwb05pSGYxVW1MU1ozWkJGdlV5U0lycTgvc2MzKyt6cE5CV1A4?=
 =?utf-8?B?ZGtiUG9YUjdhRUE0SG9QeFBhQS9md2FJczMxMXUvR1JDNUllTms0QlZra1hD?=
 =?utf-8?B?YzVVaWkwdlRoRW5adjRTRmg1MDcxbkdVaDZmOXJQeXpoZjhISDV4bjZLVmRa?=
 =?utf-8?B?QUpVcERReEgva1YrUFBnTDFFc0VxcnFxZmgwbUdnRHExai95UXNHNll5bTFM?=
 =?utf-8?B?RTRpMVlCSkFVdm91T3V6Z2xsTndLaHU2YnBWdzR2dHFCSExTc1BzellWb3R6?=
 =?utf-8?B?b0g1U0JUVnd1VHFudHN6RnhGZVdacUNQazB1TWJGOHc5SUg4QkIvWm9ML3lV?=
 =?utf-8?B?YWFqSk9UYS90a0s4dTBwSjhDWDg0ZlE5R3d4akFWblRsYXcvZDk1dUNFUWxl?=
 =?utf-8?B?V2hXVDJLNnZTQWdsZDdNU09KSW1GYlpBTnZmd0M3YitVMlZaUm55SGpFdWQz?=
 =?utf-8?Q?Wc97SMsLrP9yEN3VBs=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <64D540410AA39A4599DCD51920BC3A12@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW2PR12MB4667.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e72ae484-f405-48ab-12a5-08d991ffb7cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2021 06:22:53.4843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oHWw7cbrvZp2P+nj297e5XqkbyCy5tiOoNgFl/JQRP91hrHPR8O9ZtOCTxo115iKECYAwJMWp1iPVwB9RR/Wow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1201MB0270
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/15/21 06:26, Christoph Hellwig wrote: > Use the proper
 helper to read the block device size. > > Signed-off-by: Christoph Hellwig
 <hch@lst.de> > Reviewed-by: Kees Cook <keescook@chromium.org> Looks good.
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.40 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.40 listed in wl.mailspike.net]
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
X-Headers-End: 1mcPNi-0001rJ-Di
X-Mailman-Approved-At: Mon, 18 Oct 2021 13:31:19 +0000
Subject: Re: [Jfs-discussion] [PATCH 11/30] affs: use bdev_nr_sectors
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
> Use the proper helper to read the block device size.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Looks good.

Reviewed-by: Chaitanya Kulkarni <kch@nvidia.com>



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
