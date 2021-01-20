Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B62192FC9CD
	for <lists+jfs-discussion@lfdr.de>; Wed, 20 Jan 2021 05:17:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l24vB-0007fe-Nx; Wed, 20 Jan 2021 04:16:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=647182bba=Chaitanya.Kulkarni@wdc.com>)
 id 1l24AO-0002A8-H8
 for jfs-discussion@lists.sourceforge.net; Wed, 20 Jan 2021 03:28:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ao3zFQITGqA2aHh0f6JEQROwynf2v+vXzjbrHI/DUFI=; b=KB4F+5jEO9aRD1hSQDlX6dahwY
 eGo55RLys3N4Gir1MxW1mMCa509V3alaKC/yqSAw1fnVjP6S0a+E8MaXrL+8+xskegxOS3e6JJxGo
 zRTEX+PXlweGXmOB0WB9RW+HQp5zAkCTwQ+vYs/lnrPBnA9xsPC8EarPolbPnMjZ3h9g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:Message-ID
 :Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ao3zFQITGqA2aHh0f6JEQROwynf2v+vXzjbrHI/DUFI=; b=J
 RiyM6Ce+bQSPxtH1M5ZGdtMjdCcGvnUIRK2wrr4A0QrZKDqfLAcnx9fVbk3CO7GXof32qnhEg1eze
 Fu5OBGhOJKXR5u032nvSaExosYFUOhWRGa6FccwpzZBa2q4DaKT8071w2yjB9ktn52KdtvHG6pQMQ
 WVX0ZBarnIyXvix0=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l24AE-0096Ny-3D
 for jfs-discussion@lists.sourceforge.net; Wed, 20 Jan 2021 03:28:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611113289; x=1642649289;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=M4nuvjROJD8gM53WiMW4QIN6VnKfsI/ugJIBArJ8Iag=;
 b=QISm4dmOK2ZS97IsRH3fpouqnV0i2vJeBu50kOM277QCOf7qUBsuVHgm
 xJ6L1YWTgk49TGlW4xSrijTnzb5TKdBIRI829CphVxe1SPQN6Fn5a7UPO
 tsilFD5toJjTG5JSWCwLMk3N1rYSI51Gf7pFs8acwiEEqdWkLB1km9OMB
 0L5FLP0xGq3lp5koq6CjrHcH79tSsyiEqXEBonHyTDbRx4gy8tXBbxVsv
 HkJJoE8Hm3aS4k7zzF4Yqfg3XLyOkU6TbaKcGEd0w3HC1Xm1RPw1iUwRF
 OZCt+ftyS2OSpw7CH4pROVbffiAILw3ejDrZhFwCeHLEwv5Qcuxwar/K5 g==;
IronPort-SDR: 5+xZGKwR+vWn59Bhi8mkKXqNz/iW4w9Vnu9yAMcqM7RBpWTonEGmyTXdWeHqap0mKuHzjPub3F
 kgz6zEPhIoanstfyptbr7W4g57Bpiof0QZAMtTOoXa/rDvjPmSz0nab0wpZJcAry9GnAZ8+qcC
 M3b7Rsuhp8LY8AgjbdN8oEFWgMWeg2ZnqeOsT8yp/K2it2xvQgYSpT/y5b9E/hAldiyfDW2Px3
 /9Iq5djCd2PWE28ff0fVjFhEynFv3+Q3c6J+cJMdUYE1InGosCicYxFZO8mhm4eSrukifCaTdo
 RGI=
X-IronPort-AV: E=Sophos;i="5.79,360,1602518400"; d="scan'208";a="157859380"
Received: from mail-bn8nam12lp2171.outbound.protection.outlook.com (HELO
 NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.171])
 by ob1.hgst.iphmx.com with ESMTP; 20 Jan 2021 11:27:58 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nIvgvIgSqoJMeejK5wOC/rvWoh/uPTaXwNdGWnxe68UqEKFYLOF9gxcshBHTTEphhOSVZBfFvdID0LbwCHkrI+GcCGUg8SzpxnZWhg0RpxFviKHhztEk4GmLeyBpwLB2nHMp39s6GtSM9QcMPiN86ogsQ/fLPLU5kprWvJUbGk+QwheZ69RPU7s4PhxXetiQBx32R54wLsiXEDfHBALc9KcoS0SwQHEPwLlmasDRWiQK+fDpLKFyCtKzsCmzxJLJZPeraot9n0JDGw4y7WAaYy3DSPHOSlnkRicjh7SPN4L/HA4TCQ9i24sfI2u41/xxF3JBxUehHfSSGWKJ1CJkng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ao3zFQITGqA2aHh0f6JEQROwynf2v+vXzjbrHI/DUFI=;
 b=cnLtrKL2/vH/USc4+KX9bMQ2ei7snm0c5TtBPRMFaTeDletDceoFtZbf1tbDkYcmAy1IflDAXOszqONer6yQme16Ld4fbIkxVVXIu95Wb1sjoCUSjaW+Ing+X5Zc3Adocg0ffZqrBVcxZlz142jYpbYGQoyvJhxHHNkD0wg9BOHWlq6kYEOWbJDTzGFiT7vz+39pDPP8wUUu3zOjiKJp+sYv16+XDd+snAw7q6Ow4BTGW7BoeMwttdjCix4fn0NsDtXTWNGqUXrAKY121U/Q/e2cZ9Yb5WMZa5A8wchjLtgMKCffji6ZgX6vLUTTJJwmGCvTFGFsMzL0W9lEERM7lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ao3zFQITGqA2aHh0f6JEQROwynf2v+vXzjbrHI/DUFI=;
 b=qPzgsZBsUwQIfS4W2aAP1pPawNzrzDtYNYzGjBTGX/Pn+Z7gcpAOR2mmKTg5p7Jo76rCKmORDKArE9M657syotjOZ41GRUsp8O2zqXTVcbx+xltFXYYtQ5ixv9FVam3eZc+SYM53BNe1qnMNqMLeip1vZJjYatp8sjY5744ly3o=
Received: from BYAPR04MB4965.namprd04.prod.outlook.com (2603:10b6:a03:4d::25)
 by BYAPR04MB4872.namprd04.prod.outlook.com (2603:10b6:a03:42::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Wed, 20 Jan
 2021 03:27:55 +0000
Received: from BYAPR04MB4965.namprd04.prod.outlook.com
 ([fe80::716c:4e0c:c6d1:298a]) by BYAPR04MB4965.namprd04.prod.outlook.com
 ([fe80::716c:4e0c:c6d1:298a%6]) with mapi id 15.20.3742.012; Wed, 20 Jan 2021
 03:27:55 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-xfs@vger.kernel.org" <linux-xfs@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "drbd-dev@lists.linbit.com" <drbd-dev@lists.linbit.com>,
 "linux-bcache@vger.kernel.org" <linux-bcache@vger.kernel.org>,
 "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "target-devel@vger.kernel.org" <target-devel@vger.kernel.org>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>,
 "linux-ext4@vger.kernel.org" <linux-ext4@vger.kernel.org>,
 "cluster-devel@redhat.com" <cluster-devel@redhat.com>
Thread-Topic: [RFC PATCH 00/37] block: introduce bio_init_fields()
Thread-Index: AQHW7iDfXiv5iuHOl0mGSxMcJ7OwhA==
Date: Wed, 20 Jan 2021 03:27:55 +0000
Message-ID: <BYAPR04MB49652C7B57396757FF064C6686A20@BYAPR04MB4965.namprd04.prod.outlook.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [199.255.45.62]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a5b4c018-b955-4aff-42d9-08d8bcf3608a
x-ms-traffictypediagnostic: BYAPR04MB4872:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB48725C6EE06AE9513255BA5C86A29@BYAPR04MB4872.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lqw/FI7V3h3I7N6LUDiMWfhW2chPZ0fK5VoXZLC7RQTD04IRNr4lXPyMYMfMUREUCjhqbsEYNkR0i0ntiSZcIAZqmjdF57HMmj47+NooF42/0RPaWT26C5YZdfVo75rKokHq9PHjl7dxwLYdYsGdDfeeSENfAfCuDQ6aQWFFVFPiLrgilW2mfde9/lHnT4hAxNphtCZIW+V5C2Py1PVUDiHlYPv2SPmmXl7/djmz9Qbq0Nki1YnQIwziZVTKalwz+WddcgkSnLau7w5rNtFQH859+NQBj6hCuAnSQuBzU1mThUFpsvhXA0yfEbPr+mL40U7l2JqTnG571BQR+R+aM9sPYuQHp0BOzVNjTSR8vodGszQKXWhtLuuwquyO8nXZQjgc+4qjPKcH0W2oDvW51k7EwOI1xZ5LXvKta7v96r3le8A9o3BLdb2CfPmvgpU1Oft1BbJlI4NLPQmkxMqn6sK7khwZMWz9cxpawhQGe8pg2Ierz/Nis188soVv0v/o3jfWHv0lnergYaYQYoLOwQpy9PedA2SAlM0R2GY7OBp1nP3el2JC9YrwDPIXhkfu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR04MB4965.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(366004)(396003)(376002)(39860400002)(83380400001)(8676002)(921005)(7416002)(64756008)(66446008)(54906003)(53546011)(7696005)(6506007)(71200400001)(86362001)(52536014)(2906002)(5660300002)(478600001)(76116006)(66556008)(66946007)(7406005)(33656002)(66476007)(110136005)(8936002)(316002)(186003)(4744005)(55016002)(26005)(9686003)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?CYeIwzL7+LDwBcGUtwWpgfGZXas4/+HyoB5dQvzgRXUwabx1wNppES5QTFxT?=
 =?us-ascii?Q?kMs/MvxFLYVZI5XqHFhuJeOq9onZPVWZNgeM1d1TVfokEb23W8IjRI9/kJQ8?=
 =?us-ascii?Q?njDQexyJ0VEFzXOM2fBaNuy8G56NIO9iILmStR8rTXkc+GN1VWuYWqmyqz1p?=
 =?us-ascii?Q?M8UvAerZCHQTENnAamWt49x4NLAfr9FFpZfux/lxafxQafyaTIS3nxDmer6n?=
 =?us-ascii?Q?8JRBu5PudXaoLVCIX5TFxJ9BHaj5MvpPcwnMe9yBtbXqD1lRlqEUUHnvhwfK?=
 =?us-ascii?Q?UIftvmnTQROjFbfkJXhZccpAoL/aq5AS0W+TYV2JB6qHUFtSaFLOv3m+7JSZ?=
 =?us-ascii?Q?KB9qT49sztiW8OklmFBypBXzxVxH+sFpG6dedI3pzoiKl+1l+yv8lx+IHIc0?=
 =?us-ascii?Q?bnPJo+pPjByH83zID56ASid+n3EMXQ+AQvu66L3G8/pfCvGGrwcnjiN+wYuE?=
 =?us-ascii?Q?jgn5p46CJnUPI8fVsBvsOPPQvD6RahqlpOCKp6O2gNqlabFChMaHTa/HtLeg?=
 =?us-ascii?Q?XaXE4rLcbgkaSWEuoLPG8GlN6LNp18Xjm2RS/25dq8vNTwk1NzTSmsv6RRZc?=
 =?us-ascii?Q?IhQ78OnwWHRVLF+ZyQ9faxQPYis+oX25aE/PAdTk/AV3kke9/XNbjlyjz6sQ?=
 =?us-ascii?Q?KIglOzm3XKue4E4mZ/Oc+2YadCcFDjxtp0hf2tyIs9TJL1r/GKvdcThyYVBL?=
 =?us-ascii?Q?wRV66Eex1KUdgrzLeEjXT1fMhAelxL2Wq+SWqiZp6VmrBxF5LExsi7A+978r?=
 =?us-ascii?Q?TGNkHEzmUVLuoOEUMQ5T44Jv1898R9lxeWj4JeItOojNBXT3Tq4OcRsZELf6?=
 =?us-ascii?Q?R1dvqhysFLFxXmuVei/nYnRFepqrdE1rAIghfvG53HAVCMokkzIzD53g+VJu?=
 =?us-ascii?Q?kM1xatRvJtNTqOB350/tIRKqR8GtrILKDN38GJ3VpbZ6v0ZDSUF2VCgTSLt7?=
 =?us-ascii?Q?l91pWwrHQtmycz370urFgVYRNv18k5jQ1qOlRwMHa2D1aKdGKoCKPFMikA/F?=
 =?us-ascii?Q?ocZw?=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR04MB4965.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5b4c018-b955-4aff-42d9-08d8bcf3608a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2021 03:27:55.2569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6GChSPAwRaJR+pnJ/NXEbGatSLvEkK5o5I/huExAKkTALRKQxBWJkWD8S6meD32zVWEaMR/TBIKWTtYqKFHLrIZporw6ZI089anAFL9wihk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4872
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1l24AE-0096Ny-3D
X-Mailman-Approved-At: Wed, 20 Jan 2021 04:16:38 +0000
Subject: Re: [Jfs-discussion] [RFC PATCH 00/37] block: introduce
 bio_init_fields()
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
Cc: "shaggy@kernel.org" <shaggy@kernel.org>,
 "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 "snitzer@redhat.com" <snitzer@redhat.com>,
 "gustavo@embeddedor.com" <gustavo@embeddedor.com>, "clm@fb.com" <clm@fb.com>,
 "dm-devel@redhat.com" <dm-devel@redhat.com>,
 "adilger.kernel@dilger.ca" <adilger.kernel@dilger.ca>,
 "hch@lst.de" <hch@lst.de>, "agk@redhat.com" <agk@redhat.com>,
 Naohiro Aota <Naohiro.Aota@wdc.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "darrick.wong@oracle.com" <darrick.wong@oracle.com>,
 "osandov@fb.com" <osandov@fb.com>,
 "kent.overstreet@gmail.com" <kent.overstreet@gmail.com>,
 "josef@toxicpanda.com" <josef@toxicpanda.com>,
 "efremov@linux.com" <efremov@linux.com>, "colyli@suse.de" <colyli@suse.de>,
 "tj@kernel.org" <tj@kernel.org>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "dsterba@suse.com" <dsterba@suse.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "agruenba@redhat.com" <agruenba@redhat.com>,
 "axboe@kernel.dk" <axboe@kernel.dk>, Damien Le Moal <Damien.LeMoal@wdc.com>,
 "tytso@mit.edu" <tytso@mit.edu>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "song@kernel.org" <song@kernel.org>,
 "philipp.reisner@linbit.com" <philipp.reisner@linbit.com>,
 "jefflexu@linux.alibaba.com" <jefflexu@linux.alibaba.com>,
 "rpeterso@redhat.com" <rpeterso@redhat.com>,
 "lars.ellenberg@linbit.com" <lars.ellenberg@linbit.com>,
 "jth@kernel.org" <jth@kernel.org>,
 "asml.silence@gmail.com" <asml.silence@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 1/18/21 21:06, Chaitanya Kulkarni wrote:
> Hi,
>
> This is a *compile only RFC* which adds a generic helper to initialize
> the various fields of the bio that is repeated all the places in
> file-systems, block layer, and drivers.
>
> The new helper allows callers to initialize various members such as
> bdev, sector, private, end io callback, io priority, and write hints.
>
> The objective of this RFC is to only start a discussion, this it not 
> completely tested at all.                                                                                                            
> Following diff shows code level benefits of this helper :-
>  38 files changed, 124 insertions(+), 236 deletions(-)
>
> -ck
Thanks for replying Mike, Josef and Christoph.

I'll move forward with Christoph's suggestion and get rid of
optional parameters which is making this API hard to use.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
