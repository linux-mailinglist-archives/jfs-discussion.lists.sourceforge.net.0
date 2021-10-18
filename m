Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D05A431B81
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Oct 2021 15:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EEWSQyWjlTy/RIE8EQ/MU8kD+9sdbTw9Gqau4QQrjU4=; b=S8a1m+ksb8a98tPZPdyfd3pPL
	WX3bKSaD7+mgf+hzb79OMhQOgXk2WYOFrKstDvKaGfN4lAt2ddtdPe0Xmx4HRMy+/+cVvmforyyeh
	+qoDtYZFNPI0zJK2Ir/CUfK0Ug0d5yTwwdtJ2iWDZfDPS/3YcH5ClFismEKM54UWBEbFU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mcSjf-00029h-DH; Mon, 18 Oct 2021 13:31:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <chaitanyak@nvidia.com>)
 id 1mcNsa-0001Iq-1x; Mon, 18 Oct 2021 08:20:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kINAa/Z04YU4i/wC1CQhe6PXPv9YxgHAS2zL29QmIbw=; b=Rk6wFuzo5Td/Ii4scD+a8VfF8K
 BTsxVqq82MWdqCo70O6dnXY7CicwBIjBlRa0shQGjMxVRhZWegekgt4aGj9LvWWxn/qhvyIsiZe7l
 bGnQMTIuE7+AHl7GdXboSjmWmi97XoyJ6gOLGvSnnzkrQiiOeTRFtbj70FUo2dYIeRn0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kINAa/Z04YU4i/wC1CQhe6PXPv9YxgHAS2zL29QmIbw=; b=jI1/3bTtB4hdMv3IzWFQZckhSR
 UyV802jFg/ZIEoC5xHjVzg6iKUgrdVNhdJ32KhhIn7Pp8ka9xefbJyBbIQfbTYW1rNCmFHSvxXqbJ
 Xj29mB+aZEGZBw7vqnmIsx+V3kU8ULM170tdBq/VmQcRLZpYI/Ou7jbivY2RXxZheZb0=;
Received: from mail-bn1nam07on2084.outbound.protection.outlook.com
 ([40.107.212.84] helo=NAM02-BN1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcNsQ-0004UH-Nd; Mon, 18 Oct 2021 08:20:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QQPb03ftzKB1tszalfvbqQA5hX7guySqdqmQMz97Rk5CdfXXRbKp6SNsEcl+gyganzy1NMxcZGvAZRkWvV7mys/wCo7yWr/Y88Sc+qPJfhRXpMFNzPpX2Nr6wJ2YGDgzGrhpacUFSTdUBSlbn3w4wzICGz0TWsTGLhEEouynykmd3ISVmOgSFmUImns07koatLCgeCBTe+ItiZRVjshILlM1BZmLZzBYQyoDarnYFulVBJfDe0C54ZpKonMFt+k4lM0XFMjATRqogoaZ8e7C6n9NftYwrk5cXgx834oI5qJjOxMse68DmaJThuhCDOiixSCQFjZY1QpGKbEpYIZRAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kINAa/Z04YU4i/wC1CQhe6PXPv9YxgHAS2zL29QmIbw=;
 b=MOgbsh37UvPiikmXsT7ki1rGkUsxDgXDvf4rdbEF3udqK+MkM2L9iULrW6WYTZ3r/pQkxX8rXaERatqldQJ6lAYonN3EL59gj3hSCOsoWA8UImp87XzAf4IEVb3zHaISlBNQUvWye59sSakVP388M6R1qQYGfICBwBK2O6Z6S0OVrvVWPeE+I2SNgqW3rGBn4RgQPoIjYtDXMIZaWL7eWL4ZHhhxijF2v7u30dBYSlyuf/ypNchnvAXGjR421enF6a1MKLjquhR4sicFGeax2GjQbXdwZZOo2i/oieusXqR5V1lX42P49XWmgVlAXTFo/WuWe6ae0pkgJPGXvxLqTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kINAa/Z04YU4i/wC1CQhe6PXPv9YxgHAS2zL29QmIbw=;
 b=aFzddktEz+n8maB3vSv+bLaZP8K6eHed05Q9HKZ8ZZQdwjYanhk2Pj7czaRfrsMbZiYEk9iJsjpjmlMAikohTz00+tigHbxqNXfanUhY7HyN5ngKJZf7gAsn9w509CtqP2NaOtQLyexw3M5onyqx/TLpmJRFhozksnNj9q5teXC/06Lv2NIAuQ22Wjj/SsHwJYtGb7SvIZoggHOP2NKVXghw2ySovd2rO9tVsLn3sP0BpjgIWNYd5ELjqMP6vMhsEjagE45iouZ7kTXvy0ubRZahgvrVzkKeSNxeeP8no2ggHNQBtifOWI6rjSnk/I3hoYNySrnSAnPD9121UbuwLw==
Received: from MW2PR12MB4667.namprd12.prod.outlook.com (2603:10b6:302:12::28)
 by MWHPR12MB1136.namprd12.prod.outlook.com (2603:10b6:300:f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.18; Mon, 18 Oct
 2021 05:46:32 +0000
Received: from MW2PR12MB4667.namprd12.prod.outlook.com
 ([fe80::3db1:105d:2524:524]) by MW2PR12MB4667.namprd12.prod.outlook.com
 ([fe80::3db1:105d:2524:524%7]) with mapi id 15.20.4608.018; Mon, 18 Oct 2021
 05:46:32 +0000
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Thread-Topic: [PATCH 03/30] bcache: remove bdev_sectors
Thread-Index: AQHXwchkeC3IRJLxik+08glUYT276qvYQ3EA
Date: Mon, 18 Oct 2021 05:46:32 +0000
Message-ID: <b910c530-1aee-c9f3-c9f7-42c89084c83d@nvidia.com>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-4-hch@lst.de>
In-Reply-To: <20211015132643.1621913-4-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
authentication-results: lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60fa8628-138a-4118-83f3-08d991faa3c8
x-ms-traffictypediagnostic: MWHPR12MB1136:
x-microsoft-antispam-prvs: <MWHPR12MB1136576339658024B5ADA92CA3BC9@MWHPR12MB1136.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:517;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2Ovws/QzAIktCBj8yjmrkzjx187FWf75B1nkRjlq3IyfxHLJqc8SSctXjniRNgCIB3LIzUuyy5StZeesVE8hlG+GfkQ61+/FY5BnlAZEZHYILmR7A5GhhZjj90A5i+/EtyOncsqeA5w+T7MVNzvxkCka4nc2h6yUcqZAtiKKhkymezHkxGXOQjCLzwc609X8uqosHOKp1UbJgABX5jzbRgCNGsm5hehq1/fZizgTICineCIsbsZ0aOVR6aZw6LUGjidWrhW8dd6+fKUO1RYlLFcexQMB7UxVAqjLBN9KrI0j412uoI+e0e1AuQ4axYFUBmV+e+oNL/dMlWs9m6OF6V/EXKD+VSgx+t/pADG1lFY7My8ZL67e63hpgk49HPBMsV5j2n7dsZQ3N0QFkOTtp12Tq1RgyD6sPdNPzVxg1z3PsxwTtt56Sc6Wo9KLQj3UkibhHtPTmkfB+KvkHzSL8IcLJPJ0xcvGhC10dUjjR4juPC8+aqUL96QlKyp+VocmZjbD6U14oOJTsHIuiLfcLOrV3s8QEwoomRQhy+g3UMVK4O4VyfCmt6iKPjWrdoF7fm7GTD0hUhZFRxKlz28so4JwqdANYoT3BglQ85vtqjp2C1f3khFPDH5GVVShB3gY+1OApwRdE9BgkHmo9J94xzgaLWCopYMcayWYZK9RbW2vGMCpuSxynVxSWFsVub+DpjNxdBDsjVHRV94o5B7iotLY9qEqfvjYhgf/LpexeC8GNzm4+SSGb27CEP7+OSE9rU9nI31RCpCL2IMbvjltRA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR12MB4667.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(2616005)(2906002)(6512007)(86362001)(6486002)(36756003)(122000001)(558084003)(7416002)(7406005)(31696002)(110136005)(71200400001)(316002)(5660300002)(66946007)(66446008)(91956017)(4326008)(76116006)(53546011)(66476007)(64756008)(54906003)(508600001)(38100700002)(8676002)(186003)(8936002)(83380400001)(66556008)(38070700005)(6506007)(26005)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z1E1anAzb3hpVGtRM1Q2WTRzcXJ5ZjF2K1BsVEplY1NjZTlEUWowZnNUaUtl?=
 =?utf-8?B?T0M0V01Zcm5LcVQvUEF6YW1YZGFjVE9iZ3FISjBHL2lJdVk3V2s0cmwzeXd5?=
 =?utf-8?B?THY3Qm14VHNldHBOVCs1WG95em5nK3FzNU4xWmh4alNLN3IwdWxFUkRoT3ky?=
 =?utf-8?B?cGdDNlZmUUFxdk9BK0R3M1l4MjNYTzNBdDV2WHVVd3RHRFlkUXFqSE9lWVRO?=
 =?utf-8?B?a0kya09ycmFSbjZlbDBURHhuZngyRTd3VUV5V0w5Y3V1UWQxRGFldkxmYzR5?=
 =?utf-8?B?K1Nkcy9nS2tBMzlIOWUxN3BDWkJlTU5TenR0c1RWQWJDZ2tQMDZQckpWb1dr?=
 =?utf-8?B?QWQvWFFtamNiQkFOdjJkRnhVSFdaQm04RUowV2lCV2xLdUx3cVBFZERyc0ls?=
 =?utf-8?B?WTZ0dWtDZnRYNlVLZ0RvRlFMYytlYzk2Z3QrSlgvU0h2WEdnWjBJREVkNEJJ?=
 =?utf-8?B?TGlOdWlxZnNmeXhXbmw5UDlsNnYwN0hkS253TU9HU1czZFF3aGovZjk3MU9T?=
 =?utf-8?B?ZG85OUNON0VPM0g2Z0JXZzdkTUk1WStHUVRUa0UyL1kxOE5GVWRKMjZLQ0or?=
 =?utf-8?B?aG1LeVpzeUxvZm5GSzdIVGk2OHpQeCt3d052SnhZZ2JiYlkwcVJPV2hrZGl1?=
 =?utf-8?B?d1c2WDdaUG9renRmbGNLYmNpSVNGT2pTNXlQc0l5WUduVk5tWXplSEkzaHNP?=
 =?utf-8?B?MjFpYi9pV0RXcEJIQ3BGWFhVcFRvRE9odld2THVNYlp4MUhmYVU5cE5UZk93?=
 =?utf-8?B?MVRkQlZ2dU96cUE3bUFnQVFlN2RGYzZqZjNmTEFjWk9Nd0ZoS1g3NGw3L2Jo?=
 =?utf-8?B?SFBUZmhsZ3MybkdMU1FCZjA1UUluOEZjdVExZ0k2MUthV0NQY3ZmOWx5ZXlT?=
 =?utf-8?B?d05ZUzQ2RzNMZTlCVVpWTHpGRW1VdktWaTdaWkJUN013VFlWMGVqeWx5RDRG?=
 =?utf-8?B?ZXRGZGFXN3l4bk8zaFQ0YnJZdmhuU1VDVHUrQzhWYXZFbUQ3R3NhZkdaNW1V?=
 =?utf-8?B?RlBHeE5LeXc3S1hLZ1d5cy8zM3liQlRzRnBjcXlQTTEwbGdiaThFWjZLaWQ5?=
 =?utf-8?B?SGI5d3Z2Mm4zZms3WVpvUUo1NXU5alFFQzFlVUdHcXRydVZlay8zYWUzL1k5?=
 =?utf-8?B?RDBTNzhYcm5NRHRFY2ZJVkJpeEU1NHpYQUVDbUJ1V3hIU0lwVnRNdTRBNjd6?=
 =?utf-8?B?eXRyWkpwZDhLWHVpRDYrQ2xiRFdXd3dzU1h5YWtZSEpXU2c5VDNMc3FMNFEv?=
 =?utf-8?B?STR4YllhM2JjVGxLb1dXZ3lGOXJkMTM3VGlaZWM1a1ZqQmJDVFRoOXFEY2Vr?=
 =?utf-8?B?b2xydE9oMUlHVlBGc3A5c280VHU5dzNXNkRxVnMwcmJZS0tvUlVFRmpFY0VX?=
 =?utf-8?B?TnYvT3JDVjBza1oySGNyVDUzUnF4S0Exemp1d01WdEhZckRKVmFPZS9YamFn?=
 =?utf-8?B?WDlsTWpzUkllZ2dFMzRxdzM1RVBjZUZkeUxPNFk0MnYyRlh6RmxiekZJZG5u?=
 =?utf-8?B?SjlIZUpEVjYzQjFFL2pQVkViZ3Q4N1liL1ljbjZwU09YNmRwTEorRnltbGxI?=
 =?utf-8?B?S0RWeU05cThCR3hHYlk1UjdDOENVNHNkRGEwMUpGV0srSHVPR29NUG8wQ2da?=
 =?utf-8?B?cXA0Y0Y1REZhQVFwa3Rid0NSMkR0c0pBSyt3STNqSjRnWmRzbFNtUEM1cnly?=
 =?utf-8?B?aEZ2Q2tpSkZ1NG4wSVdkbmx3cXZDMEtLenJhSUQycXJyRlIrb3lNTHlza2kr?=
 =?utf-8?Q?eiM1JOOphQEHs30VRs=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <276A457CC12A29429674DCE72537FB49@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW2PR12MB4667.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60fa8628-138a-4118-83f3-08d991faa3c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2021 05:46:32.3865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cewEDTdIBUFBdh3Ewz5MXnO2NXTGZxza+AJJU7u+pIhg/FLIaPQZY93VmNCW33VEzRcWlzFBX+qel49RHX3Rng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1136
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/15/21 06:26,
 Christoph Hellwig wrote: > Use the equivalent
 block layer helper instead. > > Signed-off-by: Christoph Hellwig <hch@lst.de>
 > Reviewed-by: Kees Cook <keescook@chromium.org> > Acked- [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.212.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.212.84 listed in wl.mailspike.net]
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
X-Headers-End: 1mcNsQ-0004UH-Nd
X-Mailman-Approved-At: Mon, 18 Oct 2021 13:31:19 +0000
Subject: Re: [Jfs-discussion] [PATCH 03/30] bcache: remove bdev_sectors
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
> Use the equivalent block layer helper instead.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Acked-by: Coly Li <colyli@suse.de>
> ---

Looks good.

Reviewed-by: Chaitanya Kulkarni <kch@nvidia.com>



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
