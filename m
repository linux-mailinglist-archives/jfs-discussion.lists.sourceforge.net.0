Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3843CB3A454
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Aug 2025 17:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CF0POAQAE8vg6SEGGGXpEgWZiMNljRJFPgdbhPMIhiU=; b=IN53XbmaKvuVmW6suK2vyLed+c
	CCrprSHyXrvwqSMd98Ua/Dh8ZG28GPPe5zT6j4MAyyGWSArDfEI1KM0ugJO3FxgGqkER9cqe3sY/L
	+k1xRZKSBHoZ5eWdlXZ4srzvfkK2qSswFUuInTpdlAggJffYbG94NgiDY9IyLYZrQHvg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ureUU-0005Gk-NU;
	Thu, 28 Aug 2025 15:24:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <liaoyuanhong@vivo.com>) id 1uqXNs-0006Lb-RV
 for jfs-discussion@lists.sourceforge.net;
 Mon, 25 Aug 2025 13:37:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ibYwYm6DWdbbC3cHOdNNm+FYoNK3jWJdWlPfkpoXXlI=; b=Tey60pyejtpq+fOJSYPcYSRkkU
 m+yhfqgZ17Gk6hsGOcOBh2iEGRIifb/+YM9ZY/Pk5jSLfeHzvnAQswYfIieDMQHVQ2V5YQWpxiNqv
 qJUiT2ATtn0PjS/EnTITfChZlp/lVTOUkXlAu+mDyo+z48XjgooBTAoFtLSGavQb8jxk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ibYwYm6DWdbbC3cHOdNNm+FYoNK3jWJdWlPfkpoXXlI=; b=Y
 tr8emwL3YEcAIu+r/f2wt6vDOcsdjVkxLgveaIWgTTRIeqPVo+QX/OluWIeQnFrWqwcTlViN3OVE0
 5SSnul5pfAfid7XGlPtUMQgGtRdFJIFIdgTwZo3anVHCc8h+8A9bo+wGBW78kUPm5mXrZTrKvCAkN
 L4sMxh+/3C9Gq9PM=;
Received: from mail-japanwestazon11012011.outbound.protection.outlook.com
 ([40.107.75.11] helo=OS8PR02CU002.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uqXNs-0002vB-6X for jfs-discussion@lists.sourceforge.net;
 Mon, 25 Aug 2025 13:37:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fsjm/p1zDwAcKrr6PE3dNpPqNO/AFYyHfAh1SIpgjawL0a9DpNY6Ez6SuV1/OLFHAvRhCmCGCFZ2aI9u1v4L8M9QN+hyA6zFZan12EmozuJ9LpBa04fy4FIeFbo0nUDv9eRP3Vlrh6Rm3QnsiAUOh5k8BIdEd8zb/pimCh666/KJvVbEx1inyeJgcU+UBC4E12e1qCNWqq7zyqmMKl6DpCzQSMdWFl98knDNd9yljdHX5sHN6QjP5QAlqwnL5+C2zYE2Ei4uV50j34nJhxMmnORTgrKOCJpzKZBpn/7yP/pGZrW/RUsVWhTDdBAwXaMpIutfsqgHowq3YUngHI3wlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ibYwYm6DWdbbC3cHOdNNm+FYoNK3jWJdWlPfkpoXXlI=;
 b=RdskOaU/KxIEZCjtciQdSqA5oOV2OA70S4AyM+PRw00oRrWczRIgdTai1Hd2B4sXd8tngQzNOx0waLiJM6DuV3PFSQtjxyIkC6unHW0ltF69u736LNANt6BAwthWanZD9M1pKpn756WYyQpnFFNwhx3ZNd8eAZgMkuEupA/N9/V8fEv80WnXipUPP2TmTE3sDRgDrO2I6WWnCAUH2F256gv1unbyuWPC3Nq1lN4vgCtP7O89BEJ7z6v6MKg1+9Qazw+TK7wa24kNLG4suDlRQCwEUdbRsA22BNZuUvkRC3U9CoboND7ynEkopGx4nAn6pEXB2yI7lf016/hxKgR+3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ibYwYm6DWdbbC3cHOdNNm+FYoNK3jWJdWlPfkpoXXlI=;
 b=ef+JteHpRWWnMeQj0rFqkPM+OoWYx/EoJgXIrecGfs7qIb2N8pdi6/2FukcZFabb0ngHkwo3gu7RHjeeUxlca51j6ygwNuv+n4zopNhBs7uaUFsuFBslEr+TYcOajlTk5h4mVunfHdSat24e5/xaztxriNAjqyCyyth1bz5lVeacO9XqrBLGlXQBigTkGO8HT0vOagMmCPQjO+2u4814oVgJEnGzLdKkMeuxRZR4CZqY09f9VQa+8W0g1pF1QII1gTrnAs35TAvX1CVltQ+t78uyLyNM86cLBcNhmeAnys/Hr+VFMuQTHrlWJlYYdej9GSrTrMzxtBRbouLi98hLeQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5576.apcprd06.prod.outlook.com (2603:1096:101:c9::14)
 by SEZPR06MB7023.apcprd06.prod.outlook.com (2603:1096:101:1f4::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Mon, 25 Aug
 2025 13:37:01 +0000
Received: from SEZPR06MB5576.apcprd06.prod.outlook.com
 ([fe80::5c0a:2748:6a72:99b6]) by SEZPR06MB5576.apcprd06.prod.outlook.com
 ([fe80::5c0a:2748:6a72:99b6%7]) with mapi id 15.20.9052.019; Mon, 25 Aug 2025
 13:37:01 +0000
To: Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net (open list:JFS FILESYSTEM),
 linux-kernel@vger.kernel.org (open list)
Date: Mon, 25 Aug 2025 21:36:49 +0800
Message-Id: <20250825133651.337691-1-liaoyuanhong@vivo.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: SG2PR01CA0115.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::19) To SEZPR06MB5576.apcprd06.prod.outlook.com
 (2603:1096:101:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5576:EE_|SEZPR06MB7023:EE_
X-MS-Office365-Filtering-Correlation-Id: f70f866b-5e6b-458d-0661-08dde3dc78b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|52116014|1800799024|366016|38350700014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sFnEvLM/vnOgSwhwczdlLZNKURtaRPs8FwYPC0c6n1ZKSjXHJxiOD87DoDmQ?=
 =?us-ascii?Q?WYFTG5fnK1kBfJKvBLDCvJH2jgh3ua15oe3W0RdLp7QM6M/5kK2EgvfzjMQO?=
 =?us-ascii?Q?Fl4oHdVVU2CfxOjwNfOOVBYXnfELrLcRtvlrXgtCIFTA3xpnXuSVyo6uzOa7?=
 =?us-ascii?Q?PtHpxPEVv5qWSrz+k0aiVY6kTkfGTrgoGef6wwNwa2m0w5PFvLdEPSpEO8x9?=
 =?us-ascii?Q?OCJb4pTKltwk33iJ0rI16g0v+KYfG2mHdxI0hEbhFf8clEgU2WLT+EW37tK3?=
 =?us-ascii?Q?Fr7uWepkjwPAQzLobp0Ltz4KIuXlyaUdUjz0eYarIcfOAuq/iY9sm/3XWHXk?=
 =?us-ascii?Q?yR6O4d4CoBdRMxAVuxRZAnTO1RM2NcpscZ99a/rIuFmV58y6RTq6XasWr5Zc?=
 =?us-ascii?Q?MITzUfb3AWpzrLr2iJbKGCwAYmqyu3G6P3TxEHlTdOR1Z7gB2WkUyoriFc2Z?=
 =?us-ascii?Q?aOa+Wq1F6u/+c9ScQO+b/p9eTpaIl+KCMRtdOI6Nw2FQDncyESfIs6n5EeEK?=
 =?us-ascii?Q?x40iGPJMoPaL2uXw13fj0AYeccKx/SDDE4AQ9exIQGZfYfdGlV/VnSukJ3Qh?=
 =?us-ascii?Q?bUoYVSKFlCKxGildajMDHV8g/zNaJOS8Rai3KL9sVtcFh8ZtK55OqAkpW9l2?=
 =?us-ascii?Q?yAKTFYDVcX6bCaXWhzOtyQvNQPiML1P8y4fAhY5esR8Ujew0ODETio9/8RgS?=
 =?us-ascii?Q?lpePK2pSYSwer+a1JDeWp2DNEQr/1D1BWYgje8u8EySoTQTBQ43o9OvtzsRx?=
 =?us-ascii?Q?8SnhoCmVAsRyCO01kKtFzIzUPhxEQQW6aVy1KF17lUVxO/c/0cNwpFzD2Vk5?=
 =?us-ascii?Q?Mo7Zi9+AUvK/GWhZ+5xwaW99TH8oBgPJO1TpKgVAbYrOybi1rgT8H3LCGKaf?=
 =?us-ascii?Q?Ph419OYTaUqYK88rD56YBv8MVSSFP104KTh13/FApQ5LyOZJbVIUJ8sSrnr5?=
 =?us-ascii?Q?c9bgdQomt0By4I+KVHd+CE3329L7HvrLna8Y0vseK7G+M7mAYe1lmVtYJGJ+?=
 =?us-ascii?Q?sE8kBGqJzObxDbKUrDypT3mlFsYOhIuxXzyvTK85jGH9BqEaqHkzNEXt51Jm?=
 =?us-ascii?Q?nvJ79BT10lvubD/sB3+QLjl3QVrihvp2ix91c2/WV5IM8pkJV83M1PJALw4s?=
 =?us-ascii?Q?rM9m9ddHgipqiUpf/f/1OMzvLPbikpf3tO8X1l9nXXqeknrq9O2ZwIvtNFHb?=
 =?us-ascii?Q?LQVwuQ+wq+nOWidMtrNROqatvaDe3OwriIg+VgQH1qFGOrkQzRadaZt1LBCR?=
 =?us-ascii?Q?T0EuPZcDHK2SMLi2OXiWttgyY+0yY6NZE6ZOFkp6scl1ovFfD77SfR0qzHKE?=
 =?us-ascii?Q?AiCq8Lu+KBGRvDCMX9Vfz1iEZCvgESi6zw5bvrvDL6cRZMbMQGlpzwVAezaX?=
 =?us-ascii?Q?GGMdTnfzpzD7iY2QvfOZFFa/j2KiTGjC/T8dri+2kRdIWYeotDtD+poAqoz0?=
 =?us-ascii?Q?izOgKKHdB6hm2hs9J8W9ST1/+p8eBbD0Jc/ccl04X219w79heSiqwg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SEZPR06MB5576.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(52116014)(1800799024)(366016)(38350700014); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0eMJXXw0XB/nSDWnhArAEkndQfJALYS0DkjL9DtSxVaR3P4sE+gUxPdgbf+E?=
 =?us-ascii?Q?4RiYlAz0us8UDtoFnWFcRarwlfnwoPkhRbga4UwXycebis94sXyDgiXoFdyX?=
 =?us-ascii?Q?B+uUjIvsSdT1CfjIrOO0NYVgEfD2WMeTOXuVEGPqeLBk04v3K/44zNyqCmT8?=
 =?us-ascii?Q?B11TFSj0PAHJx1BoGzG669aHKQAkTQCcDjHb7kOdf2u2zsAvXrRwIBN074Tv?=
 =?us-ascii?Q?olMHa0tfnb0oX+34DtDbnvmsY8T0J5AgemSolCpU2LWLCDqGnQ9Ob1BL8ZW/?=
 =?us-ascii?Q?Ey8g7xeHlEtwN8NsFytOrCSsafJ2j6TvUTIqWWNL4vwFNM3JDZIiwMCNrLfh?=
 =?us-ascii?Q?PtzMHVRGI4pN40V89YLFburDGYd5sMtT+q1n4KhZozlRzjtiEEfKVxh0X0ec?=
 =?us-ascii?Q?22EH4ogKPqrdNi+9JOvJHywTaz8oV9A4hv7vmnmwDrFD7yBcSuXX4xmtXcV2?=
 =?us-ascii?Q?Rrea01IIsCjFfB1M61U+8JD/jouUZWRoGeQp+pgCU6agGSyYERkCQX1AtLLk?=
 =?us-ascii?Q?PY+rHpcVziydSOZhYGoj8QLYUEgXRgva7KDNtrKsbCFlAMlKH2+3Rkal4GU+?=
 =?us-ascii?Q?Ys6x/KcouPmuNc6w9UWr5fRohTz0UiSQVkC7q2VH0VmgIgaWhDG95ReaDimc?=
 =?us-ascii?Q?ngmKUQpS4NldQwpI8PH8BCauXjlOyq/Ctp91yQlQcDhrnNFiCEvlEJx9Fk5q?=
 =?us-ascii?Q?FwsebehYyK0DxCsIGloxKKaoojJTvPBr9IOiSH8/xNRvByOhdK8dHNv1x3Cq?=
 =?us-ascii?Q?Xfree23oJ6GU+6TM+M5PmjQ3pLp0Lv+Pm0FcCIRafALavqT+3qhraAaDJabb?=
 =?us-ascii?Q?/c4CpaKqnBQcd1zypUwjZ7GVA9225Bm0E+d3Mh55/QWhxv9ImSEgGftNvDGE?=
 =?us-ascii?Q?gQ6zmQ+6hDO9MZkSBaGg5mM1DjGNQrjzFXAtRIeuEyXl3LFwmLjjIbCYpzFR?=
 =?us-ascii?Q?fP9+2nGAW3pmY/Ov/eHRAfKnhi6iT3VXTuPMWAxVim7UNHvrWQLxJTof5DBk?=
 =?us-ascii?Q?3Oin3tjJR1rXdzxS7QcGAMzT5+nsX/49BcgYzrCaqNx3/9qXzDe/FiLHSlIe?=
 =?us-ascii?Q?4yF9BwW+bAIBgFxfjTm4MPywjYhqZYc2JrpHCLvi9wl1EsMjk6FfvtDu29CC?=
 =?us-ascii?Q?C/+qyZj0EnHoxzAetVwpvIR96LK9a7ttHnnaTJvwfqB7fOtH4SqskRpeVsq9?=
 =?us-ascii?Q?RrCIoLGtS0ks3Irpzts7OikFUzDqkdlb0nNBc34ui+TR/2/D5rnwP6YXd+WQ?=
 =?us-ascii?Q?/4BAGBq1bGwpLAqII9FLt2D3BelOljw4pVuHH57ru6gechzzKefeKxhxzpPc?=
 =?us-ascii?Q?wsQroXil/fdu8ceIepi3xYsbvXLmvv35e/j8uEclsIHcxWanrvWdjrBegza8?=
 =?us-ascii?Q?cilgrnezY7VIdMcCzEs2VulyDZY9mzfT4w4qhwHNAl3Jr5EcPPgZsqThKSiB?=
 =?us-ascii?Q?ry/gtCkouD1+zD4N5za4gliDlN1ahXLBxly9AUq4fwS8DuF/Ajwq2RuE4oBA?=
 =?us-ascii?Q?v5FnK1V4ssFpKDUkaqjL0+zqbB4gjud3zgCL157xvitRkGiLC60pK+Ys+nxP?=
 =?us-ascii?Q?Bi7d58tYGESEkFDpUENt4niaHVMFSKtMkpR5/YgR?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f70f866b-5e6b-458d-0661-08dde3dc78b5
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5576.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2025 13:37:01.5657 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iNnta6FCRx3zUopP9uXKtEY7FgEj8BGHrrUoAT8n9karIYGZx8eBXfhfByunEFEqG+oTNKQXj6W1InDnkAVX6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR06MB7023
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When using &, it's unnecessary to have parentheses afterward.
 Remove redundant parentheses to enhance readability. Signed-off-by: Liao
 Yuanhong <liaoyuanhong@vivo.com> --- fs/jfs/jfs_mount.c | 10 +++++----- 1
 file changed, 5 insertions(+), 5 deletions(-) 
 Content analysis details:   (0.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.11 listed in wl.mailspike.net]
X-Headers-End: 1uqXNs-0002vB-6X
X-Mailman-Approved-At: Thu, 28 Aug 2025 15:24:39 +0000
Subject: [Jfs-discussion] [PATCH] JFS: Remove unnecessary parentheses
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
From: Liao Yuanhong via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Liao Yuanhong <liaoyuanhong@vivo.com>
Cc: Liao Yuanhong <liaoyuanhong@vivo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

When using &, it's unnecessary to have parentheses afterward. Remove
redundant parentheses to enhance readability.

Signed-off-by: Liao Yuanhong <liaoyuanhong@vivo.com>
---
 fs/jfs/jfs_mount.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
index 98f9a432c336..52e6b58c5dbd 100644
--- a/fs/jfs/jfs_mount.c
+++ b/fs/jfs/jfs_mount.c
@@ -325,13 +325,13 @@ static int chkSuper(struct super_block *sb)
 	if ((j_sb->s_flag & cpu_to_le32(JFS_BAD_SAIT)) !=
 	    cpu_to_le32(JFS_BAD_SAIT)) {
 		expected_AIM_bytesize = 2 * PSIZE;
-		AIM_bytesize = lengthPXD(&(j_sb->s_aim2)) * bsize;
+		AIM_bytesize = lengthPXD(&j_sb->s_aim2) * bsize;
 		expected_AIT_bytesize = 4 * PSIZE;
-		AIT_bytesize = lengthPXD(&(j_sb->s_ait2)) * bsize;
-		AIM_byte_addr = addressPXD(&(j_sb->s_aim2)) * bsize;
-		AIT_byte_addr = addressPXD(&(j_sb->s_ait2)) * bsize;
+		AIT_bytesize = lengthPXD(&j_sb->s_ait2) * bsize;
+		AIM_byte_addr = addressPXD(&j_sb->s_aim2) * bsize;
+		AIT_byte_addr = addressPXD(&j_sb->s_ait2) * bsize;
 		byte_addr_diff0 = AIT_byte_addr - AIM_byte_addr;
-		fsckwsp_addr = addressPXD(&(j_sb->s_fsckpxd)) * bsize;
+		fsckwsp_addr = addressPXD(&j_sb->s_fsckpxd) * bsize;
 		byte_addr_diff1 = fsckwsp_addr - AIT_byte_addr;
 		if ((AIM_bytesize != expected_AIM_bytesize) ||
 		    (AIT_bytesize != expected_AIT_bytesize) ||
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
