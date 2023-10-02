Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BE67B59F6
	for <lists+jfs-discussion@lfdr.de>; Mon,  2 Oct 2023 20:24:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qnNah-0000kG-De;
	Mon, 02 Oct 2023 18:24:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <juntong.deng@outlook.com>) id 1qnNaf-0000k9-60
 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Oct 2023 18:24:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g2ks9HGZbgLQHZ6rcbcrWDbCF3pAdKcmm2UcIIB1IN8=; b=DxYgwjiPyLvYac/Jxx+ryiJY9A
 f0s1qOCCkXWk9Qf5aeICdHv7Mvpd5/yZUJay+F/TaEjMUREMwGosAR/LnU1w/oB76pG9W5CRZw4n+
 FY5xRA035qeLuFCBklJMYVghIjGs0ozh880kta1QFuVcOjcknQ7k+jFoRciAIC+JS7ac=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g2ks9HGZbgLQHZ6rcbcrWDbCF3pAdKcmm2UcIIB1IN8=; b=FqqhyU8sChaFG+6TP4J6uwi6y4
 no454pkZxlOrGZvD0NN8AtyKygJ5SfIywyI4+0K7NA9HOEVUJ9mkjs0NqMfWqWe/dgsOov7q7RMmm
 nY39GxvFQNX+oQiuM6VKt3aYj1aoIGvZft8m2XTxZpwepOFfceaus05b+4QmVXr5yB0Q=;
Received: from mail-vi1eur05olkn2039.outbound.protection.outlook.com
 ([40.92.90.39] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnNac-00GLuA-BQ for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Oct 2023 18:24:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J9rnlZrf6NgdwM025XorK8PMJUwv6eQqfludWE5w+p9xNrlA7bZYAPkJ7CMsK8cRuCKZoePdgnSdZf9b5t0V/Kkx0AWvbc55NTL44XvoQeGfRd4FQr9/m2R3yxtNTISkyZonLzG1B8lg/0L4FDvhUpJVrw9rHSZ/2LEiTexauREeWy2C3kf+bNlkSgt+Bu2Tx+Lgty0wrOvg7oAV5DNtwb4amP06smbDly46+4CKTD6Hk5/c0aGxMo5nroYJyxHO6f8gMAzUwdJtZI3ldAhhgHPmOYFDSRtksMD4RkdaQSgxCps5pe5zczGn+GiDPSg0WbYHBp4BlRW0747jmhHI8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g2ks9HGZbgLQHZ6rcbcrWDbCF3pAdKcmm2UcIIB1IN8=;
 b=lymZOsXjjqUYqU86+6C54J7g3g/zdcNYRzorldwjeDN9uXxengyXs9VTnQmh3CessoZzC1DHo7I9c8rAecMBVzZwMcjQLOk0G14ZS+8DTCcRYtyZCc6M/DN9RhyAhEiBhIVbJvpsUiMBLREn0JK8WN7gvpq3lzLwzTBCtx+BUpwei+TbEBAwq0M7GcAYNGDIZPfLIanl8Xcz7MBx4FHSUhC7XgVS4Ih6Y2Tiqp4XcH7IP5cJ6frED1wF5XbzDIoDeqY188qpDAOER0WuX0GMnUBwwmy0ISLby3YAiYLouyq9EfnOq9oft76ibVBCo7p4ferOwvjn3PPIvvuXX6TPvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g2ks9HGZbgLQHZ6rcbcrWDbCF3pAdKcmm2UcIIB1IN8=;
 b=Nmaloe5OSLlLQR9gPCLOYErUG3Dm3WIgI4sjCGrZhMnkALY/zOZqxHyYqcQuXJoE6kqTFzYs3KDc3YGNSLhpDD+kaJCEzF4a8Z7v2ubtVVP1Hi6960w8nWvl9tO180OaUZqxxU+0JmNGl96DAGmp3rkSlOtmZLfoHy4a08irnrOTN1u2UXN7sKY0YIafES0Wk+/nMlvpNYrfxV5NYIR36cR0q/sgY3jUlmLslrr3DdNvsJdq+heC9QzI95Tvjesc4QnGzC8V3djtX/NcqFLSuCLLM/VN1GFQqb5qfgsYIoWe4JchFIf2wDZUxP3UnowaTnABIkxGPFWf0nrsCekDZA==
Received: from VI1P193MB0752.EURP193.PROD.OUTLOOK.COM (2603:10a6:800:32::19)
 by AM8P193MB1092.EURP193.PROD.OUTLOOK.COM (2603:10a6:20b:1ea::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.30; Mon, 2 Oct
 2023 18:24:09 +0000
Received: from VI1P193MB0752.EURP193.PROD.OUTLOOK.COM
 ([fe80::3164:ae5c:78f7:23ad]) by VI1P193MB0752.EURP193.PROD.OUTLOOK.COM
 ([fe80::3164:ae5c:78f7:23ad%4]) with mapi id 15.20.6838.029; Mon, 2 Oct 2023
 18:24:09 +0000
Message-ID: <VI1P193MB07524537938FED1D665FBD6C99C5A@VI1P193MB0752.EURP193.PROD.OUTLOOK.COM>
Date: Tue, 3 Oct 2023 02:24:08 +0800
User-Agent: Mozilla Thunderbird
To: "Ricardo B. Marliere" <ricardo@marliere.net>
References: <VI1P193MB0752E63048A98BC70E4CFA9E99C5A@VI1P193MB0752.EURP193.PROD.OUTLOOK.COM>
 <c52zvpisqgy6nvtw3fku342z5aqmz5gucfagaup2tflw5ia5d7@vbeanlsfhgqp>
In-Reply-To: <c52zvpisqgy6nvtw3fku342z5aqmz5gucfagaup2tflw5ia5d7@vbeanlsfhgqp>
X-TMN: [1V5ER/F8+Quv5333hwUXbyouCDeB2INV]
X-ClientProxiedBy: AS4P190CA0039.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d1::12) To VI1P193MB0752.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:800:32::19)
X-Microsoft-Original-Message-ID: <6bf104ac-c59a-44f4-b168-75dd36db6ca7@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1P193MB0752:EE_|AM8P193MB1092:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a8dc038-ac05-4bf9-b102-08dbc374c50f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e7IL1yChg7P0d8dkjpxrpeTbPq270IdAlKeYmO069opl5ToLF9pVRi64WAoy48yjvCCKBm+PFDxc0bBXJ3UCOutttvwhWIHevCTjUG5ED+3S8Q9PsA7fOLtUyrhX8DvR7tpJp8w9nzaUYnpEI2YIXWrNBgQ1DjHtbFJWGP1yVu57hvA78Z0zwRpBrNhBfYUdm32J5+ZX+Ne/wijU4gLvbJoLSAHtzhQgvjNJZKAfwsH3WjtV8L5ZN5f8eY6JwmsJPdyFeOG62EJ6bGgwCT8S+UUUa/cg1Fx/cUwwmKvHaMlvk/cu83sd80BFuBkLdEjy3PVOV7rDCQCH9VijizJ8FUyPH0x2nimmitkQOamxizvexUj4bXTIkbax5Y0Yckwkp7jqDsn7s5HXCQMyA1lQiOvq78dgwEZeRzjQAz8x861+BN65d8b+/e64xc6Qe7Ht1/013bj+Q5mhuwKZSqD3XsDlNZGEAOm0GARhh2Xy4VVe5ohuRJHFQ7GeT4mwkmDO+yLfrkNaWIuTMYLEBg3YjVPygXDzsszzRtlk70uxe9OWAbUJvD/b4Yq1ehgoihG0
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmRCREFNN0RQN3ZPbHk4WG1CakZXZ09lckp5cWkxbVNRMGkxYnRhZEJISzVL?=
 =?utf-8?B?ZWlOdHlKd29MNEFpZUsvc3NrajF0Ky9vUHVlS01tYUF1OG5OMndHSC9zbklp?=
 =?utf-8?B?VC9hUjd6VFNqKzdlQXl1VUw1bjgvTlA5OHU5YlZnSVFHSm9sTVc2M2pmSWw3?=
 =?utf-8?B?T0x6bXl2WkZLSnhla3kwUjJDM3pKTGtZSHJFYnhtc2RKb0dPdVZTRE1SVFlR?=
 =?utf-8?B?MzQ0RzBoL0lHSTgrS0RvdUwvNkdyQWJLTnBydFB3cUo0S0prQ25YQjdlS0lZ?=
 =?utf-8?B?WXNpeHpDOXNHd2FzdUU5bG83Y2RudXNTc2psK0dScU1EMFNFenphL1AvZnIv?=
 =?utf-8?B?eDBuWDF5dnh3Zm9UbHdPSnBaZ3Q0L2ExSFB2ajVxbXVVNXFqT0M5M1RmWERE?=
 =?utf-8?B?d0RIQnRDOTlPT0o2a3hoejlrVWFpYU5neDZIM0RtTEtWTUppL2NrZWYzYktw?=
 =?utf-8?B?VVd2STZGeDhVVGRuYUc1aEhpMDFERkg2bk1rNkY5NDZRY3JPT0QwL0hSN2xK?=
 =?utf-8?B?MlZIMm5RVXJiMGM2SFR5bko2VGNhQ3hiNXJMcDRTWWpoTXVObU9xaS95K2to?=
 =?utf-8?B?SnBUT2hmZENVMmdoZnl3d3NrTmZsWmRoN0FXYmc5VmdTNHVJMlpiMVJ3QTcz?=
 =?utf-8?B?L2dLSXNXeXBwcHVsYzhFVFJlVnF5bnROTGZocGZUVzB1b3RMeElFaUhCaXlJ?=
 =?utf-8?B?dFV5cXRHMVMwTG94QStoNytmRkxsczNXYkpUTFlXRWxOTnRsdnV6NTZPTW9G?=
 =?utf-8?B?OHZJbUFOdDZVT2dLTlFaNEhuQ2xNY2FacWk1cUVOMGtFQnlsM2U3SG1oNUVr?=
 =?utf-8?B?Q2F0U2NVNUJtOWVzQzAzZ2hXSGhiRnNnMTdKai9ZbHltbDRwNzRJQXQvRFNF?=
 =?utf-8?B?ZjBFZk9OOVM1RXFENldxMHZlcGtRaTdBSCt2VjhVWmJLc3dYcXd3a0lucGU2?=
 =?utf-8?B?eEdySlY2NEN0NldURGZRdlMxdDBOUGRLSkUrRFZiZGN4dllDQi9SeHhxUWwr?=
 =?utf-8?B?Nmg4MjVVOXJrVmZDMG5BbVJ2NCtqT3JTRDg2V05tWlpRaGNBc0pVU0tmcmVs?=
 =?utf-8?B?NWRNTGZiczhpR0RSeGg1VXBCcDJFOVV2bFhjaUtBTEpyOXJuOEQ0NFJjUEJI?=
 =?utf-8?B?NWkwem5POXU2bExhbGdGSjZKUGJsZGdvbjV5SjBoa3JqcTJWT2JmV0JDOFhR?=
 =?utf-8?B?bWw2SkMwYVgzR0FQUnZEZjVlb2h5QThpSG1ET1QwV1FSano1Tm1wMTUzT0l4?=
 =?utf-8?B?Q0IxRmdUbHJIVnFEcEJQdWpuWU9QSXNOcjRsRmxTaXgxNGxXRGRhaUlvZUgy?=
 =?utf-8?B?RnRSclg3aExRUXk3MzNoR2pOQW1aOGowb3B2TGEvSUpPVTM1VTczWHF3cjcr?=
 =?utf-8?B?eVo3NmhqM2NJb2M2MUVYek5sbnJ6SWNoVXkzYnZKS2hGRUtRSWxmalpRb2dy?=
 =?utf-8?B?OThXU0M2RkdmWWVsVGlYenRoK2ljcEdIcmx3NjhjSzRQamhac1NCdWVVOEdB?=
 =?utf-8?B?M0FJZEMxZmFodmd5eG1WY05vdnErQ3V2Mzk1Ymh1WlJQcElVeHdxSnRkU1Rt?=
 =?utf-8?B?UFZFMWRpNE9EN1lhL0Q2TXdIN01qR0VySTZzbW9HeS8rZi9EdFZVbmc4MjNj?=
 =?utf-8?Q?CWZYb7clrwitVHksgAZSfuRIy6zoK1a5A8s2zhYDYi7o=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a8dc038-ac05-4bf9-b102-08dbc374c50f
X-MS-Exchange-CrossTenant-AuthSource: VI1P193MB0752.EURP193.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 18:24:09.5110 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P193MB1092
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2023/10/2 23:56, Ricardo B. Marliere wrote: > On 23/10/02
 05:56PM,
 Juntong Deng wrote: >> Signed-off-by: Juntong Deng >> --- >> fs/jfs/jfs_dmap.c
 | 3 ++- > > Hey there, looks like you forgot to a [...] 
 Content analysis details:   (0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.90.39 listed in list.dnswl.org]
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.90.39 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [juntong.deng[at]outlook.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
X-Headers-End: 1qnNac-00GLuA-BQ
Subject: Re: [Jfs-discussion] [PATCH v2] fs/jfs: Add check for negative
 db_l2nbperpage
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
From: Juntong Deng via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Juntong Deng <juntong.deng@outlook.com>
Cc: shaggy@kernel.org, wonguk.lee1023@gmail.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 liushixin2@huawei.com, andrew.kanner@gmail.com,
 syzbot+debee9ab7ae2b34b0307@syzkaller.appspotmail.com, wuhoipok@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2023/10/2 23:56, Ricardo B. Marliere wrote:
> On 23/10/02 05:56PM, Juntong Deng wrote:
>> Signed-off-by: Juntong Deng <juntong.deng@outlook.com>
>> ---
>>   fs/jfs/jfs_dmap.c | 3 ++-
> 
> Hey there, looks like you forgot to add a changelog for v1->v2? I see
> you just changed the commit tags ordering but you should have that in
> mind for next time :)
> 
> -	Ricardo

Hi, Ricardo.

I just made a mistake in the order of the tags, I should have
put Signed-off-by last, I did not change any code so I did not
add the changelog.

I am not sure if the changelog should be added if the code of
the patch is not changed.

Thanks.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
