Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF88AEA466
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Jun 2025 19:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Udkdallk07rWTP2lviSPGYcXZdaGF4LqP7xGZZ8zsfg=; b=fayt1cGHHzQTS3TJMmuZsdIIPB
	twtqV2hMgtQXLvy6vCZHc8BTLltUqLKmsqRZoPtCXNEP8qg9VXMO5zSj6uScS3F3E8cBlhjTRCsCN
	5rka5QySKmcM60uPGw02/qtHQDevdjems0uQTtc2zhtXFkFzrwTtaHrCGUVx01WuvsLs=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uUqL8-0002nL-CD;
	Thu, 26 Jun 2025 17:24:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <frank.li@vivo.com>) id 1uUqL7-0002n9-0W;
 Thu, 26 Jun 2025 17:24:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HcQDHSMcmQA+kIgPmzRkbQ4Ow3qAz++6gTRG168eUDY=; b=WycbnGGqsnCzD16GuNiZal5MtE
 TV8l5zpwD4eKoRCpEaHYUlUy/KXwseq/PeMx/vpIGoPdEC7p7jh/soNi/9YtnzZQKq3oAHS+khgy9
 9Prepl+SisIao9Zy3EoffTewyRGwVcnGiSt0YOEBOYXfn30YU0kC9hiYTWCOPFbXCzmg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HcQDHSMcmQA+kIgPmzRkbQ4Ow3qAz++6gTRG168eUDY=; b=AtpCHMpDDF8Txli/nTaM7QHPcv
 WQkOqdTIseOU1Nff36/77tkEa1Xb+rv61bp1fSet9ODwKmbKdQy4O/imBPL5dNU5GTEWw3wg9SHBS
 JhJlXEjgcDvRv6XCZzXW/g+4DE8MtST5pD2FPfnTl3b+xlJFTQYh2GzVI5gOnDknHveE=;
Received: from mail-japanwestazon11012071.outbound.protection.outlook.com
 ([40.107.75.71] helo=OS8PR02CU002.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uUqL6-0000Wn-Kz; Thu, 26 Jun 2025 17:24:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bteeaA/M0Ts82fN8iPAIPTSn3qWWGXX2oU99fkhnaveKvolYmCgqG8trvddOOR4iG3ynM4DCNNuqi/rJY0bwNtBS8VhnKx/ceb9dqOlRACVFvQ5wXOH78dOXIeyUQKJKDMmwYxDLwDZ0+yIbYVOw8xcX3lbpDAW6vHAi/LQOy3NiliMl/l6uY2E0VViHyGKBJd3EV06ll0ZseCis1y5/aNJrgIMxfHEdo9zF14UL022raOnEkNx3ifo53Ja0uXIWYjnGLKCBI+hG3cEfMs6zNgtaXiIvjZNWaMMCqbuj5Nq5gFlaatEwn4atPYraCR/kSSYNDuDVusdm5irSdG/k/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HcQDHSMcmQA+kIgPmzRkbQ4Ow3qAz++6gTRG168eUDY=;
 b=BBxe/if7rM6+98bbIg3E1bmKFJOEPSXziEOLeR4EicXzTB/pqmCMZ2gJv26PdrTiTQ/tYjz2p1TlZTHSixleMouLnZu0mSMnxz1mrJ5O1Uek4O1zeL72ytbh/TQGc/80T6ITotqnp1P5o7NVB4a8QB/Rjnb+mihE+GXihhrXvvQQa3ttNDI96hikvU5JHK0L26gwNv2xUq+n/agjtNozYGivcYtu0vxAjHmyAbVXFQiKYA/YYnAT9X0fSJNHByk2wTdmkpG5B03Nntr3DLpmAH/SoKFmKm+yMeFd4oQWgZ+GC+1N/74VNRDb3CuwiZbiIotVsJzRJV4cRQ5tk4uQsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HcQDHSMcmQA+kIgPmzRkbQ4Ow3qAz++6gTRG168eUDY=;
 b=Nwj3B1p6jM2ozNFfU9sHwf9tjbzR/2LrTlSRpp775w+v6QOOilXyazwO4KmgqIEShNS7B4VrOfWYIumZwHndWwpl4Xkni/ODHBq16+IAxR3PaJqPROofaGCjWYyZV9cx65DRblr0r+TmaDIziLV1ZGBd2PCeJaU8SirGLEXPkqthNeyY6ptFjjNQyKkX0fipOz7TdJU1N0JcpI58ikxBC6WYo0W9f7+R9+TSN7n+GlPs0vbD/1+/Y7qD8qhwSxkzVqUFSM5JgccLjaslPkSqHO8QlgCIKT+rc0fF2lRcagbGVmBu9UXl2iYpRv76ShLJkIC1X1nzJ6HOVaooQmkJ0Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by TY0PR06MB5610.apcprd06.prod.outlook.com (2603:1096:400:328::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.18; Thu, 26 Jun
 2025 17:10:29 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::8c74:6703:81f7:9535]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::8c74:6703:81f7:9535%7]) with mapi id 15.20.8857.026; Thu, 26 Jun 2025
 17:10:29 +0000
To: axboe@kernel.dk, aivazian.tigran@gmail.com, viro@zeniv.linux.org.uk,
 brauner@kernel.org, jack@suse.cz, linkinjeon@kernel.org,
 sj1557.seo@samsung.com, yuezhang.mo@sony.com, slava@dubeyko.com,
 glaubitz@physik.fu-berlin.de, frank.li@vivo.com, shaggy@kernel.org,
 konishi.ryusuke@gmail.com, almaz.alexandrovich@paragon-software.com,
 me@bobcopeland.com, willy@infradead.org, josef@toxicpanda.com,
 kovalev@altlinux.org, dave@stgolabs.net, mhocko@suse.com,
 chentaotao@didiglobal.com
Date: Thu, 26 Jun 2025 11:30:23 -0600
Message-Id: <20250626173023.2702554-5-frank.li@vivo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250626173023.2702554-1-frank.li@vivo.com>
References: <20250626173023.2702554-1-frank.li@vivo.com>
X-ClientProxiedBy: SGXP274CA0008.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::20)
 To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|TY0PR06MB5610:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a4d399f-c0bd-4e3a-1869-08ddb4d45a10
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|52116014|1800799024|38350700014|921020; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6WSNU7/QfXF7lewmV0vPUN+rzUPaE9x84hdfxl38fcpliYhW2STe0YSJkaoX?=
 =?us-ascii?Q?rcuzcZoHILjSE8TkzrVj9Ufko047dv0Mqk4JIQEvothNcLc3l7fosEOAsBL0?=
 =?us-ascii?Q?+z1RgznEgH8L5Sm3A1NF1pgt7gTeMkfQ/kHowFgKbY4IG/45YL1fmZgHfUbO?=
 =?us-ascii?Q?mIdtFwOvYfmgqkifCumYIyDEK3bJiZiYjmmrV7I5OuGiX1zeEli6LHQuJn/f?=
 =?us-ascii?Q?IVViSyL9+aIGZUOD0CodAOHJ8/RHKMRPI48nVExUXaGy/attvK5OSpD7yxTt?=
 =?us-ascii?Q?u9VLczXMd5Qv4Kp+wfCTh30TABtRRLsk0KS5CDQ8qXAY0wVjumBs+a/Trq0u?=
 =?us-ascii?Q?r4gJb2P3l60kEG38L2MU1R0fiT8Dy0HgaV/CZnQdYsEGYiFkhJwPI/C3Zaro?=
 =?us-ascii?Q?r6b2ikv1iVnIs2EaVfUtOCq28LirOgldNB/EcV3LMNd43v590YS0KXtHIK+P?=
 =?us-ascii?Q?uDpaBwRvLgxBHvwUwKRpSE3cr3WKo3UnRj1iarOHJTQO9YX8lwQ2rAgg41Wf?=
 =?us-ascii?Q?4aP176wRZvewA2zfPSQOoRYnG04I7mlrNbFHWV147hhAPwqCZLOFo+p9scJ4?=
 =?us-ascii?Q?utRRjWvgdvycyDRqXWmt93KRha0Akfg19hKalUn1kpe6Y81AErcN9hxhXN0v?=
 =?us-ascii?Q?sBT2QHBkcxaCQaznydCln4xlpW4WeKWmdSY/J/kF7KQ2X8HtMwbwpEEkpCie?=
 =?us-ascii?Q?q+scZhoWg3xb7ClS6Qtlw56n61+IbEee9TEPWnwhktFSvDCADSNfYKYj3M7G?=
 =?us-ascii?Q?glSKnmdUyFJtsjn0voJFNKmhiHdMD8bvGlIRgWsEscGndM6uhFHmgrZIPaiJ?=
 =?us-ascii?Q?SoGHP7BUJ8WJFNSvc4sLHIYk8E5HClhcjdj71WnjE3u+SqkhHpYDyA6R/9j4?=
 =?us-ascii?Q?lObriIhNlDStDrtykTlwdvysc/CtWcb6tm0s/ZFxeerMFlZY5uOXpjn2QOv+?=
 =?us-ascii?Q?01Aa1zlPk0dq/jdwoQiDtjbd9KsieP+cv0waIaUV4ErwRZ6pqcw3Y2rBWef8?=
 =?us-ascii?Q?K835UpAjt5btCbyWc7k6e6pn0AYtvSh9X+FLWIXF88UgzQmFpP5Icc/FEEpP?=
 =?us-ascii?Q?7X9I5ZfZyvc6/WOQ17JDj8ZJQk3F/58WeuoelMHHObuA74c+M9Lrm5gGiS2j?=
 =?us-ascii?Q?qDlghTY6Eb/Sc6puI8VozIGkvd8UajLtlHPZTTWYNeyUuUOOte2Qs4tuRz/L?=
 =?us-ascii?Q?aS/u3asc5aM9QxkPu7HN4K7f0icIrBjGNeuw67wK9j0Y6Wvj4ce3QbhfFQd+?=
 =?us-ascii?Q?i2WK2xtuWyvusrCLwx3Y5rSJPRcefQEzAR+LEZ+dtxfounNhwj66GBktGHfz?=
 =?us-ascii?Q?hPveIzexDoVgSvRXIyrkzUrSlenPWC2mdT0+bW0w9HHiG5O9UtRT6PapMWah?=
 =?us-ascii?Q?FXwvfvkoYZ5Ti8SIDFbP/IeMk13MDqJXw01ZIyeWLZUYql9aI03v+oPPztJ2?=
 =?us-ascii?Q?H49lFVxEo2xX7az9G7Mv+lz3oQ0kJegwGSJUPMMU2zJHIKmgOOEFId0SgDQw?=
 =?us-ascii?Q?uXnhBVlGxyZ76vQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SEZPR06MB5269.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(52116014)(1800799024)(38350700014)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?e1qusTXUtbyINs7s1tkhZqJE/zM3/oDS+yi7ypFEUrkCk6qHkayqjHXEtFF7?=
 =?us-ascii?Q?12+5IUG4OCT56PKpRz9DwO+7+V5ebhyx/iUuTzJA2WvUc+yBd5b0g/RjkC1c?=
 =?us-ascii?Q?6fuZiYwl7lYQJKog8hSM4WPi9C5wGq7f6UIb7pc/GMZs7flkSJvXMpkyGG1H?=
 =?us-ascii?Q?7/thqU2svvToC6ev1M9VO/4J5IkXijbj1oWvQcad7FttFoVeLKzsHfN2tmDc?=
 =?us-ascii?Q?hCeyQmvN3ZBvFJ+lG8/IkyG3JDixJoqb1WGDaJpOWLThC/F9YXDQO17Vb8QH?=
 =?us-ascii?Q?JFl7p163qQO61HVcEFGoioMSGE9LtmG6eR3/eulRA46cGvKqxaSArxRigOJ3?=
 =?us-ascii?Q?MsQR9WgRwh7rTwAo8xme42V3XA+T/GwcQCY+nLyHRV1FnSO/nsXqFJRsRO4G?=
 =?us-ascii?Q?7/msAotHlhNSppQaxpEJ9y/HupQb+SL/Z+Hw/6m+Iy/qggoo43/cyBGgCnJM?=
 =?us-ascii?Q?mcsJo2sFoX4zUScSQPPybx+QZrwmhH4mVYSYkc1+JQET9CUq3rXh513CfuSJ?=
 =?us-ascii?Q?YE7D/jDZnyRAUiU2gmahkzyGr5/yslZbI7HWNxtRyDsfe0sWRE8ICARNG83M?=
 =?us-ascii?Q?tO7AWTOeLcyRbnUB6PZDOryRMYEcL/ArJxTslo0mubvmw8s3heQZ0roRTY2S?=
 =?us-ascii?Q?PZmXLiKTNc1tPoXDXMthZUHyOQ3lPARw+kuLvY1ulgAPvseQqKlsbf0mSnhv?=
 =?us-ascii?Q?t6rwPgIqtHc0p50obd7+oA8cxPAGBsBFJu7xe5ZcOmze4WbkFj4967V04BkC?=
 =?us-ascii?Q?1tBneWKiAPNQuWKdMWED9+bl3fLd6C0MmFjI3mLQwgiKUILnQMRC/TO2Wlek?=
 =?us-ascii?Q?l3XjrKBcY7rJzA6i1wE5m0z8j0NCZ4cavfR3b+1mk1lhN8NvtE1MXjmhk9xM?=
 =?us-ascii?Q?02nwYRh64nO5LE3p8j9uQ1t5Y/lCTpyx0ftnQBTPdgLvpnuw12A3ah5KP2IL?=
 =?us-ascii?Q?jQyMwMkCqGn/D6ziFauygM0UYXZ1JueidSWLCZm44Q50jjuNkZZ9x1XK+gCt?=
 =?us-ascii?Q?6VHYU7MckqrbEqEgxfmNeOYLHson40k23C23509vY7xZZ7qhAzpjMyjpm7w3?=
 =?us-ascii?Q?HyedqMwBkQMq12mOAOyygxDxR07zp+Lg6hz4HIrW3xYt3ORMdUYUw5QQ/fKP?=
 =?us-ascii?Q?5XWcSwZHSYg+HteNZ1IE8GC+rYBAlNOxFKzduJsyRGt6ODthY58n46Kmi2Dg?=
 =?us-ascii?Q?k251j0CIuGvQCyaBUkgLzFDfzXxI97rV8p6h3/EdnUMTxzgX6WhTSmLinTp7?=
 =?us-ascii?Q?ZKfliViN31tb4VITtCGjr91+2t+0zvJboJNyloLzNMsYlbPZmL4/MPgh2Kfc?=
 =?us-ascii?Q?Wa0NyARSVf3nKhHDpwOTJwJjiYtA88kuuy3ScrGc05rByyLCSURcWDSnRytO?=
 =?us-ascii?Q?BNBboSf3+/eTGIFxvqtLWMcnATiJVA6X4VbD/A32Kg8MCtBVl5y9ppmHpWrt?=
 =?us-ascii?Q?/O2wcqUDjTq8YjAHmvBIzJBH2FRZolHw/HjYjxnxaX4hhtqbkZO7UTOw/sLD?=
 =?us-ascii?Q?cI4Y3TEutcaVpSPc+FQ+URKouY9ovaEfnJFo57RW6YkUiYB/Rpc1VjqYwVI8?=
 =?us-ascii?Q?dOZ1NNSHEfg1HkEovHZHrie76bz07I3AXzfTZJT3?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a4d399f-c0bd-4e3a-1869-08ddb4d45a10
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 17:10:29.6273 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IeOII528DvjaQorOWbv5t+tVdhuaOx2GbPHm1MdxMNusgHR8eEC49gVnEdolI/Ao2WHqB0aTEVxg+5ZwRVDLXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB5610
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Now cont_write_begin() support DONTCACHE mode,
 let's set FOP_DONTCACHE
 flag to enable uncached buffer io support for hfs. Signed-off-by: Yangtao
 Li <frank.li@vivo.com> --- fs/hfs/inode.c | 1 + 1 file changed, 1 insertion(+)
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [40.107.75.71 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.71 listed in wl.mailspike.net]
X-Headers-End: 1uUqL6-0000Wn-Kz
Subject: [Jfs-discussion] [PATCH 4/4] hfs: enable uncached buffer io support
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
From: Yangtao Li via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Yangtao Li <frank.li@vivo.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-nilfs@vger.kernel.org,
 ntfs3@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 bpf@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Now cont_write_begin() support DONTCACHE mode, let's set FOP_DONTCACHE
flag to enable uncached buffer io support for hfs.

Signed-off-by: Yangtao Li <frank.li@vivo.com>
---
 fs/hfs/inode.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/hfs/inode.c b/fs/hfs/inode.c
index 8409e4412366..a62f45e9745d 100644
--- a/fs/hfs/inode.c
+++ b/fs/hfs/inode.c
@@ -695,6 +695,7 @@ static const struct file_operations hfs_file_operations = {
 	.fsync		= hfs_file_fsync,
 	.open		= hfs_file_open,
 	.release	= hfs_file_release,
+	.fop_flags	= FOP_DONTCACHE,
 };
 
 static const struct inode_operations hfs_file_inode_operations = {
-- 
2.48.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
