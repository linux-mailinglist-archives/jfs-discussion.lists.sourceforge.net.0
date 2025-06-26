Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4753FAEA444
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Jun 2025 19:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yUwoGwjcR7aA45H9J6BLP4oty4CGngYUh+v07dCylro=; b=eNAwa51zMj5UAAGRl0WFQJC2GU
	eKZa1whiMbzQDjzIZYAGvWenPzzDQaOkAzZv9HwUt+qoqVuEIx7+9UI0AnUV6hSk5XB3V71G4Q0XB
	REziLgYGMchzFeXT9ltdpwjErFngLxXdRV/PV2JKlcPVTU+LFzExckySBtHoqS9dt8KA=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uUqD3-0001fK-T9;
	Thu, 26 Jun 2025 17:16:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <frank.li@vivo.com>) id 1uUq7G-0004S2-1Q;
 Thu, 26 Jun 2025 17:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s4S8HgT3dcJ3Y9KF3iZx37Ix39c8W5ovYnMeHSssmTI=; b=mY0/ZKL8jjqniFE/YA3dwmdTT4
 HawoR6ghaJEuat2zWyF54WqKa/Yu+Sj0/w+u0fiANI/PoLqEC6QQLnEfBfLCSnvSZtXwd0lIRaaGV
 5LLIvumIMhAhTxKz4F6lWD9VXsPjMpIbHkfhSOvX4WitFGc1PAKX1Eg3eni3awWTrpO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s4S8HgT3dcJ3Y9KF3iZx37Ix39c8W5ovYnMeHSssmTI=; b=ktMJ7BJlogr/XwmtPfBambRdGA
 XilFhv8YQTSU1UFSt18Z9OvqjJgL30CQWRRM2/ERNXX9emcTTZuVOUnDfeRu3HQGXo5OkN53eWHZu
 QcF1pzHnxYFuc5x8Nl1opo5tkaUEqleD+hbDCpmJfehCgydoXISsc0ZXMDzYaUu1SGq4=;
Received: from mail-japanwestazon11012028.outbound.protection.outlook.com
 ([40.107.75.28] helo=OS8PR02CU002.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uUq7F-0007cQ-LA; Thu, 26 Jun 2025 17:10:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XIp5F4U4GrHKj+55aseqzTM8VfLmVz6P937t0rFrZRnlnwsUPUPUQHxMdufRKSy8CMIPzBsHbUpkccXzIFI33092Bscrzz1ubdhO0EM8rX+9SSr70tAwzoHX+2Gk5amFTxVfwrRszg1XqAvLWrC9u6gRQ/zayQQQGFRXCGMUJDi4aN5/TojgJBZ3/uUbAeDuRQsFeNG40rG4wVnVFK0vedqpKAl+DbhN28JWsUg7wWCqTRvbMAgwzuJjr96H6IgfrcrGIyC7HnrGg0m1KPdd4cjfnC8BOqBxC4Yv2DsmZVLMYTq3u9v/3y5SmTItuRGwTeNpLdLgCwV/9mWQB6zXpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s4S8HgT3dcJ3Y9KF3iZx37Ix39c8W5ovYnMeHSssmTI=;
 b=db4MDsa36w9kk1xdDb83CaAUBfCmK72eRZ8z2BC26vMB1Bh7kI5jdoipOiz89ltP/VG2iNnnFwJGkDeFw0WsiT139+7TWVq5fLABcEuZjbh2ugVB4Hx+pNT0tqeIp55fhIwpnbbk7s6Kbmp/q2EoZBxHZCfEWHipqtTPAnQvK9ll2GdBNdWSBlljUoP5U7P1lCHreg+Kik+u8j/ZPmpm4E9tZout+vqz3as89aClj5wawQNrnYST39+b/u6tyRZFdoXN9z03V4qAXhkQ/mRQ3wX4SOPtnYl5huc1MCs6AUQ8c1yNMQG3MBdJqy1UznBS2WADa0FWPwfh57hEIHiHYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s4S8HgT3dcJ3Y9KF3iZx37Ix39c8W5ovYnMeHSssmTI=;
 b=PoLggKQsURsg95OdIMmq/y66vBExSGbaRFFnKEHScZ+Ew3TmdoXI5xJyZEDpLbgDn0jAmD2X60TsjruQhrzdKq7US+37SxsmTo+umG8sxtlLdG9g6tx+v2DKOdyrmmVYiyjb0fD7laQuumibemBkynq1vLeirXz/lrLEzMXOQQKC1fD6em1Pd6TkV3tjm4YlHnb53gHk1Kd+rbPtUc3QuuW9vP2l8pZiotLvbHZhTpnO0lZtS+QXJkBzUV5UalEEqDMSAEVuZ9dTkl6gYN8v2MrOXRkNCoYdmY9gsGuDE53xL5MrOKzJBmbk986Osu3YEIAPd+MNFvcS0AyJMnsD5A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by TY0PR06MB5610.apcprd06.prod.outlook.com (2603:1096:400:328::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.18; Thu, 26 Jun
 2025 17:10:20 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::8c74:6703:81f7:9535]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::8c74:6703:81f7:9535%7]) with mapi id 15.20.8857.026; Thu, 26 Jun 2025
 17:10:20 +0000
To: axboe@kernel.dk, aivazian.tigran@gmail.com, viro@zeniv.linux.org.uk,
 brauner@kernel.org, jack@suse.cz, linkinjeon@kernel.org,
 sj1557.seo@samsung.com, yuezhang.mo@sony.com, slava@dubeyko.com,
 glaubitz@physik.fu-berlin.de, frank.li@vivo.com, shaggy@kernel.org,
 konishi.ryusuke@gmail.com, almaz.alexandrovich@paragon-software.com,
 me@bobcopeland.com, willy@infradead.org, josef@toxicpanda.com,
 kovalev@altlinux.org, dave@stgolabs.net, mhocko@suse.com,
 chentaotao@didiglobal.com
Date: Thu, 26 Jun 2025 11:30:21 -0600
Message-Id: <20250626173023.2702554-3-frank.li@vivo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250626173023.2702554-1-frank.li@vivo.com>
References: <20250626173023.2702554-1-frank.li@vivo.com>
X-ClientProxiedBy: SGXP274CA0008.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::20)
 To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|TY0PR06MB5610:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d8b0cd6-cb99-42c9-4d11-08ddb4d45452
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|52116014|1800799024|38350700014|921020; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sVlAM32K4Q6+JfM1QzvbNLih/Mntwz4I3Xf/8lcd8FYW6cKmV8yGcze5THGD?=
 =?us-ascii?Q?tPFnIOWpz5fCaAigP0w3uUj3Fn6duPcor7SDXsBOxZTgakcwqnSwC3eEpuWg?=
 =?us-ascii?Q?8ZBlKWNJCZ61JdDI8Bjb/qvqNI4nRHdf5PvuPMNVt8wH8gkdOexRSREuUXZl?=
 =?us-ascii?Q?iAaO3Rytlf8PYTqGavcbv2aJqkrcWgbgCxsvdqiglfdDDgUnJjiuUhVFvDNM?=
 =?us-ascii?Q?Ke8KPXXjfpZryl72M3Qoh7Fsx0ppVJpRYnguwBi+PnkYzoPtuYWhJyUEbgIn?=
 =?us-ascii?Q?d/j8GcNT00tHS5xJgOA2u1jbxSEPeE5xv+wKFE+zFQ8KOcs+7hY4PUDcN7vt?=
 =?us-ascii?Q?G5WKlulmIheQAyhAhjZRvhX32WyAkxdvfKefoD4nihBkvaepGViUNr9A4e2N?=
 =?us-ascii?Q?qwMtbKOrbozS8WGtRq3M+mlCPpa53fjEHsB+YeHxKadYedzYji7X8kmACcAM?=
 =?us-ascii?Q?HPSOgN8CUAq8tu3NoQEp6pDDIQ/59E4Zy+R2BatyxkeLDeJkVYBq5ILNVVde?=
 =?us-ascii?Q?Q2WzjjKl5oDxkVCxRgPNUNua60bJerHM3DU0FDbx9FtarNFTBUs3UWEhTPLY?=
 =?us-ascii?Q?TFJEKUiXL1DMGimdRo3ftu4g9ajW5ZksDPwgMtZ8iuLZspt06mBWOzOiPiO+?=
 =?us-ascii?Q?2dhY3p1rEeQzrNzye3lX4UeETIpZKJm+7AZnlmOJspkUV4ZsLAXd2zabE944?=
 =?us-ascii?Q?DhdCSo1wDs0U9fLobmb87r2/mASPBxRryslonyGjXjTjKBpn031HEu4TyLLB?=
 =?us-ascii?Q?dkCVBQOjy9rXmsbn+Lzfzq5LPnZsKaG7zh2CXAUD+zGgInFqeZsbJ7Yp7j8H?=
 =?us-ascii?Q?1odcnTDkWKKcq4dWoajikp5T0dZ3VNuHSMryUK3OiKyeiyBNLkQlEC+21cVB?=
 =?us-ascii?Q?yn9MTKV8sRII8VC1pK29QtDKpllG+QZCmYUQyEYe7z1aftt1ggmjyFsZdH6i?=
 =?us-ascii?Q?fFxJ3/Iw/zkFE5y2afpSJR9zR/UVd/II4bt79K7B15HG7C0s30oQfE7oh4aL?=
 =?us-ascii?Q?4rrX+sXBUX8NlXKSw8xlKFTRINGY19senl+r90f98IFdNhbCpzP+4upsRU/o?=
 =?us-ascii?Q?Tlfz4Tirr0fwBtnX5RXCe+qR8QY5Pm7GvE9rsMLL6nrNm5cRSM4KOJN2pzS/?=
 =?us-ascii?Q?xVLgQGHUrwrfVMy6lT2UpUspPX2xAZD9+i6uotWxXRlLeqWPXzSmsFGMLrFt?=
 =?us-ascii?Q?TpbmHpCIU61MOMUoFilTG4FNTha8BMDDPOqioWJBsywT9D5Z//aRY2Ypk5Y5?=
 =?us-ascii?Q?tCEOhvYEqyvHVInfBV9P/TGWJFVS2P88GQm5g49IgORfXwcjue/udtDZVYvQ?=
 =?us-ascii?Q?f5syr6YTQgNyTTMd0qUcDdemIcJZyF70IZGTWJnuwHD+p1b4B7fBysZN5nUH?=
 =?us-ascii?Q?KiCwwnS56yWXU/RH848ZE6I8/NFFiTug5ugFe3AVq0GrjCjflM7sOnUVf7uZ?=
 =?us-ascii?Q?J0KCX+M48gw3Npmjndv4RK8aLxwh1r58h+lLIJEIQ9HWSjhGCh6QogXy1eRK?=
 =?us-ascii?Q?N/L8zbKoU+bw6Ho=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SEZPR06MB5269.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(52116014)(1800799024)(38350700014)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2kESWIPHyXWbbtddyd0Z7rxdM2K5hdCV1y9lOYV6xQIgim28QNyTfD9i6KG3?=
 =?us-ascii?Q?zRBLxSCOjeOeZwFfscz74woevTJRi4WwrKRyfnS3NkDraDGdrf4syevtKzGv?=
 =?us-ascii?Q?elD2/CPv0MMsnMNaa1VEE5+YZor0V3U4IGl97xxaF8eO4rBTtUBB8qVluHgz?=
 =?us-ascii?Q?HZz/twFhVMTT0xcEnzu4pbYQMOlQp6ILYgTp7ODRfOrKXL7OZVLYqE8rhn8M?=
 =?us-ascii?Q?6xwcyb0KSp0rMwetTSKrKwzpXh1xjGrrCO+JQLXO38oe0M4x9NlqgiEphg/s?=
 =?us-ascii?Q?gcIMsHB9BfRFcWRT/UAz+HUt0f3/cXE1pdhD0Sj+ijnQZXkyITh+yYW5JvE3?=
 =?us-ascii?Q?kcoaHGLKFSYPW1UQnBPA1kmB22HzwOA4GTcGOg8QaVLlTHOlaio6Ow7medl5?=
 =?us-ascii?Q?ryXuYs2SXNu9pPaZsKaJshpVR56cetHji3FNiPzM4xXM2EuUbWsay+FzWgye?=
 =?us-ascii?Q?V4VOKD/KMEUAADPRa+QGOTisvPhrAolXtXDSTKqkW8t4gYFCoyrcsXO0YkUu?=
 =?us-ascii?Q?6ms2XDcB15/iK0nQl7vQQOSB39sI0rY6ABJEPB/3mjANHPD4hhpsLBctjI6c?=
 =?us-ascii?Q?eeuX20LWQ1HSq8a6ImuOdUpyQPW+hufaPuX7Ozpst3eJIeVanFQ8flHLIkbh?=
 =?us-ascii?Q?gvcyZGLy8ghgTaq0ZQBNH+ZE9kbGkJrOiI0ezcj34Bn4nY5OC32vZTgBKgfT?=
 =?us-ascii?Q?cy1JGSAbWFVe50lzkxeKOW3dZb7RGXX9hz2aU0WyLBEXynvK8E28WN/TbHEx?=
 =?us-ascii?Q?YGdWWlq17ObjBMMZNhxu2ibeo/QDLV1j0vG1WiDX0vi96FetKKTXsnJRMRez?=
 =?us-ascii?Q?rO4pSKQDx5OcsHEzjjK9+kz5HxxWCo50rK8iYc/S2IUZU4y2t5Hl1aRV1pFB?=
 =?us-ascii?Q?PLWCj9eOEnLfniN9usJB6B7W1YkXC3PW471BVAI/8hIhHXoKccvpGH6/0oXr?=
 =?us-ascii?Q?K+/a1AJTCQQLZcOpch9m3HSj0Py4UtwyGBBPhOUXQUmz7Eqk+dM44ipGfUL5?=
 =?us-ascii?Q?D4G95ERA/VAnAoTEF2QkEogyIlGS6EMipk5myFVboLrvPLxKiwXfdDN/hnZQ?=
 =?us-ascii?Q?KThuicsSYJTvMJq35gMX6ZhHTY9ao4/ILpCFk8U5Do7xP26hdnkSjyRvjV7n?=
 =?us-ascii?Q?Y/JVGGYa14CXX9Kpf3Brg4cLIlH558v2xCIzUDQPh4GObBviXTBe5qm0G7oG?=
 =?us-ascii?Q?YKnrc03y3Ykb6IH91jfqOSJ4ag9Fk7+iy9sGg7uHfh/Viv9DV9OLIYJQKPoY?=
 =?us-ascii?Q?nz7RgIAtclYwKzaGj8dKtahSES7w9fVgHRSL3C442Z0+5PuXTcmVZOG8icLW?=
 =?us-ascii?Q?u/ZsIB15KJnahHq+EzVeCLUAiJ2W6LkXIRaIOP+VdZzfgBVlNZZOSo1auT9n?=
 =?us-ascii?Q?7S8box+cJJv9M8S4v+w9PmJJDfDkIbD85wZM91rfs8WqjepMJ3heLV6zuHnh?=
 =?us-ascii?Q?J21XkaN5n2TTx9b2Y605Uw5vE1spV9rbDr/ST8Ko2txDfv4FdFC8Balv6vOV?=
 =?us-ascii?Q?QmDz5fffYfasJQrG3dn3u3+X+zMw5Il22mWNSZ5nO83sNDwnagPqdoqE/yZv?=
 =?us-ascii?Q?s5TqZ5GHQZPWuv+1F0FG6FH5ZxNK4IfDt1/7hNd0?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d8b0cd6-cb99-42c9-4d11-08ddb4d45452
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 17:10:20.0126 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VpKrZHGDcrmY3RH5zJRUY5X7a1MQzwrjNJYhpN1YIGeKahZyqh+JOb9hwC+pUQn8ltYlbjHZGaJDXRO6Vu/hfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB5610
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When iocb flags passes IOCB_DONTCACHE, use FGP_DONTCACHE mode
 to get folio. Signed-off-by: Yangtao Li <frank.li@vivo.com> --- fs/buffer.c
 | 7 +++++-- 1 file changed, 5 insertions(+),
 2 deletions(-) diff --git a/fs/buffer.c
 b/fs/buffer.c index f2b7b30a76ca..0ed80b62feea 100644 --- a/fs/buffer.c +++
 b/fs/buffer.c @@ -2251,11 +2251,14 @@ int block_write_begin(struct kiocb
 *iocb, struct address_spac [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.28 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_SIGNED             Message has a ARC signature
X-Headers-End: 1uUq7F-0007cQ-LA
X-Mailman-Approved-At: Thu, 26 Jun 2025 17:16:24 +0000
Subject: [Jfs-discussion] [PATCH 2/4] fs/buffer: parse IOCB_DONTCACHE flag
 in block_write_begin()
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

When iocb flags passes IOCB_DONTCACHE, use FGP_DONTCACHE mode to get folio.

Signed-off-by: Yangtao Li <frank.li@vivo.com>
---
 fs/buffer.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/fs/buffer.c b/fs/buffer.c
index f2b7b30a76ca..0ed80b62feea 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -2251,11 +2251,14 @@ int block_write_begin(struct kiocb *iocb, struct address_space *mapping, loff_t
 		unsigned len, struct folio **foliop, get_block_t *get_block)
 {
 	pgoff_t index = pos >> PAGE_SHIFT;
+	fgf_t fgp = FGP_WRITEBEGIN;
 	struct folio *folio;
 	int status;
 
-	folio = __filemap_get_folio(mapping, index, FGP_WRITEBEGIN,
-			mapping_gfp_mask(mapping));
+	if (iocb->ki_flags & IOCB_DONTCACHE)
+		fgp |= FGP_DONTCACHE;
+
+	folio = __filemap_get_folio(mapping, index, fgp, mapping_gfp_mask(mapping));
 	if (IS_ERR(folio))
 		return PTR_ERR(folio);
 
-- 
2.48.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
