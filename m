Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0971773B910
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 Jun 2023 15:48:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qCh8g-0007hH-JQ;
	Fri, 23 Jun 2023 13:47:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mirimmad@outlook.com>) id 1qCh8c-0007h9-85
 for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 13:47:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mt9WZGOTz1Dygnly3eaxiwLow6nhmpRdXaKyf+ART14=; b=e9d/6iV62E/Abc2okMqr+Tb7LW
 vyqbok2yRAlLkdoNFKbRTKdtJ+E8q7ECQL1OYRl80c0phrTBS28r+NwEiTUDf3VfeQS689JcSPCN6
 5D4WXMEauk6MfVUQDPU+qmpyDjh0UES98MrMfehr/C0SNdjv6h0M79qE5Ba8prz+oABM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mt9WZGOTz1Dygnly3eaxiwLow6nhmpRdXaKyf+ART14=; b=E
 PByt0mA8l+xxlGuM14URAI4KTQvQGWKEWsFlo02urs2iNDpxtn0bmIv3K/3slo5AgpjVJnCs7J8VL
 AZzKxVKBvcuSuWQnPoWHAQSEaq4wS2SW1Xe/TmjJIsTyEGLl5mfbafe0VcMNCzu/85Ktw0KcZ3vv7
 41sC0kxPdRMZeyJA=;
Received: from mail-dm6nam12olkn2038.outbound.protection.outlook.com
 ([40.92.22.38] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qCh8Z-0006qr-RH for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 13:47:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RRxFZaB49Wh46hXd8AT+YJIg9tZpDb+1CyZ1KJoSziGd3M9NI2Qj9Rkvtyw32nhLK+A89aSRqVBg4TqPm+nlGsm1LWZ0IHFLO6H4+v5EkAHeJJZ/ABPDHdPyAn7nnpNmYr0EkYgkBb4IxBZgtGRjnQfLn7zg2LxEsLn24tqzE7OrdpklSBAy6k9FCKwaSZVgRT+bWxGdtmG2QLfzECIBk7BAjBI7qvuikzYzMBg0NW2BWspaCLnLVPcw/xHT5uL3aMhDX11zDrjSxoJTxepi/6YCPMR8xkPr9HqDNngWi+PU2q7rJtyZVv31UD3vJRdBKXpWWXx2Ujg69RcrcObfuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mt9WZGOTz1Dygnly3eaxiwLow6nhmpRdXaKyf+ART14=;
 b=E6a7/y/Ger0QGXZuEPlJikBOP9GxfhwqyZFWDspPjOProVUiDPymkZ2DHSZB8PT3wAKLaaMLspRKMHcuFVKRoslm3s4ipFN+JMDG8lcFdv4xsZ6gdXgkQMOpT4s7+F777zl1VBwY5nPnAv7z96Lim2/XpgphEMmltpJchzUoOh8mqhyhoxguLKAyMe4zX9V/byHh5S695XwFIjKJxfZ5CZpDbxl0pymaByr8oHBifz6loPlxZ5VW4dU1b42lLSsz8uqAcb5SVDH4clr5VqyY5CjJvHmKWNoDc6m6w8ugYH99BDQvLFW2NQ0HPM1rN8PNod0PMtXoJjvcO0f5216JDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mt9WZGOTz1Dygnly3eaxiwLow6nhmpRdXaKyf+ART14=;
 b=QXLn/ikV60VTbHsrMoe/galM7uLSgn4AED3BoY4s4Uh31/pksqCUEnhCQJJOOeTUvR3SPE0/r57Eocg9UGIE83PKeROlbp43XtG8s49GBjBYX42sG2pUqlUtQIlXadKl6AVgSNMR4H7/fLFPqzI+37+h/jk+Nfq46FAnMuk81KRPEElsgR0fG0Br90SbyQn/P73XeKXK1gc98ZcqU6x7MfNUuLIqZXe8cveMcfpLr4xiefEzTfWbS1oWvLQSWUi+OosKiIlcZTtJ9ZY+KZNKUzL9pFEflUFjMmtlfJ+zok27CNWiEnFLhUe+qAugc089ecBvJRXOg6/04pfDeZARjA==
Received: from CY5PR12MB6455.namprd12.prod.outlook.com (2603:10b6:930:35::10)
 by DM8PR12MB5397.namprd12.prod.outlook.com (2603:10b6:8:38::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.24; Fri, 23 Jun 2023 13:47:37 +0000
Received: from CY5PR12MB6455.namprd12.prod.outlook.com
 ([fe80::f849:c65e:3d5b:5d]) by CY5PR12MB6455.namprd12.prod.outlook.com
 ([fe80::f849:c65e:3d5b:5d%5]) with mapi id 15.20.6521.026; Fri, 23 Jun 2023
 13:47:37 +0000
From: mirimmad@outlook.com
To: shaggy@kernel.org
Date: Fri, 23 Jun 2023 19:17:08 +0530
Message-ID: <CY5PR12MB6455588C9343BADC6760A96CC623A@CY5PR12MB6455.namprd12.prod.outlook.com>
X-Mailer: git-send-email 2.40.0
X-TMN: [DdOSuEagCBahvHK6ZiyqaqwdKDQ32FnbRZqkF+a73hgC6AFZYTlifF/tc5bfPyrS]
X-ClientProxiedBy: PN2PR01CA0209.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::20) To CY5PR12MB6455.namprd12.prod.outlook.com
 (2603:10b6:930:35::10)
X-Microsoft-Original-Message-ID: <20230623134708.18550-1-mirimmad@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6455:EE_|DM8PR12MB5397:EE_
X-MS-Office365-Filtering-Correlation-Id: ea36cdbb-5ca6-4c72-95ca-08db73f0679c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WcdoU1Ro+TE4F65zrSa2+SuvNrLwI6XfE6pkRqWm71WNeF19qcdq3oMIb20DxkD2LP9JSwmK+bV+bL4coVC3sUGgE/p3k5E50f+Mvhj/L3eIXL/DG4zupx8EdDEH6f6xg0o3DEDrEpHRDFyL+7w8XlQ0VX9/sAYFI3bEHcGfkcNbF7Uea3w2W3e9V/14ki7lXW7LmrIw9k9vTrzgHE7bm1KXCEHmFkGCgykfju+V3wI4lBKAafMdsJek+/9nQo+H+x6B6swP8zJztSDXgUtMDowChhkjdXXdD2BWkBW8tJpwwNG+o4+FRvzlLUfGX1QqEU72P2HdaWilS7ywKwXVW14R5iHVPLMB442rW0UA4bSz5f12Ie+m3am3ipmWie3AJkgVYqyJ5enAfhQNoWh9DoQW0tieMkj5MeTaFl2NG42Q1dzGMvhN4ETkYL3i/941ZI3rTJMHxWHnm8Zjhv/TkcPIaopopV2UWOOPScE29NbWqXuubnpMBhobca8euZDXpra6fN9zhdbPBe/JWNBJBhyrYOZ8RVb43vD/GxJLkUeKvOI2M3szymvFIJLTta6s
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6IHUYEUK27NYh3SRNUtkASG+8v1FE++s9V2EZ53E1506eJkghsv76OlREzCq?=
 =?us-ascii?Q?IiwP3eTpSe60ICbjs2KRzSjir2kce7PBZUeK3O7sHq5WSD6kuvFOCxVwJeqx?=
 =?us-ascii?Q?fvzpQ1R9mfITcTMP0xmwFt2rYuSyswZOHzlozHwotzdqbcYNDKepuYIgGMH9?=
 =?us-ascii?Q?oQKy3FFSFsPvEiPFDLtqvgtx7lmcfjaEGefc74cGQaiBQRXnC2heTHvH9gJr?=
 =?us-ascii?Q?V39mAuR1ew7mxckJl+IHmiCzauCWMyC9WwvNVrXZiNRE+feZHHvtBj8JpQ3h?=
 =?us-ascii?Q?Z9TLw6IIJmVe0EZD1zGgVUKU1rgIHqQ4ZYS7QSKhSTsjZV8bd3Z+DEwbKoJP?=
 =?us-ascii?Q?Orpvcgsqjv4ltAEr6GpB+HnkZ6PCn3rv7F9ONdNOmb5dlsvXX3AUrEGQA4IQ?=
 =?us-ascii?Q?IdOOzIg/pQ0qddk4+Y3h+mayTKB1LThPatOzhoR2dYZd9SJrQPyCyXg1zUiL?=
 =?us-ascii?Q?ISGxnIFX2AyFQZ2zxRCaauhWhHk3k6Fv6//p5vMsZKY9sRkIAeP1yssPCKBS?=
 =?us-ascii?Q?wbmpfZ6rNhJwWExhR2bVtGcggAm4JBX87KUXeJ4VxC46gtyvELmWUM6UymQA?=
 =?us-ascii?Q?Ih2BaJLH9MRw8ixm7WUTnT39IYVVVXf2g6d/FWep82mkfQIEM76ahoQPoLaj?=
 =?us-ascii?Q?oBEjUdtWPGtk7A4M/BF4sZYSCiWR/odZs7YO0xZ2rxESco2fg+ysO/qefTwX?=
 =?us-ascii?Q?oeIcJvutcT0zZuXxiEJhBVKnY9PfbNey8AfevvxfgnVK3R22eDjwItUBZLsK?=
 =?us-ascii?Q?Z+FT602Hh/VJZSV+VrbElTO5cGT/Uy4QrI3FlJVKRQTzw4rTd9o2tqZSj5mt?=
 =?us-ascii?Q?po7qJED0VvJvbmPT/Qxyau42tIXvoEES6qlqY+xi0Sk2yPA3B9g4SFQl9KjE?=
 =?us-ascii?Q?GVHoSBUxLgO6nWpcyXY4HSPuDKDwN5bdlcyQ7IyfIO76b5opkZ/9mw6ehrAX?=
 =?us-ascii?Q?7iOlIEzLIbpDHdDaqS2a7TqC4IDFr3oV48OOK6LTFcnGfDIWBc4EPh7yHXbe?=
 =?us-ascii?Q?V4dv1NdvPh+dikkPqbcjZ12oA8wXUWJN2jwInBx3kSCgqHCQIosZ/WrQTLCS?=
 =?us-ascii?Q?FMS2gYJrtRxu+HEPOH1DC2dHPfeLVoBDeKoQCkbu8fZ2whgsZAjVs54sh+1X?=
 =?us-ascii?Q?RlNB0ql+mB2MzbTIAwyIjY0oJlcKBIjni/qyV2Y/dvUrKDRARUTkb52kTltr?=
 =?us-ascii?Q?xHjl/PcpfyX53VQzFAhbYdOQAsnwL+6Slu2ZMXZq4GvfvHwj4GZVQTEk0Vb3?=
 =?us-ascii?Q?U+uvgIjYYaEVn0ZKElPa3q6Uz1NkDgC847uF3UX9cA=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea36cdbb-5ca6-4c72-95ca-08db73f0679c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6455.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2023 13:47:37.5418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR12MB5397
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Immad Mir This patch adds a check for read-only mounted
 filesystem in txBegin before starting a transaction potentially saving from
 NULL pointer deref. Signed-off-by: Immad Mir --- fs/jfs/jfs_txnmgr.c | 5
 ++++- 1 file changed, 4 insertions(+), 1 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.22.38 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mirimmad[at]outlook.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.22.38 listed in wl.mailspike.net]
X-Headers-End: 1qCh8Z-0006qr-RH
Subject: [Jfs-discussion] [PATCH] FS: JFS: Check for read-only mounted
 filesystem in txBegin
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Immad Mir <mirimmad17@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Immad Mir <mirimmad17@gmail.com>

 This patch adds a check for read-only mounted filesystem
 in txBegin before starting a transaction potentially saving
 from NULL pointer deref.

Signed-off-by: Immad Mir <mirimmad17@gmail.com>
---
 fs/jfs/jfs_txnmgr.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index ffd4feece..87dc4e3a4 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -353,7 +353,10 @@ tid_t txBegin(struct super_block *sb, int flag)
 
 	jfs_info("txBegin: flag = 0x%x", flag);
 	log = JFS_SBI(sb)->log;
-
+	if (!log) {
+		jfs_error(sb, "read-only filesystem\n");
+		return 0;
+	}
 	TXN_LOCK();
 
 	INCREMENT(TxStat.txBegin);
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
