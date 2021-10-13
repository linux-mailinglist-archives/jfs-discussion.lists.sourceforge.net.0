Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A1E42D09C
	for <lists+jfs-discussion@lfdr.de>; Thu, 14 Oct 2021 04:43:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1maqgx-0000sT-2u; Thu, 14 Oct 2021 02:41:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <chaitanyak@nvidia.com>)
 id 1man5s-0000yD-7N; Wed, 13 Oct 2021 22:51:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BA4+fMaIErfDk2S+mlt05OClkBEhOJ6653ORhF4ddts=; b=Ixwr/9hatPtvQjQK1X1riGcROx
 0aDR6xrpWmrJCCilJ8p4TfrPih+g9HZ1P/6EULoYqqI5hojvQAZ5gh1lJ2QjAYo5IRDq90+hjIhhX
 RGCI8XAUTkddn86xyHBeo5RAgDv/uWIqNZKWHClw/nrHRRgUXluvdwr9wkdLyk7Xho8U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BA4+fMaIErfDk2S+mlt05OClkBEhOJ6653ORhF4ddts=; b=Czs2bG+A+n9C97NthWT8fdZKZH
 zvLXoMY7od3z6JtC8zOA0JU0vht7LCMERzjcOdddSu9toWori2g4FremcZI9OkTuCfhIk0ja+Q/uy
 bexgw6DJuBpqTtEVJU+Y9nh073398huwmXQbZQTFgzQu+T6V+LMTh33h/18GuT6LmFvs=;
Received: from mail-mw2nam08on2053.outbound.protection.outlook.com
 ([40.107.101.53] helo=NAM04-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1man5q-0003b3-FB; Wed, 13 Oct 2021 22:51:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iI3aqwEBA8WPyPvlBxvWIHkF4JO+skqhaLkgN6ZyvSQm+qXs0VdBC3K6vyV8bn/ZCCJs8whDnpxt+a114vaOYqNGecNJO0iu8MfUUIxljtL50k7zaXjWhZR/WIY2+jXs2jHX+Eh5cKnr2WpQgGcOscGfLRU06MibUfrfQWdSDdxLeu/c6R1l5ZGz4YTMcw0kg1wa+BLdAJ2OuMjAqNL2LHqBuMoFaWhvzFTlXKLYjR/u+wdbyBo3QTefVDQgxfFFoB1JH+PUbxJht5lUKjxE+ufeO3H8rhkAAFFRwvQNbS4GNPEnNh+NRoQZZws3mqqMha9l8IjAAZwB/qCOByU9yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BA4+fMaIErfDk2S+mlt05OClkBEhOJ6653ORhF4ddts=;
 b=OSQqLrJ8ELfUznp60CqL+I+zD80bZ/L/wT+tUowRWdhjDaF6o7fp5OVZcxJkTh6b1+YhzPLJa6P4EILzYAWGfJ5Wu3RPdBet/zh5F13qy2nzsiTh/DO4m9wuvcsweCdRXKd9eWkzxtTDRmcc7yXbHt7POV9xlB2szgCzy7RiOrCoE0smNZ6Th50yxj8VildsSmHMR3WB0LsD6RsR43dRU+y4U+Bw4WjzSAj6nlRDViTTJmet+sHP5DwvMKO5Jvake3QER9Cb5SpGbaReItgCozMQ13p/JMqZQb7NTilIjxD/Jo6hs49Bp74tPXHB69eWAqcEz1KmYcTguHGuTw6wtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BA4+fMaIErfDk2S+mlt05OClkBEhOJ6653ORhF4ddts=;
 b=XAr88+6xlae7ynws/e6e89Y4GJYSBBH3I/I9GYBFJJOdKcNAFqdzlqGTHhSFI1G34aBMChxpTAPtUymj08BcJARbzGWi/RuylQjAiqRwhGWX6uEpwywgPCQ/RM53YQ39K76tzeNeLn7sflMQWdDMdrzBuDNKfFLIO6nzLvNPiKiTs5EW7QXq6GCY0Fh/oLxGwWFcXXTrfYKylDRCDMTT9v4fCHmj743vXtl6Gc1BCAnFJ03g0y6CRfw9ucnsQYqLNCEd1edHpS/4zocCxtfM/bnTzY6phVl+kMHe2AOpAiVohl4NbpATiRhgpIQVYSqSThO68PCrsMZTI1zv1vrTTw==
Received: from MW2PR12MB4667.namprd12.prod.outlook.com (2603:10b6:302:12::28)
 by MW2PR12MB2379.namprd12.prod.outlook.com (2603:10b6:907:9::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.19; Wed, 13 Oct
 2021 22:35:20 +0000
Received: from MW2PR12MB4667.namprd12.prod.outlook.com
 ([fe80::3db1:105d:2524:524]) by MW2PR12MB4667.namprd12.prod.outlook.com
 ([fe80::3db1:105d:2524:524%7]) with mapi id 15.20.4587.026; Wed, 13 Oct 2021
 22:35:20 +0000
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Thread-Topic: [PATCH 08/29] fs: use bdev_nr_sectors instead of open coding it
 in blkdev_max_block
Thread-Index: AQHXv/JvSmYjaLLNDU6tdxHW3kjL0avRhU6A
Date: Wed, 13 Oct 2021 22:35:20 +0000
Message-ID: <9d9cfa90-9fe6-23a7-ba13-c12d6fd59a0c@nvidia.com>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-9-hch@lst.de>
In-Reply-To: <20211013051042.1065752-9-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
authentication-results: lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a2e0c861-2d2f-4959-b152-08d98e99bd2a
x-ms-traffictypediagnostic: MW2PR12MB2379:
x-microsoft-antispam-prvs: <MW2PR12MB23796C9F89717482180CFF79A3B79@MW2PR12MB2379.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eHFSlRuhUHQ8IDX6BcDeRXbGTH8wwX7M0SVD4YXXb3HFK/HbK2U7RWGZQK/zqOGKUlEHyrU5O3+6x9pjkKtj10jU3xI1T5JdpyrOUUWDPND4tAKdEiUSitdpacTU0srpPIgGG4dpxJiqS2KJIrbA45x8kTXB3NCCvsLz+iODPBpL6WJf0sxUhk3S4Ve6RsrXAsDWNunxgudwLBf/nC9KpZ7Cr+PY4NLqxOWHs8Nl6yLfTaP3bdD5jmwz93UwAREywv+VTGvaesanR1PKBzD+i7z32QuReAhZARRVZh6odt8l8W/JqkQ3oPVzhawn3z//OtlHa9brUqvFfFkcs9INV9VkApfDg6c9UriW7fcBUhGVJubJF2DZ7xmwraXo6UbPC5tUbY4xo3JumySYtm2TEOtjL5O9b1R2IGSnIur86h+g5IwehDkU322Ja7fMkuJQNVr1P3iZsXQ4KxC0hItYjUw6rLqT30PKcBvCKKJWcGNwhm5PzgX4TIqTAFHLQedtNXWVSkItnOeED9Ch4fl38gS3+B5opdaY3RHD/eJbV2h1fGbfQGTFQDamnNqoc1a7NYChT3pTW/pVLNVqAulzIaU8Wf0V9S9HMQa7SMtjvr2/JQul7JmYWiKPgzp9WCYNlE6p03KEQfi7cTZx68SHBrhgUgHqEQ+wyFNbjvm6xp8iPxwVQhUPf0TZHbXtQGKoM9CwnDmjDPPVXn6021BmoEdRm5oEaJbDskS6HJXMKHCNc8JnZHS258D2kOeCkvDHo7BdsxVi7SGhJWDo2nXlCg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR12MB4667.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(508600001)(122000001)(38100700002)(36756003)(5660300002)(83380400001)(316002)(6506007)(91956017)(66476007)(76116006)(86362001)(6486002)(8936002)(8676002)(66556008)(4326008)(2616005)(2906002)(110136005)(54906003)(66446008)(6512007)(64756008)(186003)(66946007)(31686004)(53546011)(71200400001)(38070700005)(7416002)(558084003)(7406005)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3Y4dXJ0ekZUbGdWa3VIdlJVZU1TaVBFWEd5ZUJkeGZzUUZENytnaGc5bW5I?=
 =?utf-8?B?a1FOOEtvbjhmU0NGRHZIZWxJOE1qZ2VmOThRYWhWSjY0ZTViNjgvMlNYM2NZ?=
 =?utf-8?B?cHV6K2xTaTRNK2hUV1lxQWUwcDJGZ1JSclM4NktveStrd3F4T1ZBemVTYTll?=
 =?utf-8?B?dzA1TUhCM1Ixb3d1WkhyS2VIVkplNVZ1di94b0FlN0tDKzNzVzhybW9lM1dt?=
 =?utf-8?B?aFd1aEtYRnF2cG8zcTlJQjdoam81WGpmbFh0Y05vRjc4a3ZBNWJZSEFnNEVl?=
 =?utf-8?B?UHFZN29XSlp3NWFWWFlUTXpFK0Z2Y3lKQXBqZStuMlorR002MkUvNzdoWW1I?=
 =?utf-8?B?d0t3eWNzcStubHVEOXNEcWdmZ1hUWk1pM2kxaXVXSVRNTCtLM25TenlrcXhw?=
 =?utf-8?B?R0Jzd2xkVTlCY3RHVW9iNGs1WUZlWWd4bCtDRS9QVXhxUFJ2cXBUMi9GRHJu?=
 =?utf-8?B?eG1BV3hzbGhPODhOYnhaYmNvMFJvbU5OQWM1bWU5UzFMRUdXK0trMEwveHJL?=
 =?utf-8?B?YU80cDBjRFI4NCtuQ0w2cU94M1cwZkRPWVVuc1NPUitHdjY3WEQwVXB3QkRv?=
 =?utf-8?B?TWZDNnppWVFMLzZDdjlWNUZhb0Z0RWF5c3NwVzI1VEZqRE1tZjlnRXl3MWJU?=
 =?utf-8?B?VzBkclJlMVQ2WWpkbmlKcThFMkZWdjE2Z1hOVnhaQ0JGWmZXRkdjTEI1bHdj?=
 =?utf-8?B?RkIzamxzMkhUbGIxY2ZFdzBGUmVOSUo5REUvTmJpRS94NDZVYk5pNUFIZkpi?=
 =?utf-8?B?ZDhiVm1TKzFVMDRtV0FGSlh3WkprbnEweE0rTGltcHpReUdxV2tNeWhlK2Vz?=
 =?utf-8?B?Q2VQdzRzMmg0eStGY3B3a3hTZmJHeEtOM0RTbkltSFprRzVWS2ZmcmRyOGIz?=
 =?utf-8?B?TnFZNDkyOGFKMTdnUzFjRExrVENwNjQvRVVRZEZTdEFJTTNETU1sYlM1VExV?=
 =?utf-8?B?NGxQOVRQbWE2M1BVT09jc0Y3SWNwT09XMTFPdHZFdmhiWGNvZ2xKSGdwTGtM?=
 =?utf-8?B?WEdESjM0N0xrUEZHdHc3RXB1RWNwTzFub2xMOXpVMGpqbXJvSEhIS1duc1E2?=
 =?utf-8?B?dm50OERmQmo4Z0pNRHgvUDk1UTZxVG8xSHZzWTdtRVduRldtdzFxdVhLREdW?=
 =?utf-8?B?YWMyek9BRVNrNnNJb2VmcFJnRktnU013VG9jenVzaHM0V1hBQSsvTm41Ymo4?=
 =?utf-8?B?L2dLYkY5QjJJYjJUbzk1Tnc4bzBaMXVRdUF2UXFmUXFDUlV6T1lmdXpPdUwv?=
 =?utf-8?B?ZGRRL3JIZ2k4WUFGVi9WLzZKMy9HK0NFUnQvSlVhVkx2R0RTWHBQSGZTOVIy?=
 =?utf-8?B?R0NHbnpGcktOTldOZDdXRk42bk92NEIxWnorbjY5cTFqZWJCTGJreE11R0xt?=
 =?utf-8?B?MitIUG15aktrZWRRSnBia29wWkVRTTdadkR5c1c3Qm93WUxoRmR5bzBjSis2?=
 =?utf-8?B?RTNwNTZjSVIzL0EzblNRQXdTSzVEak5tMVdiYXZ2WVVFM0pGMjRQZU1FbWor?=
 =?utf-8?B?VXRUcXM4bEQrUCswVFlidFUzRERUQ29HRW5LUysySEk4bjBKaDhyQVNRdkxs?=
 =?utf-8?B?dDNSV2l0cTJ4NjJ2YjFZak1SQWR3cmlTa21tTmJ3d1RsSmRyLzBCN2xZckhr?=
 =?utf-8?B?aHZDdjBpVTMyUWpKd3RVY0tYOHhEdE9aTENVNmh1cGxuR1MwWGNqMXhJOENy?=
 =?utf-8?B?cFZVZUYxWkdyaDhZY0h1dnY1d1VvY1V5clc3cnBSY0h6cVVTVkpQQWlIMjgw?=
 =?utf-8?B?d1RUdjdhWmhXWVpKbEM2Z0lsRlZ2WVdhcDVObWJoVVRVTUU0VmxOODZPWUM1?=
 =?utf-8?B?VXJpTmUzdUwvTldkdm4zQzFnNUNGeUkwTURMYUVROStFWUg4djRDZjdHelZT?=
 =?utf-8?Q?CikUM/tCM+L+G?=
x-ms-exchange-transport-forked: True
Content-ID: <AC053E27003B5D4BB866AE7BB26E4310@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW2PR12MB4667.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2e0c861-2d2f-4959-b152-08d98e99bd2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2021 22:35:20.3118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cfUYllkAJP2VhDJHr8FujDMwzcpd7R5DkTQqaR22BDbS+G/VzSdwL4PQAxAyGOmmeuL46k1Xq+kSWhSv5MhL/Q==
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
 Hellwig <hch@lst.de> > --- Looks good. Reviewed-by: Chaitanya Kulkarni
 <kch@nvidia.com>
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nvidia.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.101.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.101.53 listed in list.dnswl.org]
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
X-Headers-End: 1man5q-0003b3-FB
X-Mailman-Approved-At: Thu, 14 Oct 2021 02:41:56 +0000
Subject: Re: [Jfs-discussion] [PATCH 08/29] fs: use bdev_nr_sectors instead
 of open coding it in blkdev_max_block
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
> ---


Looks good.

Reviewed-by: Chaitanya Kulkarni <kch@nvidia.com>



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
