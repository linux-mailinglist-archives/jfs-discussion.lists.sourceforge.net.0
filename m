Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BE9AEA445
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Jun 2025 19:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cd17s0NMYYHvHc+IZDITzCwzMXpBveEpwiYCkkY7VlA=; b=Zcdke/xs8fcyo+rrdh1pLM2C5I
	3HtMnjgGlu9uwPH5eQJjOqkIa8QHHskYUrwho9y3Ln9cab59hx9OJOnCCWGYzfg2hH8pv8CDJ4nR9
	Yh/ybxQ9GnxJFbjPxga0oOwgLTGiBcmeOrpT5LnVDgtTfxtrS0h9lYJKCCHm98o7Kd7I=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uUqD4-0001fa-GW;
	Thu, 26 Jun 2025 17:16:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <frank.li@vivo.com>) id 1uUq7G-00016l-K8;
 Thu, 26 Jun 2025 17:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dBL/LgXL65dskK1IRduIL0vDv6ff6aBttOrsCCIBypc=; b=Z8goVKFalr9Uh1i+Kol5nDEaM2
 RryYK5DG8Tkp4M7+cRLufHG7HTrSWJc5hNdfa5dm3lLMz3nh64BoHbUU7M4Tz+VpE7tHUKawxtFrI
 5HHgLqQY/3QIsKvFppq+my+UHOd1CarPAUEzmF4/GvmrQKBAWpxnTKHREazpdLr14bpY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dBL/LgXL65dskK1IRduIL0vDv6ff6aBttOrsCCIBypc=; b=S/+mNo0ZCAJTFBf67rnwb8Wv+3
 MJvYCCB7/qFm2hRZ/QUvzKbypm8+M6cmq5R4GOL49A+n+F+2J92MzFeBHMQgoFGqe847Bz9M38P0b
 TvJaXwncwz/V/8GgIf6BC+FpfZbNEL1XbCVMOWrJYqJlQF3wiPeQCxVGH81StHOLTSPQ=;
Received: from mail-japanwestazon11012028.outbound.protection.outlook.com
 ([40.107.75.28] helo=OS8PR02CU002.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uUq7G-0007cQ-8k; Thu, 26 Jun 2025 17:10:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BWH7NtuFT3SyN4tDuLQC177uRJ1DqG1zod+6zX2M0+Zvatusz9aLgQ3JrVWfsowI+gPH9d2G+BW6mCQAYMtMs75zzemIzbNflYypV3G+HPSKkzr/e1ciQbyMFVgbWTmlr+z46Pkk1G69fJ1+nmRaCg3b5pOlAStbyDh/QuzU+TlcGQwzp/qHZ9dDNQrZwjzD0ZEHU5d6ZLwUWk1VTt/H66oqb1SJ1Tra8aE/jZF8Gfxnqye/ht9XiEttNRUQWeaA/CNErXiebRuSMFfHzaX1wizm/9f8Q6+DpOOSSp8CJiCg69L1N8Cju6rpt4wZBseKAxG0r21cqrOVl4foFQ2btw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dBL/LgXL65dskK1IRduIL0vDv6ff6aBttOrsCCIBypc=;
 b=k591/qYNa+6rAvSKvQQKSv8o+WrVyMLCJrAfYiH+xzBFGIH5Bsa4iA7LPS4OmmUpsHMSHaA90DZgI4g+m/tS0HF+1wmZm2ywuMw/Z1DOk7qlwTmt7P5SuN59smLLzzrruJ6RvDQO0S+1dSjOUoxGA42lCIynQUiz2DI4oFyKxlGrauIFkeXHNiH1gS2hCtjU6/hCRkX5c6WGjOY2j58LSyaubQd1dwBIzBkDCRIqkMkShmIu8N3vEFjPGwzRcQ85iyYrVPdIVI1tWtLtihXYMcF3hbO4NFifq0TqUDZCPogp8Dwz8t6KN0Xszq+A8PKkfxiLlLPzyNK3NrQFAp6jqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dBL/LgXL65dskK1IRduIL0vDv6ff6aBttOrsCCIBypc=;
 b=IgSGDFZv2MnwivML3SnLqkoZyFhD0+8l1uxQ3GfeH9CHZT6sY4haDz41H0TrXrYawBUAnn/46D/8eCJKK4KD1HWKodBDmdqhocMTc5DmcIqGGPXYcsALBpV5492AO5XuZN13w+jSnhDKovQ2sRkFA92gDwn9d9LpoYC++brQtEvCO1W2uzP5OrnIUaFBlZU5HKc2Nz+9O3pWJV5Ya9tyVUlpvIZ6Sw6PH3sT+YePmxonPPYlh9BE9yHg+VwQatQ/mPTq40pm7lWt0HSNCYY6LoBP1Z/h7VsjgIJYJa6IHUF2F7AyuuBozyCgfoyGcIr/ZqePmKy9XNqhvslpTy+iyg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by TY0PR06MB5610.apcprd06.prod.outlook.com (2603:1096:400:328::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.18; Thu, 26 Jun
 2025 17:10:24 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::8c74:6703:81f7:9535]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::8c74:6703:81f7:9535%7]) with mapi id 15.20.8857.026; Thu, 26 Jun 2025
 17:10:24 +0000
To: axboe@kernel.dk, aivazian.tigran@gmail.com, viro@zeniv.linux.org.uk,
 brauner@kernel.org, jack@suse.cz, linkinjeon@kernel.org,
 sj1557.seo@samsung.com, yuezhang.mo@sony.com, slava@dubeyko.com,
 glaubitz@physik.fu-berlin.de, frank.li@vivo.com, shaggy@kernel.org,
 konishi.ryusuke@gmail.com, almaz.alexandrovich@paragon-software.com,
 me@bobcopeland.com, willy@infradead.org, josef@toxicpanda.com,
 kovalev@altlinux.org, dave@stgolabs.net, mhocko@suse.com,
 chentaotao@didiglobal.com
Date: Thu, 26 Jun 2025 11:30:22 -0600
Message-Id: <20250626173023.2702554-4-frank.li@vivo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250626173023.2702554-1-frank.li@vivo.com>
References: <20250626173023.2702554-1-frank.li@vivo.com>
X-ClientProxiedBy: SGXP274CA0008.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::20)
 To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|TY0PR06MB5610:EE_
X-MS-Office365-Filtering-Correlation-Id: 27efdec5-c9fc-4d16-7e1b-08ddb4d45738
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|52116014|1800799024|38350700014|921020; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6yL+kbB+wjLir4PNAGolJNIfocoEyCXJ646illY08+isssSB23s8JpaB1Xxp?=
 =?us-ascii?Q?e+HkcrYkJfSpMFwtZ/F9ByyE3KL4NuP9NnM3mnIKO1t3nFVi4AcKHShgz2Xp?=
 =?us-ascii?Q?2E0xl+IF6hmtuuZBrA3TokdWucCsUBzukcpctzA0zmRIY7G9heWW2rsz5qw3?=
 =?us-ascii?Q?w1Qy/ynnk6tAaySMxD/V0K3YroVdoc/HsnX4jc9BiPxCQA0NQJ8atjwPSIJG?=
 =?us-ascii?Q?D9ix4H4rK0ihmkaBTzOEUerjgTaVPy1MoBHo6qT2yi6nNkA5J2WfAucajSHn?=
 =?us-ascii?Q?SLRi343b1xR1KMxS52/bVovkYhdBb64jS6dnS+fBwpQ6fucXxe49STgQ/OSP?=
 =?us-ascii?Q?y6l15zfoAL4d6xjuiO2Nx/3lxVX82MMSGAak+1klsvfTVSqLnv8d8/FiyssK?=
 =?us-ascii?Q?JcicGHbC38U3BjD2NWTjxpXT0aEEnST3EVzBczzMIGRdX7f58GzIU217l5Kg?=
 =?us-ascii?Q?24d5OKBjW4jGXkgl2rOwt1BL4W9DqQRHrFpG8Mh2q1B1YHP10rLLuAJLoLVd?=
 =?us-ascii?Q?Oz31mMpjuCJyACsXwj8gE4lvdvV5sW3zJZ67n2NcSO7xFztceTr8NZvTu5AW?=
 =?us-ascii?Q?ptqALQjrxj3SdD47ELZqNp7Nko/jDyrBU9Qefh4wUdTZ/xCVOYXFnZdMFZxa?=
 =?us-ascii?Q?mpduUlEjc2I3emhcp705OvUJ3cPVfTLaf78dl3zxrUxL0AJEQmLa+isWzydO?=
 =?us-ascii?Q?oCmg8IDB334qYHCrQhP0DjzorwA9GqO78LqVig06/Kfv53H3xyRMuQlPo+18?=
 =?us-ascii?Q?ro3ZAtW48wsDF98GAgazu7vyZ8NOEEa5AL3f8NXFiulTkC3UQ1M62CwKhA+A?=
 =?us-ascii?Q?4z59WdTPYuAU50MmHgTGd0PQHbq3pIZaadQnR7HeVEqhIGWJV3OUWDFlrNX/?=
 =?us-ascii?Q?gLMxwgFtM5c0wPyIss5pKfbeSoql3K/c95OOQ2BaCcFTVlb9W/G7M7f7zYeM?=
 =?us-ascii?Q?YX7wZpymIS6uOVsTjoCmwvAkZY885KnWKIc5CAlvloIc/o/8vhqHor+1vJNJ?=
 =?us-ascii?Q?zm39va5KaoZrM2/4TeZTdIpdDoWiGf6BmNPWEjAmBOppG6U3EWKN1fmrLOHP?=
 =?us-ascii?Q?ovuckXPAi18zeD1urYYRS5D880HkN673jxvum0+NK/4BfvYYM2mAcY8sY5EL?=
 =?us-ascii?Q?BgjuJs05ft507R9KdR/Nr7cS9t8Ap8qsvOhIhHMmJy+0rYYplsFLptWFragt?=
 =?us-ascii?Q?UQHhFVViiQl/aMUiyz2ewbA2TzxF7Jv8YWHq29WaA8IjLmGMN/TPnMnXaxGp?=
 =?us-ascii?Q?eozQ2tV5faiK7gziVwFN+prE3LJvOhIIeAwnEKRb6Rf8x0JCHL3LOFdiPo6i?=
 =?us-ascii?Q?Jte08TlI1SEr/0ueijTQqpraAn74ncctrlK8j8sDXf6KUJwOugYiTgXnndyy?=
 =?us-ascii?Q?l9I+29f4rbjN3a2HOQUaQ2BXiQLZzD/pQPtqfNjYbhs7xmsxN9WfQrSEPdCG?=
 =?us-ascii?Q?l2nHH6wRj9h8QJ86Q3eINXgA3K2pSTcrDOGWMQzM8a2PTKEO7O3jE4wlxWSf?=
 =?us-ascii?Q?W+LVv1Z6KvIB7S4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SEZPR06MB5269.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(52116014)(1800799024)(38350700014)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3BVLTisrGQsjPXHDa/+sit3tHS2N595xVcd3xwAznsUz4lw+oJ7wDjfgwFRU?=
 =?us-ascii?Q?DxZHrnDg+aObiSfz3dieoStbsltjlnL5J9WM9PZQox4ioSN5nlmkqHchwQ1/?=
 =?us-ascii?Q?ZdN143uuYF7hmRyO9xly276pnc8hylTap+j6h+dgzTvhcI44qiBgTLy/lkMG?=
 =?us-ascii?Q?ravuymbj/Ts7XVV5bOM5PVxuygkxjt4FDfc322qahuNdm3tGwowbUwioxTkb?=
 =?us-ascii?Q?H8Vxe37tPrspW7xYIixa7lKwTMU1uOhQyq4V7GSKRmE5gVYAykeIfjufPVXU?=
 =?us-ascii?Q?QmWnYw2CklhfG0isTBYGz8r0xVwSpNP3xz5cCWVwYiYIgre94ASfmL5WQHo8?=
 =?us-ascii?Q?6STiRTk6hY9ozT1F9BZqrq/u4wYAFCZdRX9tgMIzmvHZzP8TjMd/yxTxSWbX?=
 =?us-ascii?Q?6bo3tWDJ8r3BQfGHW/6FTliJ+o51Ud3YnkXAKBTj3W7quE3uvY+koa3RuSpa?=
 =?us-ascii?Q?pOsMmN/OulDcv9hRwJ91+T82rCqG7CPQJQMnAuT269a1o3KzRB9FXUp8xgnN?=
 =?us-ascii?Q?8ZlN6UcndPSx4eqHNKu7WmgyKms1swRTg90D24b0So4QWbfO0JOWqUThN+OP?=
 =?us-ascii?Q?2hWKn+C/+rupAN+bBSTUWeKLvupf+izR6V0dI68W7djv4rf0EUlHI/2K8O9s?=
 =?us-ascii?Q?KMWySRYem8GT1v9mjaQbOa0/27yU1h0b0UFdgRVWFmZZmuQk7uDoSbyWdilC?=
 =?us-ascii?Q?HmSygLa0/TT5uM0su151SsyiDNRvD52NwFpmGRtAipfhZs7GMq0srnD7x/zt?=
 =?us-ascii?Q?zf69IL1fI/yymZXvzSygIRmoQrQCinTqi5kq/RtBLzzSxlbfEBb6RGHwn9qP?=
 =?us-ascii?Q?eaes65UjiscuBOe+J5l+9DSS2K0h/Em/Nmyn/Xg8hQSFnhHV0zGSiS7WON9o?=
 =?us-ascii?Q?qgsxKdO3UDEJplZTZ+K5MMzgcQjkeMOJ/uJ9HAS/zhvjBiwC6pn7nTISWbCh?=
 =?us-ascii?Q?OVtmORChs/Az5EAdVTSR4E6bMdN3jB6VCO7ecDjDM33H90S0v3jRGJpaysOh?=
 =?us-ascii?Q?YKcAEyWIqxEhux/Mzz9cEvqzFSrU9uh3QdXTPzgpJwBBY9ei5tYeVhAEECPh?=
 =?us-ascii?Q?kEAWXaBjWD5/t5b6iJ3K/qm16vkArlEOEptTT+e+vUVPXBGKYS+wHFCFHdz3?=
 =?us-ascii?Q?IkHBHsYAJmLxEDiV7Cj/EWXcxT62K5jhky72/3w6xhIHIzLfPUON0x6VC9u9?=
 =?us-ascii?Q?qeBpVVmNvZtQ4CZ+3+yIXbqJ6adhK0Bfe+0LWNRcuTHNfJi6g1fOG4ANSusH?=
 =?us-ascii?Q?2myNcSgHqLx30pNQwfJe0fsfKVbG26twbo53Eg2z+O9QETMh7gaI4H+wVIc8?=
 =?us-ascii?Q?WF/ASZHPWik773Otnjh1YzoVEakbeiS418QhM+8ApsANkqZuhxvy2le/+L0i?=
 =?us-ascii?Q?zIR5aBZQSS2XhSfxhiHm5+GqTCg7OTOQSJT0JKCivhY3X1t6yByuy2yBxjFw?=
 =?us-ascii?Q?NMpAvHN9mDVdgbo7al3LitO5k1T8Ppo7M8r3zHX3KNVezjvVuai0aHc2inED?=
 =?us-ascii?Q?v5KI3ntL6iWf6ynhwoPEieR4MOXq7D+mq8TLfHjqSrIhIJfDMH4NnFUrTP/+?=
 =?us-ascii?Q?/GPWQElzdybhsfDedbvajZ2OpiZl4sh7gPfJx0Un?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27efdec5-c9fc-4d16-7e1b-08ddb4d45738
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 17:10:24.8114 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vJixQcLY1QuSKuQLoq5IejOzgVnRZOyTSZwSUUVEImW8tOZHAZWWbiEsW5q4C6cExS10aSjcTMm5NOCPMJYnBA==
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
 flag to enable uncached buffer io support for hfsplus. Signed-off-by: Yangtao
 Li <frank.li@vivo.com> --- fs/hfsplus/inode.c | 1 + 1 file changed,
 1 insertion(+)
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.28 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
X-Headers-End: 1uUq7G-0007cQ-8k
X-Mailman-Approved-At: Thu, 26 Jun 2025 17:16:24 +0000
Subject: [Jfs-discussion] [PATCH 3/4] hfsplus: enable uncached buffer io
 support
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
flag to enable uncached buffer io support for hfsplus.

Signed-off-by: Yangtao Li <frank.li@vivo.com>
---
 fs/hfsplus/inode.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/hfsplus/inode.c b/fs/hfsplus/inode.c
index 26cc150856b9..b790ffe92019 100644
--- a/fs/hfsplus/inode.c
+++ b/fs/hfsplus/inode.c
@@ -372,6 +372,7 @@ static const struct file_operations hfsplus_file_operations = {
 	.open		= hfsplus_file_open,
 	.release	= hfsplus_file_release,
 	.unlocked_ioctl = hfsplus_ioctl,
+	.fop_flags	= FOP_DONTCACHE,
 };
 
 struct inode *hfsplus_new_inode(struct super_block *sb, struct inode *dir,
-- 
2.48.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
