Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5E4A15210
	for <lists+jfs-discussion@lfdr.de>; Fri, 17 Jan 2025 15:45:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tYnaV-0001T7-1G;
	Fri, 17 Jan 2025 14:44:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kangyan91@outlook.com>) id 1tYj7V-0006Es-TT
 for jfs-discussion@lists.sourceforge.net;
 Fri, 17 Jan 2025 09:58:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qA7FX4oKuOsUSI7R2MNI6+eKYhKAji1lfKSuCwhbEg4=; b=OPyYVqPkqwvMWgJokd+hn25mYX
 kffzGNWyYiSqMrIc4OU2mSeA1Dr/bTk+yUy2gNqwqubRtqisglTIgo2g4rWwEffcJacuZIngD4Y38
 5Gt6xBu38sAvmcoqBnw4bMgSXd3I1gTQzZftqwDV1JhsTGu56TgPy9uuRKKMx8yIySe8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qA7FX4oKuOsUSI7R2MNI6+eKYhKAji1lfKSuCwhbEg4=; b=Q
 r8gBRGiOj4gK0TdeW3cxkbxCKRtGbK4KqII6ltpU7ZqDhSyNE14tS7xZARwr0Zlt5kHT16vMtd1mP
 CXSHkayeUy2WYOVlwRBCuk37HE7r+RjTweAA3yFRNMMr5l69o2eJCN0+1H4hms+ntYoL/L1M0ims1
 334lfZcgYnnEnEXo=;
Received: from mail-sy4aus01olkn2092.outbound.protection.outlook.com
 ([40.92.62.92] helo=AUS01-SY4-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tYj7E-0007hA-Oo for jfs-discussion@lists.sourceforge.net;
 Fri, 17 Jan 2025 09:58:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GZW4U1G2KkOsYrDWsLORNYy2Gl0WrTlwMLsN91YzENz9aX7r8vymapl2toxZ8EkWtguSRO4gvxhdKHx5vkbEuTO9kFZVvk2MgpR5oQseMDJf5Uzh3+Ikj2HjDHdG4WuY1kfgNTGOJYR7H+kppZZ30v/iKoTh8dAQjQoY2Oid1bKl1qbUza3d61ioYJm3ftXCDhMSiAMDjOIl0xUfSr7oEOgmtR0zkwqCyzomC3CEkYEWph2uQYDf5wlMewLr72SWdbsx6iLeAItccv4jid429CSdWG4elNrkK+5VDHZrkSHNcOeyc8nnUQ05QvyXI8Ao7hDFBOLj0DeBWHEtMnyqLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qA7FX4oKuOsUSI7R2MNI6+eKYhKAji1lfKSuCwhbEg4=;
 b=Ja1Cc4gV3TfeGKyex1RMOi+xKHmb0XfXPsRMRJcf2+bA0UWPpi1NYpPr+LgjKqdPD7WcNvexS77GAX11hBSPQYw4UxrkMIPWU4JlTyCody8HH3AOeP+WrcYwDyZ9bLFqFmB5iGUbIUPJsDY8Q6mr+0ZCX6+pZSzL5LacRT2IFjrIwINoSwTA95+x3d5piRcJ/et/dOua7I+CeFpuA7+oM83+v17OCRGGlOr2yQuau+ojpdnDKD5wMmngB+ZR+vU9Z4jThVWLUgv4xgtaEHtImNTOfuR0kfZZC0e5FhLSgh7KBuSA1yYlWEZ8rjbc5BLp5jW4Q7jr/XG9Vcj3Z3Pm+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qA7FX4oKuOsUSI7R2MNI6+eKYhKAji1lfKSuCwhbEg4=;
 b=g4P78g7WNNYZqakumfds4D2wV/AHWWe6TmW4VhvrEnANLJ993CY1AzTCW8x1MrZuYpwPR8/hwDkJEdbtCitqfk8Oj+/ONopCh/PA/hnmzSOFYDPvyTrGSQ+a1m1DyMmeUbeXjiW9NvHq/L0H4g3s4OVZFIO6FcQah65AIoovPiGn6jYjSUbdNaLp1eOeKt5Uy1YvSoSJSmR2H/Cdg2Xli9GCG/6lK/4TeeChbEPu0mSXpY1gXOeLBm5gX9lM3ZbcpyvnjRT+MdZVMnYpVrY4Vaz3kmxPqMB5umdIOIDZAgPOlo4RKyazUAyjEh/qzrq2lNK6Lxs32VXOg20vsSjhIA==
Received: from SY8P300MB0421.AUSP300.PROD.OUTLOOK.COM (2603:10c6:10:293::17)
 by SY8P300MB0663.AUSP300.PROD.OUTLOOK.COM (2603:10c6:10:295::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 09:57:57 +0000
Received: from SY8P300MB0421.AUSP300.PROD.OUTLOOK.COM
 ([fe80::c7a9:a687:779f:a9cc]) by SY8P300MB0421.AUSP300.PROD.OUTLOOK.COM
 ([fe80::c7a9:a687:779f:a9cc%4]) with mapi id 15.20.8356.014; Fri, 17 Jan 2025
 09:57:57 +0000
To: Dave Kleikamp <shaggy@kernel.org>, "Matthew Wilcox (Oracle)"
 <willy@infradead.org>, "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "syzkaller@googlegroups.com"
 <syzkaller@googlegroups.com>
Thread-Topic: UBSAN: array-index-out-of-bounds in release_metapage
Thread-Index: AQHbaMUMrjePfoAYIUG7334Dm0bbqA==
Date: Fri, 17 Jan 2025 09:57:57 +0000
Message-ID: <SY8P300MB042162563751423639725E65A11B2@SY8P300MB0421.AUSP300.PROD.OUTLOOK.COM>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SY8P300MB0421:EE_|SY8P300MB0663:EE_
x-ms-office365-filtering-correlation-id: 80243e39-b1c9-44ef-60e4-08dd36dd6b89
x-microsoft-antispam: BCL:0;
 ARA:14566002|7072599006|461199028|15080799006|5062599005|15030799003|19110799003|8060799006|8062599003|7092599003|30101999003|19111999003|41001999003|3430499032|12091999003|440099028|102099032|10035399004|4302099013|3412199025|56899033|1602099012;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?3N1X2rpJzD1Je9AZFMvYEE5tFtuyQiUnUCYOcENQnZ8mEw1ipcN/0iIPFW?=
 =?iso-8859-1?Q?OlmAYDmYaI3AvcCdrDxHny79I5Ot+z9Acuwa5Ft8w8MTRPtwK7RG2RmlFB?=
 =?iso-8859-1?Q?SH6Gt0PlZOL57L5ZGaftBpE/aZVGgpOZYcIMq3Z4SJSIVyKUODHptKPmRa?=
 =?iso-8859-1?Q?LTcsTb/Ue0PP4urLQAJImZRoZomM7AoqNrLpKmu9QkP7h3SgmQ+183Vq46?=
 =?iso-8859-1?Q?qAxCg9mjfqFf3vOl47qCYWQIMNNjNTXlwiGCdaJlzQgTPgEnkiS/gWhAVT?=
 =?iso-8859-1?Q?PV52zchCFHI7ml2yjNDp2w3Jsc6R/pNbkTVafK4gt39F08kjsmbeE7CbUu?=
 =?iso-8859-1?Q?f9WcWpovOZlxYWsbkp7XvEm7BjCbft1MnFNJNkw7a7aBEYWSHG2DbyAb5Z?=
 =?iso-8859-1?Q?QA2JFVZ6nLJLg8l1Iaoz6EkBlin8JsGmT4E2AyJi3v/8dFpukM0/1AOcIA?=
 =?iso-8859-1?Q?KE0EtR03sGiD4wze+Ewf3gQVTtlOlsm8UjHs4cL/IVX0+JLk+15PppE9YQ?=
 =?iso-8859-1?Q?EP7X7+HuUzfpqStz09gkBwTe28qBjrd5HUgGXJEtzHOktKUV41hNOxDMAu?=
 =?iso-8859-1?Q?001CVh1TPMA7W/NAZCEBjTJGZ/E7hKk5yLrXn1PGLINSGocm0gQFdJ0Jx8?=
 =?iso-8859-1?Q?A5LgwJ+hw//nxEfXZWreSFjC/H+eIdrFtYYtllZnFAwwB0sL0yisbhuyBg?=
 =?iso-8859-1?Q?+kcpwPlNgBBxQi3Yzb9Nhpws4QAdDZpF3UL3U6ChTOeBUtbWefVvPnHwP7?=
 =?iso-8859-1?Q?Es35Fwk6nBJRXYn/YJHESi3vG4Nrfw259zD2j8MIozoZLQbfoG//VqPeQj?=
 =?iso-8859-1?Q?coBkclReGY3uP67iUZA7zSJZiyaB+in3AeP5HtC4nXnWKtSP7RZEteH4Ap?=
 =?iso-8859-1?Q?6EQvaySm5xRMVidxfV/8jFJbRDh6e0xm1CBgcdJKVsHbQWgnnLjzuApdUi?=
 =?iso-8859-1?Q?7nilpAlnFfcpUCp3N9lQmtiGCCS3K84nOzT9QEq2XVQ3BnVsm8TmE3uTQT?=
 =?iso-8859-1?Q?yoql1KHOj//wSlPrTTOITtyRM6Z9NuE4SqLtxqEEwOiEswQBAK6iVtxtPo?=
 =?iso-8859-1?Q?RIBiqK1y9ub+qfvLUmmYXDtHfiXGwcF0wwQslU9bdD+chF+kxuVR8Aad0s?=
 =?iso-8859-1?Q?nvvO5h2wQg6gvoW+TGm35HostXYjsUcuYMSaJ9u5TR7OXqJHp2RtW3t5wH?=
 =?iso-8859-1?Q?oYyDPc3xN/mWWvAIvAdExarOdLOvpbpL8At5pCLBtA4DuoJMDQfsXWv/N8?=
 =?iso-8859-1?Q?5Wwl2coir2+1F4GuyZmEDf61y4aa+0+AbapCWa1wIlCoLEIjcgcl9KRc8t?=
 =?iso-8859-1?Q?E0hrdWb6LutCkIS6vozauiA9EsGT/v+hxXl91kM4mwCD7KWEgPqHxtcNoL?=
 =?iso-8859-1?Q?RjkDkyDvovPLODX9BLmfG13W0WPKSkXbRYqVY6GmBN3P6O46kBwj0ZoVGB?=
 =?iso-8859-1?Q?SWBF2jY2mFFfCz7oEMXBybwDUwxFNHFAou2cJapcyf4t98EEWXfIZlCaBz?=
 =?iso-8859-1?Q?tRTuqxBwoxP1MlQKJfSHRWDsUXDkyc0GCGRwdkdRjA6g=3D=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?3fyDr+3OC+w7Yx82no6wL+0bAUkis9MPgEzTQIu8Xb8fOx+fSrbr553Ddn?=
 =?iso-8859-1?Q?znTiDHygypAU6BrhjqDqsfVmOjXOkoHToYSwZMoEWpX4Qc+2DlpUkNfR1m?=
 =?iso-8859-1?Q?Hk4zZPgOfWRyGrvtg7E9hUcEEf6Y//5PUxerMnqV7dQEwTmQ7jeub5ALfw?=
 =?iso-8859-1?Q?ojGsXCEAxjzOmxt7aWDPe6YNFjjS+yRjJQiqPOn9lXyJGGKVje7vrM2BtV?=
 =?iso-8859-1?Q?W/hzJKk2H119r6W6W1XVkOV/9C78UvKWHffJChZ3VXLzE9PqEQwuRvcnFt?=
 =?iso-8859-1?Q?jbew8oM5l9uD1UR7g2CujpwWD4+2+7v/rQaLxiZhpswRxJExEMTAINKm0s?=
 =?iso-8859-1?Q?03YgghwovYc6Ze5jTLgwZjqeofniRrX9KKDDVvUBVcxgbJnzVTZqlP6u6j?=
 =?iso-8859-1?Q?AaUqUDcRui8MJw0LiLafGziN4GeKL9aZU08O8O3k/pn5uLLX+BnJ43G/7w?=
 =?iso-8859-1?Q?qGg4tLIpkeWX1UGdi7F+oG9CxuYkb+rb38MA7B6Iqm2Z2OJiV75ODmZud5?=
 =?iso-8859-1?Q?EjqEdUiow81XZ8jwluuJUcHcuvfM/U9IFQUPN2hUinMmPG09zWOU51jcVt?=
 =?iso-8859-1?Q?zy4N9L8Rl+sfOAgzKvxO0+uIDi9TmVncMYjyTE0gyR+mKonhnXE/TnYXMw?=
 =?iso-8859-1?Q?SJY3XwTNwfmz0Kzib2KEq0B/gcGI2XPRfhfF6ZRTDAySLNwUEV23tyhhKD?=
 =?iso-8859-1?Q?ldno6Kjz/lEpuG6MgrtywSMewfSH0xWBgPMUQS3NhTzYSkRmtXuos6URN9?=
 =?iso-8859-1?Q?cW8dnQ2AY8dd0Dp8OpHHxQBoSm9rFuci1y0fquOvSx17jtwYnN6Yzn0I61?=
 =?iso-8859-1?Q?4L/5m4ZL47VtkLmWeB70loG9uNkCL4U1w4Hne5CItUl7CzIk92hs7odxjU?=
 =?iso-8859-1?Q?ZQn8jwQNpxpmCpysKMZR7zHMYbi/la/726MI94JFqk2Q5UG958p7b/uR35?=
 =?iso-8859-1?Q?qKRft/2KUjXRkYcKbmauTfqIMc0aJcBvoR19fbKwzkTuEXRMFZfYq+LvDT?=
 =?iso-8859-1?Q?7R8wAH/cTD7vbNr8DtxHM+Z7cDIissoy2cAFDPHIAEJPpUiITvq0puJN6a?=
 =?iso-8859-1?Q?+mYswqYxTESdHfS73CjRxtHTF1CmxLZk/2ABaxtSYlUVdCJlhZRxVv/vfD?=
 =?iso-8859-1?Q?qpHWz27MVPUr2eJPgiZWYzXTSImnKbfbLLs/w+ixKqYSocv+GWrNJDLSxi?=
 =?iso-8859-1?Q?nhKnUVWwNV4PPZQr6oypGhS/mZ7zKOV9F+mhcM5725C0Jft/OqbCa60wpo?=
 =?iso-8859-1?Q?9DEdXOPbaEAnWXZJlJ83IQCgERRogq7GFy/d9epI0=3D?=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SY8P300MB0421.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 80243e39-b1c9-44ef-60e4-08dd36dd6b89
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2025 09:57:57.6033 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY8P300MB0663
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dear developers and maintainers, I found a new kernel array-index-out-of-bounds
     bug titiled "UBSAN: array-index-out-of-bounds in release_metapage" while
    using modified syzkaller fuzzing tool. It was tested against the latest upstrea
    [...] 
 
 Content analysis details:   (1.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [40.92.62.92 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [40.92.62.92 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [kangyan91[at]outlook.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [kangyan91[at]outlook.com]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  1.0 FREEMAIL_REPLY         From and body contain different freemails
X-Headers-End: 1tYj7E-0007hA-Oo
X-Mailman-Approved-At: Fri, 17 Jan 2025 14:44:41 +0000
Subject: [Jfs-discussion] UBSAN: array-index-out-of-bounds in
 release_metapage
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
From: YAN KANG via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: YAN KANG <kangyan91@outlook.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Dear developers and maintainers,

I found a new kernel array-index-out-of-bounds =A0bug titiled "UBSAN: array=
-index-out-of-bounds in release_metapage" while using modified syzkaller fu=
zzing tool. It was tested against the latest upstream kernel(6.13.0-rc7) re=
lated to JFS FILESYSTEM.


If you fix this issue, please add the following tag to the commit:
Reported-by: yan kang <kangyan91@outlook.com>
Reported-by: yue sun <samsun1006219@gmail.com


I hope it helps.
Best regards
yan kang

Kernel crash log , PoC and .config are listed below.

------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in kernel/locking/qspinlock.c:131:9
index 8929 is out of range for type 'long unsigned int [8]'
CPU: 0 UID: 0 PID: 121 Comm: jfsCommit Not tainted 6.13.0-rc1-00003-gd47747=
59e15b-dirty #87
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/=
2014
Call Trace:
=A0<TASK>
=A0__dump_stack lib/dump_stack.c:94 [inline]
=A0dump_stack_lvl+0x116/0x1b0 lib/dump_stack.c:120
=A0ubsan_epilogue lib/ubsan.c:231 [inline]
=A0__ubsan_handle_out_of_bounds+0xd4/0x130 lib/ubsan.c:429
=A0decode_tail kernel/locking/qspinlock.c:131 [inline]
=A0__pv_queued_spin_lock_slowpath+0xb6c/0xc40 kernel/locking/qspinlock.c:468
=A0pv_queued_spin_lock_slowpath arch/x86/include/asm/paravirt.h:584 [inline]
=A0queued_spin_lock_slowpath arch/x86/include/asm/qspinlock.h:51 [inline]
=A0queued_spin_lock include/asm-generic/qspinlock.h:114 [inline]
=A0do_raw_spin_lock+0x20f/0x2b0 kernel/locking/spinlock_debug.c:116
=A0__raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:111 [inline]
=A0_raw_spin_lock_irqsave+0x45/0x60 kernel/locking/spinlock.c:162
=A0__wake_up_common_lock kernel/sched/wait.c:105 [inline]
=A0__wake_up+0x1c/0x60 kernel/sched/wait.c:127
=A0unlock_metapage fs/jfs/jfs_metapage.c:39 [inline]
=A0release_metapage+0x105/0x860 fs/jfs/jfs_metapage.c:763
=A0discard_metapage fs/jfs/jfs_metapage.h:88 [inline]
=A0xtTruncate+0x1ec4/0x28b0 fs/jfs/jfs_xtree.c:2488
=A0jfs_free_zero_link+0x359/0x4b0 fs/jfs/namei.c:759
=A0jfs_evict_inode+0x423/0x4b0 fs/jfs/inode.c:153
=A0evict+0x3ef/0x930 fs/inode.c:796
=A0iput_final fs/inode.c:1946 [inline]
=A0iput fs/inode.c:1972 [inline]
=A0iput+0x514/0x800 fs/inode.c:1958
=A0txUpdateMap+0x96c/0xb50 fs/jfs/jfs_txnmgr.c:2367
=A0txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
=A0jfs_lazycommit+0x5d0/0xb10 fs/jfs/jfs_txnmgr.c:2733
=A0kthread+0x2c7/0x3b0 kernel/kthread.c:389
=A0ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
=A0ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
=A0</TASK>
---[ end trace ]---

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
PoC.c
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
// autogenerated by syzkaller (https://github.com/google/syzkaller)

#define _GNU_SOURCE

#include <arpa/inet.h>
#include <dirent.h>
#include <endian.h>
#include <errno.h>
#include <fcntl.h>
#include <net/if.h>
#include <netinet/in.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <sys/mount.h>
#include <sys/prctl.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

#include <linux/genetlink.h>
#include <linux/if_addr.h>
#include <linux/if_link.h>
#include <linux/in6.h>
#include <linux/loop.h>
#include <linux/neighbour.h>
#include <linux/net.h>
#include <linux/netlink.h>
#include <linux/rtnetlink.h>
#include <linux/veth.h>

#ifndef __NR_memfd_create
#define __NR_memfd_create 319
#endif

static unsigned long long procid;

static void sleep_ms(uint64_t ms)
{
=A0 usleep(ms * 1000);
}

static uint64_t current_time_ms(void)
{
=A0 struct timespec ts;
=A0 if (clock_gettime(CLOCK_MONOTONIC, &ts))
=A0 =A0 exit(1);
=A0 return (uint64_t)ts.tv_sec * 1000 + (uint64_t)ts.tv_nsec / 1000000;
}

static void use_temporary_dir(void)
{
=A0 char tmpdir_template[] =3D "./syzkaller.XXXXXX";
=A0 char* tmpdir =3D mkdtemp(tmpdir_template);
=A0 if (!tmpdir)
=A0 =A0 exit(1);
=A0 if (chmod(tmpdir, 0777))
=A0 =A0 exit(1);
=A0 if (chdir(tmpdir))
=A0 =A0 exit(1);
}

static bool write_file(const char* file, const char* what, ...)
{
=A0 char buf[1024];
=A0 va_list args;
=A0 va_start(args, what);
=A0 vsnprintf(buf, sizeof(buf), what, args);
=A0 va_end(args);
=A0 buf[sizeof(buf) - 1] =3D 0;
=A0 int len =3D strlen(buf);
=A0 int fd =3D open(file, O_WRONLY | O_CLOEXEC);
=A0 if (fd =3D=3D -1)
=A0 =A0 return false;
=A0 if (write(fd, buf, len) !=3D len) {
=A0 =A0 int err =3D errno;
=A0 =A0 close(fd);
=A0 =A0 errno =3D err;
=A0 =A0 return false;
=A0 }
=A0 close(fd);
=A0 return true;
}

struct nlmsg {
=A0 char* pos;
=A0 int nesting;
=A0 struct nlattr* nested[8];
=A0 char buf[4096];
};

static void netlink_init(struct nlmsg* nlmsg, int typ, int flags,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0const void* data, int si=
ze)
{
=A0 memset(nlmsg, 0, sizeof(*nlmsg));
=A0 struct nlmsghdr* hdr =3D (struct nlmsghdr*)nlmsg->buf;
=A0 hdr->nlmsg_type =3D typ;
=A0 hdr->nlmsg_flags =3D NLM_F_REQUEST | NLM_F_ACK | flags;
=A0 memcpy(hdr + 1, data, size);
=A0 nlmsg->pos =3D (char*)(hdr + 1) + NLMSG_ALIGN(size);
}

static void netlink_attr(struct nlmsg* nlmsg, int typ, const void* data,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0int size)
{
=A0 struct nlattr* attr =3D (struct nlattr*)nlmsg->pos;
=A0 attr->nla_len =3D sizeof(*attr) + size;
=A0 attr->nla_type =3D typ;
=A0 if (size > 0)
=A0 =A0 memcpy(attr + 1, data, size);
=A0 nlmsg->pos +=3D NLMSG_ALIGN(attr->nla_len);
}

static void netlink_nest(struct nlmsg* nlmsg, int typ)
{
=A0 struct nlattr* attr =3D (struct nlattr*)nlmsg->pos;
=A0 attr->nla_type =3D typ;
=A0 nlmsg->pos +=3D sizeof(*attr);
=A0 nlmsg->nested[nlmsg->nesting++] =3D attr;
}

static void netlink_done(struct nlmsg* nlmsg)
{
=A0 struct nlattr* attr =3D nlmsg->nested[--nlmsg->nesting];
=A0 attr->nla_len =3D nlmsg->pos - (char*)attr;
}

static int netlink_send_ext(struct nlmsg* nlmsg, int sock, uint16_t reply_t=
ype,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 int* reply_len, boo=
l dofail)
{
=A0 if (nlmsg->pos > nlmsg->buf + sizeof(nlmsg->buf) || nlmsg->nesting)
=A0 =A0 exit(1);
=A0 struct nlmsghdr* hdr =3D (struct nlmsghdr*)nlmsg->buf;
=A0 hdr->nlmsg_len =3D nlmsg->pos - nlmsg->buf;
=A0 struct sockaddr_nl addr;
=A0 memset(&addr, 0, sizeof(addr));
=A0 addr.nl_family =3D AF_NETLINK;
=A0 ssize_t n =3D sendto(sock, nlmsg->buf, hdr->nlmsg_len, 0,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(struct sockaddr*)&addr, sizeof(=
addr));
=A0 if (n !=3D (ssize_t)hdr->nlmsg_len) {
=A0 =A0 if (dofail)
=A0 =A0 =A0 exit(1);
=A0 =A0 return -1;
=A0 }
=A0 n =3D recv(sock, nlmsg->buf, sizeof(nlmsg->buf), 0);
=A0 if (reply_len)
=A0 =A0 *reply_len =3D 0;
=A0 if (n < 0) {
=A0 =A0 if (dofail)
=A0 =A0 =A0 exit(1);
=A0 =A0 return -1;
=A0 }
=A0 if (n < (ssize_t)sizeof(struct nlmsghdr)) {
=A0 =A0 errno =3D EINVAL;
=A0 =A0 if (dofail)
=A0 =A0 =A0 exit(1);
=A0 =A0 return -1;
=A0 }
=A0 if (hdr->nlmsg_type =3D=3D NLMSG_DONE)
=A0 =A0 return 0;
=A0 if (reply_len && hdr->nlmsg_type =3D=3D reply_type) {
=A0 =A0 *reply_len =3D n;
=A0 =A0 return 0;
=A0 }
=A0 if (n < (ssize_t)(sizeof(struct nlmsghdr) + sizeof(struct nlmsgerr))) {
=A0 =A0 errno =3D EINVAL;
=A0 =A0 if (dofail)
=A0 =A0 =A0 exit(1);
=A0 =A0 return -1;
=A0 }
=A0 if (hdr->nlmsg_type !=3D NLMSG_ERROR) {
=A0 =A0 errno =3D EINVAL;
=A0 =A0 if (dofail)
=A0 =A0 =A0 exit(1);
=A0 =A0 return -1;
=A0 }
=A0 errno =3D -((struct nlmsgerr*)(hdr + 1))->error;
=A0 return -errno;
}

static int netlink_send(struct nlmsg* nlmsg, int sock)
{
=A0 return netlink_send_ext(nlmsg, sock, 0, NULL, true);
}

static int netlink_query_family_id(struct nlmsg* nlmsg, int sock,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0cons=
t char* family_name, bool dofail)
{
=A0 struct genlmsghdr genlhdr;
=A0 memset(&genlhdr, 0, sizeof(genlhdr));
=A0 genlhdr.cmd =3D CTRL_CMD_GETFAMILY;
=A0 netlink_init(nlmsg, GENL_ID_CTRL, 0, &genlhdr, sizeof(genlhdr));
=A0 netlink_attr(nlmsg, CTRL_ATTR_FAMILY_NAME, family_name,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0strnlen(family_name, GENL_NAMSIZ - 1) + 1);
=A0 int n =3D 0;
=A0 int err =3D netlink_send_ext(nlmsg, sock, GENL_ID_CTRL, &n, dofail);
=A0 if (err < 0) {
=A0 =A0 return -1;
=A0 }
=A0 uint16_t id =3D 0;
=A0 struct nlattr* attr =3D (struct nlattr*)(nlmsg->buf + NLMSG_HDRLEN +
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0NLMSG_ALIGN(sizeof(genlhdr)));
=A0 for (; (char*)attr < nlmsg->buf + n;
=A0 =A0 =A0 =A0attr =3D (struct nlattr*)((char*)attr + NLMSG_ALIGN(attr->nl=
a_len))) {
=A0 =A0 if (attr->nla_type =3D=3D CTRL_ATTR_FAMILY_ID) {
=A0 =A0 =A0 id =3D *(uint16_t*)(attr + 1);
=A0 =A0 =A0 break;
=A0 =A0 }
=A0 }
=A0 if (!id) {
=A0 =A0 errno =3D EINVAL;
=A0 =A0 return -1;
=A0 }
=A0 recv(sock, nlmsg->buf, sizeof(nlmsg->buf), 0);
=A0 return id;
}

static void netlink_add_device_impl(struct nlmsg* nlmsg, const char* type,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 con=
st char* name, bool up)
{
=A0 struct ifinfomsg hdr;
=A0 memset(&hdr, 0, sizeof(hdr));
=A0 if (up)
=A0 =A0 hdr.ifi_flags =3D hdr.ifi_change =3D IFF_UP;
=A0 netlink_init(nlmsg, RTM_NEWLINK, NLM_F_EXCL | NLM_F_CREATE, &hdr,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sizeof(hdr));
=A0 if (name)
=A0 =A0 netlink_attr(nlmsg, IFLA_IFNAME, name, strlen(name));
=A0 netlink_nest(nlmsg, IFLA_LINKINFO);
=A0 netlink_attr(nlmsg, IFLA_INFO_KIND, type, strlen(type));
}

static void netlink_device_change(struct nlmsg* nlmsg, int sock,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 const c=
har* name, bool up, const char* master,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 const v=
oid* mac, int macsize,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 const c=
har* new_name)
{
=A0 struct ifinfomsg hdr;
=A0 memset(&hdr, 0, sizeof(hdr));
=A0 if (up)
=A0 =A0 hdr.ifi_flags =3D hdr.ifi_change =3D IFF_UP;
=A0 hdr.ifi_index =3D if_nametoindex(name);
=A0 netlink_init(nlmsg, RTM_NEWLINK, 0, &hdr, sizeof(hdr));
=A0 if (new_name)
=A0 =A0 netlink_attr(nlmsg, IFLA_IFNAME, new_name, strlen(new_name));
=A0 if (master) {
=A0 =A0 int ifindex =3D if_nametoindex(master);
=A0 =A0 netlink_attr(nlmsg, IFLA_MASTER, &ifindex, sizeof(ifindex));
=A0 }
=A0 if (macsize)
=A0 =A0 netlink_attr(nlmsg, IFLA_ADDRESS, mac, macsize);
=A0 int err =3D netlink_send(nlmsg, sock);
=A0 if (err < 0) {
=A0 }
}

static struct nlmsg nlmsg;

static long syz_open_dev(volatile long a0, volatile long a1, volatile long =
a2)
{
=A0 if (a0 =3D=3D 0xc || a0 =3D=3D 0xb) {
=A0 =A0 char buf[128];
=A0 =A0 sprintf(buf, "/dev/%s/%d:%d", a0 =3D=3D 0xc ? "char" : "block", (ui=
nt8_t)a1,
=A0 =A0 =A0 =A0 =A0 =A0 (uint8_t)a2);
=A0 =A0 return open(buf, O_RDWR, 0);
=A0 } else {
=A0 =A0 char buf[1024];
=A0 =A0 char* hash;
=A0 =A0 strncpy(buf, (char*)a0, sizeof(buf) - 1);
=A0 =A0 buf[sizeof(buf) - 1] =3D 0;
=A0 =A0 while ((hash =3D strchr(buf, '#'))) {
=A0 =A0 =A0 *hash =3D '0' + (char)(a1 % 10);
=A0 =A0 =A0 a1 /=3D 10;
=A0 =A0 }
=A0 =A0 return open(buf, a2, 0);
=A0 }
}

//% This code is derived from puff.{c,h}, found in the zlib development. The
//% original files come with the following copyright notice:

//% Copyright (C) 2002-2013 Mark Adler, all rights reserved
//% version 2.3, 21 Jan 2013
//% This software is provided 'as-is', without any express or implied
//% warranty. =A0In no event will the author be held liable for any damages
//% arising from the use of this software.
//% Permission is granted to anyone to use this software for any purpose,
//% including commercial applications, and to alter it and redistribute it
//% freely, subject to the following restrictions:
//% 1. The origin of this software must not be misrepresented; you must not
//% =A0 =A0claim that you wrote the original software. If you use this soft=
ware
//% =A0 =A0in a product, an acknowledgment in the product documentation wou=
ld be
//% =A0 =A0appreciated but is not required.
//% 2. Altered source versions must be plainly marked as such, and must not=
 be
//% =A0 =A0misrepresented as being the original software.
//% 3. This notice may not be removed or altered from any source distributi=
on.
//% Mark Adler =A0 =A0madler@alumni.caltech.edu

//% BEGIN CODE DERIVED FROM puff.{c,h}

#define MAXBITS 15
#define MAXLCODES 286
#define MAXDCODES 30
#define MAXCODES (MAXLCODES + MAXDCODES)
#define FIXLCODES 288

struct puff_state {
=A0 unsigned char* out;
=A0 unsigned long outlen;
=A0 unsigned long outcnt;
=A0 const unsigned char* in;
=A0 unsigned long inlen;
=A0 unsigned long incnt;
=A0 int bitbuf;
=A0 int bitcnt;
=A0 jmp_buf env;
};
static int puff_bits(struct puff_state* s, int need)
{
=A0 long val =3D s->bitbuf;
=A0 while (s->bitcnt < need) {
=A0 =A0 if (s->incnt =3D=3D s->inlen)
=A0 =A0 =A0 longjmp(s->env, 1);
=A0 =A0 val |=3D (long)(s->in[s->incnt++]) << s->bitcnt;
=A0 =A0 s->bitcnt +=3D 8;
=A0 }
=A0 s->bitbuf =3D (int)(val >> need);
=A0 s->bitcnt -=3D need;
=A0 return (int)(val & ((1L << need) - 1));
}
static int puff_stored(struct puff_state* s)
{
=A0 s->bitbuf =3D 0;
=A0 s->bitcnt =3D 0;
=A0 if (s->incnt + 4 > s->inlen)
=A0 =A0 return 2;
=A0 unsigned len =3D s->in[s->incnt++];
=A0 len |=3D s->in[s->incnt++] << 8;
=A0 if (s->in[s->incnt++] !=3D (~len & 0xff) ||
=A0 =A0 =A0 s->in[s->incnt++] !=3D ((~len >> 8) & 0xff))
=A0 =A0 return -2;
=A0 if (s->incnt + len > s->inlen)
=A0 =A0 return 2;
=A0 if (s->outcnt + len > s->outlen)
=A0 =A0 return 1;
=A0 for (; len--; s->outcnt++, s->incnt++) {
=A0 =A0 if (s->in[s->incnt])
=A0 =A0 =A0 s->out[s->outcnt] =3D s->in[s->incnt];
=A0 }
=A0 return 0;
}
struct puff_huffman {
=A0 short* count;
=A0 short* symbol;
};
static int puff_decode(struct puff_state* s, const struct puff_huffman* h)
{
=A0 int first =3D 0;
=A0 int index =3D 0;
=A0 int bitbuf =3D s->bitbuf;
=A0 int left =3D s->bitcnt;
=A0 int code =3D first =3D index =3D 0;
=A0 int len =3D 1;
=A0 short* next =3D h->count + 1;
=A0 while (1) {
=A0 =A0 while (left--) {
=A0 =A0 =A0 code |=3D bitbuf & 1;
=A0 =A0 =A0 bitbuf >>=3D 1;
=A0 =A0 =A0 int count =3D *next++;
=A0 =A0 =A0 if (code - count < first) {
=A0 =A0 =A0 =A0 s->bitbuf =3D bitbuf;
=A0 =A0 =A0 =A0 s->bitcnt =3D (s->bitcnt - len) & 7;
=A0 =A0 =A0 =A0 return h->symbol[index + (code - first)];
=A0 =A0 =A0 }
=A0 =A0 =A0 index +=3D count;
=A0 =A0 =A0 first +=3D count;
=A0 =A0 =A0 first <<=3D 1;
=A0 =A0 =A0 code <<=3D 1;
=A0 =A0 =A0 len++;
=A0 =A0 }
=A0 =A0 left =3D (MAXBITS + 1) - len;
=A0 =A0 if (left =3D=3D 0)
=A0 =A0 =A0 break;
=A0 =A0 if (s->incnt =3D=3D s->inlen)
=A0 =A0 =A0 longjmp(s->env, 1);
=A0 =A0 bitbuf =3D s->in[s->incnt++];
=A0 =A0 if (left > 8)
=A0 =A0 =A0 left =3D 8;
=A0 }
=A0 return -10;
}
static int puff_construct(struct puff_huffman* h, const short* length, int =
n)
{
=A0 int len;
=A0 for (len =3D 0; len <=3D MAXBITS; len++)
=A0 =A0 h->count[len] =3D 0;
=A0 int symbol;
=A0 for (symbol =3D 0; symbol < n; symbol++)
=A0 =A0 (h->count[length[symbol]])++;
=A0 if (h->count[0] =3D=3D n)
=A0 =A0 return 0;
=A0 int left =3D 1;
=A0 for (len =3D 1; len <=3D MAXBITS; len++) {
=A0 =A0 left <<=3D 1;
=A0 =A0 left -=3D h->count[len];
=A0 =A0 if (left < 0)
=A0 =A0 =A0 return left;
=A0 }
=A0 short offs[MAXBITS + 1];
=A0 offs[1] =3D 0;
=A0 for (len =3D 1; len < MAXBITS; len++)
=A0 =A0 offs[len + 1] =3D offs[len] + h->count[len];
=A0 for (symbol =3D 0; symbol < n; symbol++)
=A0 =A0 if (length[symbol] !=3D 0)
=A0 =A0 =A0 h->symbol[offs[length[symbol]]++] =3D symbol;
=A0 return left;
}
static int puff_codes(struct puff_state* s, const struct puff_huffman* lenc=
ode,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 const struct puff_huffman* dist=
code)
{
=A0 static const short lens[29] =3D {3, =A04, =A05, =A06, =A0 7, =A0 8, =A0=
 9, =A0 10, =A011, 13,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A015, 17, =
19, 23, =A027, =A031, =A035, =A043, =A051, 59,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A067, 83, =
99, 115, 131, 163, 195, 227, 258};
=A0 static const short lext[29] =3D {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2,=
 2, 2,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A02, 3, 3,=
 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 0};
=A0 static const short dists[30] =3D {
=A0 =A0 =A0 1, =A0 =A02, =A0 =A03, =A0 =A04, =A0 =A05, =A0 =A07, =A0 =A09, =
=A0 =A013, =A0 =A017, =A0 =A025,
=A0 =A0 =A0 33, =A0 49, =A0 65, =A0 97, =A0 129, =A0193, =A0257, =A0385, =
=A0 513, =A0 769,
=A0 =A0 =A0 1025, 1537, 2049, 3073, 4097, 6145, 8193, 12289, 16385, 24577};
=A0 static const short dext[30] =3D {0, 0, 0, =A00, =A01, =A01, =A02, =A02,=
 =A03, =A03,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A04, 4, 5,=
 =A05, =A06, =A06, =A07, =A07, =A08, =A08,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A09, 9, 10=
, 10, 11, 11, 12, 12, 13, 13};
=A0 int symbol;
=A0 do {
=A0 =A0 symbol =3D puff_decode(s, lencode);
=A0 =A0 if (symbol < 0)
=A0 =A0 =A0 return symbol;
=A0 =A0 if (symbol < 256) {
=A0 =A0 =A0 if (s->outcnt =3D=3D s->outlen)
=A0 =A0 =A0 =A0 return 1;
=A0 =A0 =A0 if (symbol)
=A0 =A0 =A0 =A0 s->out[s->outcnt] =3D symbol;
=A0 =A0 =A0 s->outcnt++;
=A0 =A0 } else if (symbol > 256) {
=A0 =A0 =A0 symbol -=3D 257;
=A0 =A0 =A0 if (symbol >=3D 29)
=A0 =A0 =A0 =A0 return -10;
=A0 =A0 =A0 int len =3D lens[symbol] + puff_bits(s, lext[symbol]);
=A0 =A0 =A0 symbol =3D puff_decode(s, distcode);
=A0 =A0 =A0 if (symbol < 0)
=A0 =A0 =A0 =A0 return symbol;
=A0 =A0 =A0 unsigned dist =3D dists[symbol] + puff_bits(s, dext[symbol]);
=A0 =A0 =A0 if (dist > s->outcnt)
=A0 =A0 =A0 =A0 return -11;
=A0 =A0 =A0 if (s->outcnt + len > s->outlen)
=A0 =A0 =A0 =A0 return 1;
=A0 =A0 =A0 while (len--) {
=A0 =A0 =A0 =A0 if (dist <=3D s->outcnt && s->out[s->outcnt - dist])
=A0 =A0 =A0 =A0 =A0 s->out[s->outcnt] =3D s->out[s->outcnt - dist];
=A0 =A0 =A0 =A0 s->outcnt++;
=A0 =A0 =A0 }
=A0 =A0 }
=A0 } while (symbol !=3D 256);
=A0 return 0;
}
static int puff_fixed(struct puff_state* s)
{
=A0 static int virgin =3D 1;
=A0 static short lencnt[MAXBITS + 1], lensym[FIXLCODES];
=A0 static short distcnt[MAXBITS + 1], distsym[MAXDCODES];
=A0 static struct puff_huffman lencode, distcode;
=A0 if (virgin) {
=A0 =A0 lencode.count =3D lencnt;
=A0 =A0 lencode.symbol =3D lensym;
=A0 =A0 distcode.count =3D distcnt;
=A0 =A0 distcode.symbol =3D distsym;
=A0 =A0 short lengths[FIXLCODES];
=A0 =A0 int symbol;
=A0 =A0 for (symbol =3D 0; symbol < 144; symbol++)
=A0 =A0 =A0 lengths[symbol] =3D 8;
=A0 =A0 for (; symbol < 256; symbol++)
=A0 =A0 =A0 lengths[symbol] =3D 9;
=A0 =A0 for (; symbol < 280; symbol++)
=A0 =A0 =A0 lengths[symbol] =3D 7;
=A0 =A0 for (; symbol < FIXLCODES; symbol++)
=A0 =A0 =A0 lengths[symbol] =3D 8;
=A0 =A0 puff_construct(&lencode, lengths, FIXLCODES);
=A0 =A0 for (symbol =3D 0; symbol < MAXDCODES; symbol++)
=A0 =A0 =A0 lengths[symbol] =3D 5;
=A0 =A0 puff_construct(&distcode, lengths, MAXDCODES);
=A0 =A0 virgin =3D 0;
=A0 }
=A0 return puff_codes(s, &lencode, &distcode);
}
static int puff_dynamic(struct puff_state* s)
{
=A0 static const short order[19] =3D {16, 17, 18, 0, 8, =A07, 9, =A06, 10, =
5,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 11, 4, =
=A012, 3, 13, 2, 14, 1, 15};
=A0 int nlen =3D puff_bits(s, 5) + 257;
=A0 int ndist =3D puff_bits(s, 5) + 1;
=A0 int ncode =3D puff_bits(s, 4) + 4;
=A0 if (nlen > MAXLCODES || ndist > MAXDCODES)
=A0 =A0 return -3;
=A0 short lengths[MAXCODES];
=A0 int index;
=A0 for (index =3D 0; index < ncode; index++)
=A0 =A0 lengths[order[index]] =3D puff_bits(s, 3);
=A0 for (; index < 19; index++)
=A0 =A0 lengths[order[index]] =3D 0;
=A0 short lencnt[MAXBITS + 1], lensym[MAXLCODES];
=A0 struct puff_huffman lencode =3D {lencnt, lensym};
=A0 int err =3D puff_construct(&lencode, lengths, 19);
=A0 if (err !=3D 0)
=A0 =A0 return -4;
=A0 index =3D 0;
=A0 while (index < nlen + ndist) {
=A0 =A0 int symbol;
=A0 =A0 int len;
=A0 =A0 symbol =3D puff_decode(s, &lencode);
=A0 =A0 if (symbol < 0)
=A0 =A0 =A0 return symbol;
=A0 =A0 if (symbol < 16)
=A0 =A0 =A0 lengths[index++] =3D symbol;
=A0 =A0 else {
=A0 =A0 =A0 len =3D 0;
=A0 =A0 =A0 if (symbol =3D=3D 16) {
=A0 =A0 =A0 =A0 if (index =3D=3D 0)
=A0 =A0 =A0 =A0 =A0 return -5;
=A0 =A0 =A0 =A0 len =3D lengths[index - 1];
=A0 =A0 =A0 =A0 symbol =3D 3 + puff_bits(s, 2);
=A0 =A0 =A0 } else if (symbol =3D=3D 17)
=A0 =A0 =A0 =A0 symbol =3D 3 + puff_bits(s, 3);
=A0 =A0 =A0 else
=A0 =A0 =A0 =A0 symbol =3D 11 + puff_bits(s, 7);
=A0 =A0 =A0 if (index + symbol > nlen + ndist)
=A0 =A0 =A0 =A0 return -6;
=A0 =A0 =A0 while (symbol--)
=A0 =A0 =A0 =A0 lengths[index++] =3D len;
=A0 =A0 }
=A0 }
=A0 if (lengths[256] =3D=3D 0)
=A0 =A0 return -9;
=A0 err =3D puff_construct(&lencode, lengths, nlen);
=A0 if (err && (err < 0 || nlen !=3D lencode.count[0] + lencode.count[1]))
=A0 =A0 return -7;
=A0 short distcnt[MAXBITS + 1], distsym[MAXDCODES];
=A0 struct puff_huffman distcode =3D {distcnt, distsym};
=A0 err =3D puff_construct(&distcode, lengths + nlen, ndist);
=A0 if (err && (err < 0 || ndist !=3D distcode.count[0] + distcode.count[1]=
))
=A0 =A0 return -8;
=A0 return puff_codes(s, &lencode, &distcode);
}
static int puff(unsigned char* dest, unsigned long* destlen,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 const unsigned char* source, unsigned long =
sourcelen)
{
=A0 struct puff_state s =3D {
=A0 =A0 =A0 .out =3D dest,
=A0 =A0 =A0 .outlen =3D *destlen,
=A0 =A0 =A0 .outcnt =3D 0,
=A0 =A0 =A0 .in =3D source,
=A0 =A0 =A0 .inlen =3D sourcelen,
=A0 =A0 =A0 .incnt =3D 0,
=A0 =A0 =A0 .bitbuf =3D 0,
=A0 =A0 =A0 .bitcnt =3D 0,
=A0 };
=A0 int err;
=A0 if (setjmp(s.env) !=3D 0)
=A0 =A0 err =3D 2;
=A0 else {
=A0 =A0 int last;
=A0 =A0 do {
=A0 =A0 =A0 last =3D puff_bits(&s, 1);
=A0 =A0 =A0 int type =3D puff_bits(&s, 2);
=A0 =A0 =A0 err =3D type =3D=3D 0 ? puff_stored(&s)
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 : (type =3D=3D 1 ? puff_fixed(&=
s)
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0: (t=
ype =3D=3D 2 ? puff_dynamic(&s) : -1));
=A0 =A0 =A0 if (err !=3D 0)
=A0 =A0 =A0 =A0 break;
=A0 =A0 } while (!last);
=A0 }
=A0 *destlen =3D s.outcnt;
=A0 return err;
}

//% END CODE DERIVED FROM puff.{c,h}

#define ZLIB_HEADER_WIDTH 2

static int puff_zlib_to_file(const unsigned char* source,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0unsigned long so=
urcelen, int dest_fd)
{
=A0 if (sourcelen < ZLIB_HEADER_WIDTH)
=A0 =A0 return 0;
=A0 source +=3D ZLIB_HEADER_WIDTH;
=A0 sourcelen -=3D ZLIB_HEADER_WIDTH;
=A0 const unsigned long max_destlen =3D 132 << 20;
=A0 void* ret =3D mmap(0, max_destlen, PROT_WRITE | PROT_READ,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0MAP_PRIVATE | MAP_ANON, -1, 0);
=A0 if (ret =3D=3D MAP_FAILED)
=A0 =A0 return -1;
=A0 unsigned char* dest =3D (unsigned char*)ret;
=A0 unsigned long destlen =3D max_destlen;
=A0 int err =3D puff(dest, &destlen, source, sourcelen);
=A0 if (err) {
=A0 =A0 munmap(dest, max_destlen);
=A0 =A0 errno =3D -err;
=A0 =A0 return -1;
=A0 }
=A0 if (write(dest_fd, dest, destlen) !=3D (ssize_t)destlen) {
=A0 =A0 munmap(dest, max_destlen);
=A0 =A0 return -1;
=A0 }
=A0 return munmap(dest, max_destlen);
}

static int setup_loop_device(unsigned char* data, unsigned long size,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0const char* loop=
name, int* loopfd_p)
{
=A0 int err =3D 0, loopfd =3D -1;
=A0 int memfd =3D syscall(__NR_memfd_create, "syzkaller", 0);
=A0 if (memfd =3D=3D -1) {
=A0 =A0 err =3D errno;
=A0 =A0 goto error;
=A0 }
=A0 if (puff_zlib_to_file(data, size, memfd)) {
=A0 =A0 err =3D errno;
=A0 =A0 goto error_close_memfd;
=A0 }
=A0 loopfd =3D open(loopname, O_RDWR);
=A0 if (loopfd =3D=3D -1) {
=A0 =A0 err =3D errno;
=A0 =A0 goto error_close_memfd;
=A0 }
=A0 if (ioctl(loopfd, LOOP_SET_FD, memfd)) {
=A0 =A0 if (errno !=3D EBUSY) {
=A0 =A0 =A0 err =3D errno;
=A0 =A0 =A0 goto error_close_loop;
=A0 =A0 }
=A0 =A0 ioctl(loopfd, LOOP_CLR_FD, 0);
=A0 =A0 usleep(1000);
=A0 =A0 if (ioctl(loopfd, LOOP_SET_FD, memfd)) {
=A0 =A0 =A0 err =3D errno;
=A0 =A0 =A0 goto error_close_loop;
=A0 =A0 }
=A0 }
=A0 close(memfd);
=A0 *loopfd_p =3D loopfd;
=A0 return 0;

error_close_loop:
=A0 close(loopfd);
error_close_memfd:
=A0 close(memfd);
error:
=A0 errno =3D err;
=A0 return -1;
}

static void reset_loop_device(const char* loopname)
{
=A0 int loopfd =3D open(loopname, O_RDWR);
=A0 if (loopfd =3D=3D -1) {
=A0 =A0 return;
=A0 }
=A0 if (ioctl(loopfd, LOOP_CLR_FD, 0)) {
=A0 }
=A0 close(loopfd);
}

static long syz_mount_image(volatile long fsarg, volatile long dir,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 volatile long flags=
, volatile long optsarg,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 volatile long chang=
e_dir,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 volatile unsigned l=
ong size, volatile long image)
{
=A0 unsigned char* data =3D (unsigned char*)image;
=A0 int res =3D -1, err =3D 0, need_loop_device =3D !!size;
=A0 char* mount_opts =3D (char*)optsarg;
=A0 char* target =3D (char*)dir;
=A0 char* fs =3D (char*)fsarg;
=A0 char* source =3D NULL;
=A0 char loopname[64];
=A0 if (need_loop_device) {
=A0 =A0 int loopfd;
=A0 =A0 memset(loopname, 0, sizeof(loopname));
=A0 =A0 snprintf(loopname, sizeof(loopname), "/dev/loop%llu", procid);
=A0 =A0 if (setup_loop_device(data, size, loopname, &loopfd) =3D=3D -1)
=A0 =A0 =A0 return -1;
=A0 =A0 close(loopfd);
=A0 =A0 source =3D loopname;
=A0 }
=A0 mkdir(target, 0777);
=A0 char opts[256];
=A0 memset(opts, 0, sizeof(opts));
=A0 if (strlen(mount_opts) > (sizeof(opts) - 32)) {
=A0 }
=A0 strncpy(opts, mount_opts, sizeof(opts) - 32);
=A0 if (strcmp(fs, "iso9660") =3D=3D 0) {
=A0 =A0 flags |=3D MS_RDONLY;
=A0 } else if (strncmp(fs, "ext", 3) =3D=3D 0) {
=A0 =A0 bool has_remount_ro =3D false;
=A0 =A0 char* remount_ro_start =3D strstr(opts, "errors=3Dremount-ro");
=A0 =A0 if (remount_ro_start !=3D NULL) {
=A0 =A0 =A0 char after =3D *(remount_ro_start + strlen("errors=3Dremount-ro=
"));
=A0 =A0 =A0 char before =3D remount_ro_start =3D=3D opts ? '\0' : *(remount=
_ro_start - 1);
=A0 =A0 =A0 has_remount_ro =3D ((before =3D=3D '\0' || before =3D=3D ',') &&
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (after =3D=3D '\0' || after=
 =3D=3D ','));
=A0 =A0 }
=A0 =A0 if (strstr(opts, "errors=3Dpanic") || !has_remount_ro)
=A0 =A0 =A0 strcat(opts, ",errors=3Dcontinue");
=A0 } else if (strcmp(fs, "xfs") =3D=3D 0) {
=A0 =A0 strcat(opts, ",nouuid");
=A0 }
=A0 res =3D mount(source, target, fs, flags, opts);
=A0 if (res =3D=3D -1) {
=A0 =A0 err =3D errno;
=A0 =A0 goto error_clear_loop;
=A0 }
=A0 res =3D open(target, O_RDONLY | O_DIRECTORY);
=A0 if (res =3D=3D -1) {
=A0 =A0 err =3D errno;
=A0 =A0 goto error_clear_loop;
=A0 }
=A0 if (change_dir) {
=A0 =A0 res =3D chdir(target);
=A0 =A0 if (res =3D=3D -1) {
=A0 =A0 =A0 err =3D errno;
=A0 =A0 }
=A0 }

error_clear_loop:
=A0 if (need_loop_device)
=A0 =A0 reset_loop_device(loopname);
=A0 errno =3D err;
=A0 return res;
}

#define FS_IOC_SETFLAGS _IOW('f', 2, long)
static void remove_dir(const char* dir)
{
=A0 int iter =3D 0;
=A0 DIR* dp =3D 0;
=A0 const int umount_flags =3D MNT_FORCE | UMOUNT_NOFOLLOW;

retry:
=A0 while (umount2(dir, umount_flags) =3D=3D 0) {
=A0 }
=A0 dp =3D opendir(dir);
=A0 if (dp =3D=3D NULL) {
=A0 =A0 if (errno =3D=3D EMFILE) {
=A0 =A0 =A0 exit(1);
=A0 =A0 }
=A0 =A0 exit(1);
=A0 }
=A0 struct dirent* ep =3D 0;
=A0 while ((ep =3D readdir(dp))) {
=A0 =A0 if (strcmp(ep->d_name, ".") =3D=3D 0 || strcmp(ep->d_name, "..") =
=3D=3D 0)
=A0 =A0 =A0 continue;
=A0 =A0 char filename[FILENAME_MAX];
=A0 =A0 snprintf(filename, sizeof(filename), "%s/%s", dir, ep->d_name);
=A0 =A0 while (umount2(filename, umount_flags) =3D=3D 0) {
=A0 =A0 }
=A0 =A0 struct stat st;
=A0 =A0 if (lstat(filename, &st))
=A0 =A0 =A0 exit(1);
=A0 =A0 if (S_ISDIR(st.st_mode)) {
=A0 =A0 =A0 remove_dir(filename);
=A0 =A0 =A0 continue;
=A0 =A0 }
=A0 =A0 int i;
=A0 =A0 for (i =3D 0;; i++) {
=A0 =A0 =A0 if (unlink(filename) =3D=3D 0)
=A0 =A0 =A0 =A0 break;
=A0 =A0 =A0 if (errno =3D=3D EPERM) {
=A0 =A0 =A0 =A0 int fd =3D open(filename, O_RDONLY);
=A0 =A0 =A0 =A0 if (fd !=3D -1) {
=A0 =A0 =A0 =A0 =A0 long flags =3D 0;
=A0 =A0 =A0 =A0 =A0 if (ioctl(fd, FS_IOC_SETFLAGS, &flags) =3D=3D 0) {
=A0 =A0 =A0 =A0 =A0 }
=A0 =A0 =A0 =A0 =A0 close(fd);
=A0 =A0 =A0 =A0 =A0 continue;
=A0 =A0 =A0 =A0 }
=A0 =A0 =A0 }
=A0 =A0 =A0 if (errno =3D=3D EROFS) {
=A0 =A0 =A0 =A0 break;
=A0 =A0 =A0 }
=A0 =A0 =A0 if (errno !=3D EBUSY || i > 100)
=A0 =A0 =A0 =A0 exit(1);
=A0 =A0 =A0 if (umount2(filename, umount_flags))
=A0 =A0 =A0 =A0 exit(1);
=A0 =A0 }
=A0 }
=A0 closedir(dp);
=A0 for (int i =3D 0;; i++) {
=A0 =A0 if (rmdir(dir) =3D=3D 0)
=A0 =A0 =A0 break;
=A0 =A0 if (i < 100) {
=A0 =A0 =A0 if (errno =3D=3D EPERM) {
=A0 =A0 =A0 =A0 int fd =3D open(dir, O_RDONLY);
=A0 =A0 =A0 =A0 if (fd !=3D -1) {
=A0 =A0 =A0 =A0 =A0 long flags =3D 0;
=A0 =A0 =A0 =A0 =A0 if (ioctl(fd, FS_IOC_SETFLAGS, &flags) =3D=3D 0) {
=A0 =A0 =A0 =A0 =A0 }
=A0 =A0 =A0 =A0 =A0 close(fd);
=A0 =A0 =A0 =A0 =A0 continue;
=A0 =A0 =A0 =A0 }
=A0 =A0 =A0 }
=A0 =A0 =A0 if (errno =3D=3D EROFS) {
=A0 =A0 =A0 =A0 break;
=A0 =A0 =A0 }
=A0 =A0 =A0 if (errno =3D=3D EBUSY) {
=A0 =A0 =A0 =A0 if (umount2(dir, umount_flags))
=A0 =A0 =A0 =A0 =A0 exit(1);
=A0 =A0 =A0 =A0 continue;
=A0 =A0 =A0 }
=A0 =A0 =A0 if (errno =3D=3D ENOTEMPTY) {
=A0 =A0 =A0 =A0 if (iter < 100) {
=A0 =A0 =A0 =A0 =A0 iter++;
=A0 =A0 =A0 =A0 =A0 goto retry;
=A0 =A0 =A0 =A0 }
=A0 =A0 =A0 }
=A0 =A0 }
=A0 =A0 exit(1);
=A0 }
}

static void kill_and_wait(int pid, int* status)
{
=A0 kill(-pid, SIGKILL);
=A0 kill(pid, SIGKILL);
=A0 for (int i =3D 0; i < 100; i++) {
=A0 =A0 if (waitpid(-1, status, WNOHANG | __WALL) =3D=3D pid)
=A0 =A0 =A0 return;
=A0 =A0 usleep(1000);
=A0 }
=A0 DIR* dir =3D opendir("/sys/fs/fuse/connections");
=A0 if (dir) {
=A0 =A0 for (;;) {
=A0 =A0 =A0 struct dirent* ent =3D readdir(dir);
=A0 =A0 =A0 if (!ent)
=A0 =A0 =A0 =A0 break;
=A0 =A0 =A0 if (strcmp(ent->d_name, ".") =3D=3D 0 || strcmp(ent->d_name, ".=
.") =3D=3D 0)
=A0 =A0 =A0 =A0 continue;
=A0 =A0 =A0 char abort[300];
=A0 =A0 =A0 snprintf(abort, sizeof(abort), "/sys/fs/fuse/connections/%s/abo=
rt",
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ent->d_name);
=A0 =A0 =A0 int fd =3D open(abort, O_WRONLY);
=A0 =A0 =A0 if (fd =3D=3D -1) {
=A0 =A0 =A0 =A0 continue;
=A0 =A0 =A0 }
=A0 =A0 =A0 if (write(fd, abort, 1) < 0) {
=A0 =A0 =A0 }
=A0 =A0 =A0 close(fd);
=A0 =A0 }
=A0 =A0 closedir(dir);
=A0 } else {
=A0 }
=A0 while (waitpid(-1, status, __WALL) !=3D pid) {
=A0 }
}

static void reset_loop()
{
=A0 char buf[64];
=A0 snprintf(buf, sizeof(buf), "/dev/loop%llu", procid);
=A0 int loopfd =3D open(buf, O_RDWR);
=A0 if (loopfd !=3D -1) {
=A0 =A0 ioctl(loopfd, LOOP_CLR_FD, 0);
=A0 =A0 close(loopfd);
=A0 }
}

static void setup_test()
{
=A0 prctl(PR_SET_PDEATHSIG, SIGKILL, 0, 0, 0);
=A0 setpgrp();
=A0 write_file("/proc/self/oom_score_adj", "1000");
=A0 if (symlink("/dev/binderfs", "./binderfs")) {
=A0 }
}

#define NL802154_CMD_SET_SHORT_ADDR 11
#define NL802154_ATTR_IFINDEX 3
#define NL802154_ATTR_SHORT_ADDR 10

static const char* setup_802154()
{
=A0 const char* error =3D NULL;
=A0 int sock_generic =3D -1;
=A0 int sock_route =3D socket(AF_NETLINK, SOCK_RAW, NETLINK_ROUTE);
=A0 if (sock_route =3D=3D -1) {
=A0 =A0 error =3D "socket(AF_NETLINK, SOCK_RAW, NETLINK_ROUTE) failed";
=A0 =A0 goto fail;
=A0 }
=A0 sock_generic =3D socket(AF_NETLINK, SOCK_RAW, NETLINK_GENERIC);
=A0 if (sock_generic =3D=3D -1) {
=A0 =A0 error =3D "socket(AF_NETLINK, SOCK_RAW, NETLINK_GENERIC) failed";
=A0 =A0 goto fail;
=A0 }
=A0 {
=A0 =A0 int nl802154_family_id =3D
=A0 =A0 =A0 =A0 netlink_query_family_id(&nlmsg, sock_generic, "nl802154", t=
rue);
=A0 =A0 if (nl802154_family_id < 0) {
=A0 =A0 =A0 error =3D "netlink_query_family_id failed";
=A0 =A0 =A0 goto fail;
=A0 =A0 }
=A0 =A0 for (int i =3D 0; i < 2; i++) {
=A0 =A0 =A0 char devname[] =3D "wpan0";
=A0 =A0 =A0 devname[strlen(devname) - 1] +=3D i;
=A0 =A0 =A0 uint64_t hwaddr =3D 0xaaaaaaaaaaaa0002 + (i << 8);
=A0 =A0 =A0 uint16_t shortaddr =3D 0xaaa0 + i;
=A0 =A0 =A0 int ifindex =3D if_nametoindex(devname);
=A0 =A0 =A0 struct genlmsghdr genlhdr;
=A0 =A0 =A0 memset(&genlhdr, 0, sizeof(genlhdr));
=A0 =A0 =A0 genlhdr.cmd =3D NL802154_CMD_SET_SHORT_ADDR;
=A0 =A0 =A0 netlink_init(&nlmsg, nl802154_family_id, 0, &genlhdr, sizeof(ge=
nlhdr));
=A0 =A0 =A0 netlink_attr(&nlmsg, NL802154_ATTR_IFINDEX, &ifindex, sizeof(if=
index));
=A0 =A0 =A0 netlink_attr(&nlmsg, NL802154_ATTR_SHORT_ADDR, &shortaddr,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sizeof(shortaddr));
=A0 =A0 =A0 if (netlink_send(&nlmsg, sock_generic) < 0) {
=A0 =A0 =A0 =A0 error =3D "NL802154_CMD_SET_SHORT_ADDR failed";
=A0 =A0 =A0 =A0 goto fail;
=A0 =A0 =A0 }
=A0 =A0 =A0 netlink_device_change(&nlmsg, sock_route, devname, true, 0, &hw=
addr,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 sizeof(hwaddr), 0);
=A0 =A0 =A0 if (i =3D=3D 0) {
=A0 =A0 =A0 =A0 netlink_add_device_impl(&nlmsg, "lowpan", "lowpan0", false);
=A0 =A0 =A0 =A0 netlink_done(&nlmsg);
=A0 =A0 =A0 =A0 netlink_attr(&nlmsg, IFLA_LINK, &ifindex, sizeof(ifindex));
=A0 =A0 =A0 =A0 if (netlink_send(&nlmsg, sock_route) < 0) {
=A0 =A0 =A0 =A0 =A0 error =3D "netlink: adding device lowpan0 type lowpan l=
ink wpan0";
=A0 =A0 =A0 =A0 =A0 goto fail;
=A0 =A0 =A0 =A0 }
=A0 =A0 =A0 }
=A0 =A0 }
=A0 }
fail:
=A0 close(sock_route);
=A0 close(sock_generic);
=A0 return error;
}

static void execute_one(void);

#define WAIT_FLAGS __WALL

static void loop(void)
{
=A0 int iter =3D 0;
=A0 for (;; iter++) {
=A0 =A0 char cwdbuf[32];
=A0 =A0 sprintf(cwdbuf, "./%d", iter);
=A0 =A0 if (mkdir(cwdbuf, 0777))
=A0 =A0 =A0 exit(1);
=A0 =A0 reset_loop();
=A0 =A0 int pid =3D fork();
=A0 =A0 if (pid < 0)
=A0 =A0 =A0 exit(1);
=A0 =A0 if (pid =3D=3D 0) {
=A0 =A0 =A0 if (chdir(cwdbuf))
=A0 =A0 =A0 =A0 exit(1);
=A0 =A0 =A0 setup_test();
=A0 =A0 =A0 execute_one();
=A0 =A0 =A0 exit(0);
=A0 =A0 }
=A0 =A0 int status =3D 0;
=A0 =A0 uint64_t start =3D current_time_ms();
=A0 =A0 for (;;) {
=A0 =A0 =A0 sleep_ms(10);
=A0 =A0 =A0 if (waitpid(-1, &status, WNOHANG | WAIT_FLAGS) =3D=3D pid)
=A0 =A0 =A0 =A0 break;
=A0 =A0 =A0 if (current_time_ms() - start < 5000)
=A0 =A0 =A0 =A0 continue;
=A0 =A0 =A0 kill_and_wait(pid, &status);
=A0 =A0 =A0 break;
=A0 =A0 }
=A0 =A0 remove_dir(cwdbuf);
=A0 }
}

uint64_t r[2] =3D {0xffffffffffffffff, 0xffffffffffffffff};

void execute_one(void)
{
=A0 intptr_t res =3D 0;
=A0 if (write(1, "executing program\n", sizeof("executing program\n") - 1))=
 {
=A0 }
=A0 memcpy((void*)0x20005dc0, "jfs\000", 4);
=A0 memcpy((void*)0x20000080, "./file1\000", 8);
=A0 *(uint8_t*)0x200000c0 =3D 0;
=A0 memcpy(
=A0 =A0 =A0 (void*)0x2000bc00,
=A0 =A0 =A0 "\x78\x9c\xec\xdd\x4b\x8f\x14\xd7\xd9\x07\xf0\xa7\x2f\xd3\x73\x=
e1\x35\x8c"
=A0 =A0 =A0 "\x2c\xbd\x96\x85\xb2\x18\x63\xe7\x42\x30\x30\x5c\x0c\xb9\xdb\x=
de\x24\x52"
=A0 =A0 =A0 "\x56\x91\x22\x36\x59\x81\xc6\x63\x0b\x05\x27\x11\x90\x28\xb6\x=
50\x18\x6b"
=A0 =A0 =A0 "\x16\xf9\x06\x51\xb2\x48\x94\xec\xb3\xca\x27\xc8\x1e\x3e\x84\x=
17\x59\x06"
=A0 =A0 =A0 "\x09\x92\x8d\x57\xa9\xa8\x66\xce\x81\x9a\xa2\x67\x7a\x08\x4c\x=
57\x33\xe7"
=A0 =A0 =A0 "\xf7\x93\x9a\xaa\xa7\x4e\x55\xf7\x29\xfe\x7d\x9d\xae\xea\x13\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\xfc\xf0\xfb\x3f\x=
3e\xd7\x8b"
=A0 =A0 =A0 "\x88\xab\xbf\x4a\x0b\x96\x23\xfe\x2f\x06\x11\xfd\x88\xc5\xba\x=
5e\x89\x88"
=A0 =A0 =A0 "\xc5\x95\xe5\xbc\xfe\x30\x22\x5e\x8f\xad\xe6\x78\xad\x5e\x7d\x=
3e\xa2\xde"
=A0 =A0 =A0 "\x7e\xeb\x9f\x63\x11\x17\x23\xe2\xfe\xd1\x88\x87\x8f\xee\xac\x=
d5\x8b\xcf"
=A0 =A0 =A0 "\xef\xb3\x1f\xff\x3e\xf2\xff\xc7\xfe\xf9\xd7\x1f\x9c\xfe\xfd\x=
df\x7e\x77"
=A0 =A0 =A0 "\xef\xe4\x1f\x4f\xbd\xdd\x6e\xff\xd3\xfa\x3f\xee\xfd\xe4\x6e\x=
ba\x2d\x00"
=A0 =A0 =A0 "\x00\x00\xe0\x99\x54\x55\x55\xf5\xd2\xc7\xfc\xe3\xe9\xf3\x7d\x=
bf\xeb\x4e"
=A0 =A0 =A0 "\x01\x00\x53\x91\x5f\xff\xab\x24\x2f\x57\xab\xd5\x6a\xb5\x5a\x=
7d\xf8\xea"
=A0 =A0 =A0 "\xa6\x6a\xbc\xbb\xcd\x22\x22\x36\x9a\xdb\xd4\xef\x19\xee\x8e\x=
bb\x32\x00"
=A0 =A0 =A0 "\x60\x76\x6d\xc4\x17\x5d\x77\x81\x0e\xc9\xbf\x68\xc3\x88\x38\x=
d2\x75\x27"
=A0 =A0 =A0 "\x80\x99\xe6\xb8\xfb\xc3\xe9\xe1\xa3\x3b\x6b\xbd\x94\x6f\xaf\x=
f9\x7a\xb0"
=A0 =A0 =A0 "\xb2\xdd\x9e\x8f\x05\xd9\x91\xff\x46\xef\xf1\xf9\x1d\xbb\x4d\x=
27\x69\x1f"
=A0 =A0 =A0 "\x63\x32\xad\xfb\xd7\x66\x0c\xe2\xd5\x5d\xfa\xb3\x38\xa5\x3e\x=
cc\x92\x9c"
=A0 =A0 =A0 "\x7f\xbf\x9d\xff\xd5\xed\xf6\x51\x5a\xef\xa0\xf3\x9f\x96\xdd\x=
f2\x1f\x6d"
=A0 =A0 =A0 "\x9f\xfa\x54\x9c\x9c\xff\xa0\x9d\x7f\xcb\xe1\xc9\xbf\x3f\x36\x=
ff\x52\xe5"
=A0 =A0 =A0 "\xfc\x87\xcf\x94\xff\x40\xfe\x00\x00\x00\x00\x00\x30\xc3\xf2\x=
df\xff\x97"
=A0 =A0 =A0 "\x3b\xfe\xfe\x77\xfe\xf9\x77\x65\x5f\xf6\xfa\xfe\x77\x65\x4a\x=
7d\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x80\x17\xed\x79\xc7\xff\x7b\xcc\xf8\x7f\x=
00\x00\x00"
=A0 =A0 =A0 "\x30\xb3\xea\xcf\xea\xb5\x3f\x1f\x7d\xb2\x6c\xb7\xcf\xd8\xf5\x=
f2\x2b\xbd"
=A0 =A0 =A0 "\x88\x57\x5a\xeb\x03\x85\x49\x27\xcb\x2c\x75\xdd\x0f\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x28\xc9\x70\xfb\x18\xde\x2b\xbd\x88\xb9\x=
88\x78\x65"
=A0 =A0 =A0 "\x69\xa9\xaa\xaa\xfa\xd2\xd4\xae\x9f\xd5\xf3\x6e\xff\xb2\x2b\x=
7d\xff\xa1"
=A0 =A0 =A0 "\x64\x5d\x3f\xc9\x03\x00\xc0\xb6\xfb\x47\x5b\xe7\xf2\xf7\x22\x=
16\x22\xe2"
=A0 =A0 =A0 "\x4a\xfa\xad\xbf\xb9\xa5\xa5\xa5\xaa\x5a\x58\x5c\xaa\x96\xaa\x=
c5\xf9\xfc"
=A0 =A0 =A0 "\x7e\x76\x34\xbf\x50\x2d\x36\x3e\xd7\xe6\x69\xbd\x6c\x7e\xb4\x=
8f\x37\xc4"
=A0 =A0 =A0 "\xc3\x51\x55\x5f\xd9\x42\x63\xbb\xa6\x49\x9f\x97\x27\xb5\xb7\x=
af\xaf\xbe"
=A0 =A0 =A0 "\xad\x51\x35\xd8\x47\xc7\xa6\xa3\xc3\xc0\x01\x20\x22\xb6\x5f\x=
8d\x1e\x7a"
=A0 =A0 =A0 "\x45\x3a\x64\xaa\xea\x58\x74\xfd\x2e\x87\x97\x83\xc7\xff\xe1\x=
e3\xf1\xcf"
=A0 =A0 =A0 "\x7e\x74\x7d\x3f\x05\x00\x00\x00\x0e\x5e\x55\x55\x55\x2f\xfd\x=
9c\xf7\xf1"
=A0 =A0 =A0 "\xf4\x9d\x7f\xbf\xeb\x4e\x01\x00\x53\x91\x5f\xff\xdb\xdf\x0b\x=
a8\xd5\x6a"
=A0 =A0 =A0 "\xb5\x5a\xad\x3e\x7c\x75\x53\x35\xde\xdd\x66\x11\x11\x1b\xcd\x=
6d\xea\xf7"
=A0 =A0 =A0 "\x0c\x77\xc7\x5d\x19\x00\x30\xbb\x36\xe2\x8b\xae\xbb\x40\x87\x=
e4\x5f\xb4"
=A0 =A0 =A0 "\x61\x44\xbc\xde\x75\x27\x80\x99\xd6\xeb\xba\x03\x1c\x88\x87\x=
8f\xee\xac"
=A0 =A0 =A0 "\xf5\x52\xbe\xbd\xe6\xeb\x41\x1a\xdf\x3d\x1f\x0b\xb2\x23\xff\x=
8d\xde\xd6"
=A0 =A0 =A0 "\x76\x79\xfb\x71\xd3\x49\xda\xc7\x98\x4c\xeb\xfe\xb5\x19\x83\x=
78\x75\x97"
=A0 =A0 =A0 "\xfe\xbc\x36\xa5\x3e\xcc\x92\x9c\x7f\xbf\x9d\xff\xd5\xed\xf6\x=
51\x5a\xef"
=A0 =A0 =A0 "\xa0\xf3\x9f\x96\xdd\xf2\xaf\xf7\x73\xb9\x83\xfe\x74\x2d\xe7\x=
3f\x68\xe7"
=A0 =A0 =A0 "\xdf\x72\x78\xf2\xef\x8f\xcd\xbf\x54\x39\xff\xe1\x33\xe5\x3f\x=
90\x3f\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\xcc\xb0\xfc\xf7\xff\x65\xdf\xff\xe6\x5d\x06\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x80\x97\xce\xc3\x47\x77\xd6\xf2\x79\xaf\xf9\xfb\x=
ff\x2f\x8d"
=A0 =A0 =A0 "\x59\xcf\xf9\x9f\x87\x53\xce\xbf\x27\xff\x22\xe5\xfc\xfb\xad\x=
fc\xbf\xd6"
=A0 =A0 =A0 "\x5a\x6f\xd0\x98\x7f\xf0\xfe\x93\xfc\xff\xf5\xe8\xce\xda\x8f\x=
fe\xf0\xf9"
=A0 =A0 =A0 "\xf1\x3c\xdd\x6f\xfe\xf3\x79\xa6\x97\xee\x59\xbd\x74\x8f\xe8\x=
a5\x5b\xea"
=A0 =A0 =A0 "\x0d\xd3\xf4\x79\xf6\xee\x69\x9b\x73\x83\x51\x7d\x4b\x73\xbd\x=
fe\x60\x98"
=A0 =A0 =A0 "\x8e\xf9\xa9\xe6\x3e\x8c\xeb\x71\x23\xd6\x63\x75\xc7\xba\xfd\x=
f4\xff\xf1"
=A0 =A0 =A0 "\xa4\xfd\xdc\x8e\xf6\xba\xa7\x73\x3b\xda\xcf\xef\x68\x1f\x3e\x=
d5\x7e\x61"
=A0 =A0 =A0 "\x47\xfb\x5c\xfa\xdd\x81\x6a\x31\xb7\x9f\x89\xb5\xf8\x79\xdc\x=
88\x0f\xb6"
=A0 =A0 =A0 "\xda\xeb\xb6\xf9\x09\xfb\xbf\x30\xa1\xbd\x9a\xd0\x9e\xf3\x1f\x=
78\xfc\x17"
=A0 =A0 =A0 "\x29\xe7\x3f\x6c\x5c\xea\xfc\x97\x52\x7b\xaf\x35\xad\x3d\xf8\x=
ac\xff\xd4"
=A0 =A0 =A0 "\xe3\xbe\x39\x1d\x77\x3b\xef\xfd\xf6\xde\xfd\xd5\x83\xdf\x9d\x=
89\x36\x63"
=A0 =A0 =A0 "\xf0\x78\xdf\x9a\xea\xfd\x3b\xd1\x41\x7f\xb6\xfe\x4f\x8e\x8c\x=
e2\x97\xb7"
=A0 =A0 =A0 "\xd6\x6f\x9e\xf9\xf5\xb5\xdb\xb7\x6f\x9e\x8b\x34\xd9\xb1\xf4\x=
7c\xa4\xc9"
=A0 =A0 =A0 "\x0b\x96\xf3\x9f\x4b\x97\xc7\xcf\xff\x6f\x6e\xb7\xe7\xe7\xfd\x=
e6\xe3\xf5"
=A0 =A0 =A0 "\xc1\x67\xa3\x67\xce\x7f\x56\x6c\xc6\x70\xd7\xfc\xdf\x6c\xcc\x=
d7\xfb\x7b"
=A0 =A0 =A0 "\x72\xca\x7d\xeb\x42\xce\x7f\x94\x2e\x39\xff\x0f\x52\xfb\xf8\x=
c7\xff\x4b"
=A0 =A0 =A0 "\x9b\xff\x5c\xec\xf1\xf8\x3f\xd5\x41\x87\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x60\x2f\x55\x55\x6d\x9d\x22\xfa\x5e\x44\x5c\x=
4a\xe7\xff"
=A0 =A0 =A0 "\x74\x75\x6e\x26\x00\x30\x5d\xf9\xf5\xbf\x4a\xf2\x72\xb5\x5a\x=
ad\x3e\x4c"
=A0 =A0 =A0 "\xf5\x28\x66\xab\x3f\x6a\x75\x57\x75\x53\x35\xde\xbb\xcd\x22\x=
22\xfe\xde"
=A0 =A0 =A0 "\xdc\xa6\x7e\xcf\xf0\x9b\x71\x57\x06\x00\xcc\xb2\xff\x44\xc4\x=
e7\x5d\x77"
=A0 =A0 =A0 "\x82\xce\xc8\xbf\x60\xf9\xf7\xfe\xea\xe9\x5b\x5d\x77\x06\x98\x=
aa\x5b\x9f"
=A0 =A0 =A0 "\x7c\xfa\xd3\x6b\x37\x6e\xac\xdf\xbc\xd5\x75\x4f\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x80\xff\x55\x1e\xff\x73\xa5\x31\xfe\xf3\x5b\x11\xb1\xdc\x=
5a\x6f\xc7"
=A0 =A0 =A0 "\xf8\xaf\xef\xc7\xca\xf3\x8e\xff\x39\xcc\x33\x8f\x07\x18\x7d\x=
c1\x03\x7d"
=A0 =A0 =A0 "\xef\x62\xb3\x3f\x1a\xf4\x1b\xc3\x8d\xbf\x11\x7b\x8f\xff\x7d\x=
22\xf6\x1e"
=A0 =A0 =A0 "\xff\x7b\x38\xe1\xf6\xe6\x26\xb4\x8f\x26\xb4\xcf\x4f\x68\x5f\x=
98\xd0\x3e"
=A0 =A0 =A0 "\xf6\x44\x8f\x86\x9c\xff\x1b\x8d\xf1\xce\xeb\xfc\x8f\xb7\x86\x=
5f\x3f\x24"
=A0 =A0 =A0 "\xe3\xbf\xee\x39\xfe\x73\x7b\xcc\xfb\x12\xe4\xfc\x4f\x34\xee\x=
cf\x75\xfe"
=A0 =A0 =A0 "\x5f\x6d\xad\xd7\xcc\xbf\xfa\xcb\xcb\x9c\x7f\x7f\x47\xfe\x67\x=
6f\x7f\xfc"
=A0 =A0 =A0 "\x8b\xb3\xb7\x3e\xf9\xf4\xf4\xf5\x8f\xaf\x7d\xb4\xfe\xd1\xfa\x=
cf\x2e\xae"
=A0 =A0 =A0 "\xae\x5e\xba\x70\xf9\x9d\xd5\xcb\xab\x67\x3f\xbc\x7e\x63\x3d\x=
fd\xdb\x61"
=A0 =A0 =A0 "\x8f\x0f\x56\xce\x3f\x8f\x7d\xed\x38\xd0\xb2\xe4\xfc\x73\xe6\x=
f2\x2f\x4b"
=A0 =A0 =A0 "\xce\xff\xcb\xa9\x96\x7f\x59\x72\xfe\x5f\x49\xb5\xfc\xcb\x92\x=
f3\xcf\xef"
=A0 =A0 =A0 "\xf7\xe4\x5f\x96\x9c\x7f\xfe\xec\x23\xff\xb2\xe4\xfc\x4f\xa6\x=
5a\xfe\x65"
=A0 =A0 =A0 "\xc9\xf9\x7f\x3d\xd5\xf2\x2f\x4b\xce\xff\x54\xaa\xe5\x5f\x96\x=
9c\xff\xdb"
=A0 =A0 =A0 "\xa9\x96\x7f\x59\x72\xfe\xa7\x53\x2d\xff\xb2\xe4\xfc\xcf\xa4\x=
5a\xfe\x65"
=A0 =A0 =A0 "\xc9\xf9\x9f\x4d\xb5\xfc\xcb\x92\xf3\xcf\xdf\x70\xc9\xbf\x2c\x=
39\xff\x7c"
=A0 =A0 =A0 "\x64\x83\xfc\xcb\x92\xf3\x3f\x9f\x6a\xf9\x97\x25\xe7\x7f\x21\x=
d5\xf2\x2f"
=A0 =A0 =A0 "\x4b\xce\xff\x62\xaa\xe5\x5f\x96\x9c\xff\x3b\xa9\x96\x7f\x59\x=
72\xfe\x97"
=A0 =A0 =A0 "\x52\x2d\xff\xb2\xe4\xfc\x2f\xa7\x5a\xfe\x65\xc9\xf9\x7f\x23\x=
d5\xf2\x2f"
=A0 =A0 =A0 "\x4b\xce\xff\x9b\xa9\x96\x7f\x59\x72\xfe\xdf\x4a\xb5\xfc\xcb\x=
92\xf3\xff"
=A0 =A0 =A0 "\x76\xaa\xe5\x5f\x96\x9c\xff\x77\x52\x2d\xff\xb2\xe4\xfc\xbf\x=
9b\x6a\xf9"
=A0 =A0 =A0 "\x97\x25\xe7\xff\xbd\x54\xcb\xbf\x2c\x39\xff\x77\x53\x2d\xff\x=
b2\x3c\xf9"
=A0 =A0 =A0 "\xfd\x7f\x33\x66\xcc\x98\xc9\x33\x5d\x3f\x33\x01\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x6d\xd3\x38\x9c\xb8\xeb\x7d\x04\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe0\xbf\xec\xc0\x=
81\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x90\xff\x6b\x23\x54\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x55"
=A0 =A0 =A0 "\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x55\x=
55\x55\x61"
=A0 =A0 =A0 "\x07\x0e\x04\x00\x00\x00\x00\x80\xfc\x5f\x1b\xa1\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x=
aa\xaa\xaa"
=A0 =A0 =A0 "\xaa\xaa\xaa\x0a\x7b\xf7\x1a\x23\xd7\x59\xde\x01\xfc\xec\x7a\x=
d7\x59\x3b"
=A0 =A0 =A0 "\x5c\xb6\x10\x82\x1b\x02\xac\x1d\x13\x4c\xb2\x64\xd7\xf7\x98\x=
d6\xb0\xdc"
=A0 =A0 =A0 "\x4a\x9a\x90\x96\x02\xa1\x2d\xbd\x18\xd7\x5e\x1b\x83\x6f\x78\x=
6d\x6e\x8a"
=A0 =A0 =A0 "\x14\xa3\xd0\x12\xa9\x51\x1b\xa9\x7c\x80\x0f\xe5\x56\xa4\xf2\x=
a5\x22\x02"
=A0 =A0 =A0 "\x54\x51\x95\x22\x57\x6a\x05\x12\x48\xe4\x13\xad\xd4\x36\xa4\x=
0a\x54\x11"
=A0 =A0 =A0 "\x85\xd6\xd0\x7e\x80\x8a\xb0\xd5\xcc\xbc\xcf\xeb\x99\xf1\xec\x=
c5\x67\x36"
=A0 =A0 =A0 "\xce\xcc\x39\xbf\x9f\x14\x3f\xf6\xec\x99\x99\x77\xce\xbc\x33\x=
bb\xff\x75"
=A0 =A0 =A0 "\xfe\x6b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x=
00\x00\x00"
=A0 =A0 =A0 "\x00\x00\x00\x00\x00\x00\x00\xa0\xdd\xe6\xd7\xce\x7f\x64\xa4\x=
28\x8a\xc6"
=A0 =A0 =A0 "\x7f\xcd\x5f\x26\x8b\xe2\x19\x8d\xdf\x6f\x98\x9a\x6c\xfc\x71\x=
eb\x2b\x9e"
=A0 =A0 =A0 "\xee\x15\x02\x00\x00\x00\xfd\x7a\xb2\xf9\xeb\xc5\x67\xe7\x0b\x=
e6\x56\x71"
=A0 =A0 =A0 "\xa5\xb6\x63\xbe\xf6\xa2\x6f\x7d\x69\x71\x71\x71\xb1\x78\xf4\x=
7b\x2f\x7b"
=A0 =A0 =A0 "\xfe\x47\x17\x17\xf3\x07\xa6\x8a\x62\xf2\x9a\xa2\x68\x7e\x2c\x=
3c\x71\xf7"
=A0 =A0 =A0 "\xdf\x6e\x6d\x3f\x26\xb9\xbf\x98\x18\x19\x6d\xfb\xf3\xe8\x0a\x=
77\xbf\x6e"
=A0 =A0 =A0 "\x85\x8f\x8f\xad\xf0\xf1\xf1\x15\x3e\xbe\x7e\x85\x8f\x5f\xb3\x=
c2\xc7\x27"
=A0 =A0 =A0 "\x56\xf8\xf8\x65\x27\xe0\x32\x1b\x5a\xdf\x8f\x69\xde\xd8\xd6\x=
e6\x6f\x27"
=A0 =A0 =A0 "\x5b\xa7\xb4\xb8\xae\x18\x6f\x7e\x6c\x6b\x8f\x6b\xdd\x3f\x72\x=
cd\xe8\x68"
=A0 =A0 =A0 "\x7c\x2f\xa7\x69\xa4\x79\x9d\xc5\xf1\x23\xc5\xb1\xe2\x78\x31\x=
5f\xcc\x76"
=A0 =A0 =A0 "\x1c\xdf\x3a\x76\xa4\x79\xfc\x57\x36\x37\xee\xeb\x8e\x22\xee\x=
6b\xb4\xed"
=A0 =A0 =A0 "\xbe\x6e\x6c\xec\x90\x1f\xdd\x7b\x28\xd6\x30\x92\xce\xf1\xd6\x=
8e\xfb\xba"
=A0 =A0 =A0 "\x74\x9b\xe1\x87\xaf\x2e\xa6\x7e\xfc\xa3\x7b\x0f\xbd\xe9\xe3\x=
8f\xdd\xd0"
=A0 =A0 =A0 "\x6b\xae\x78\x1a\x3a\x6e\xaf\xb5\xce\x6d\x5b\x1a\xeb\xfc\x70\x=
ba\xa4\xb5"
=A0 =A0 =A0 "\xd6\x91\xe2\x9a\x7c\x4e\x62\x9d\xa3\x6d\xeb\xbc\xb1\xc7\x73\x=
b2\xae\x63"
=A0 =A0 =A0 "\x9d\x23\xcd\xeb\x35\x7e\xdf\xbd\xce\x8b\xab\x5c\xe7\xba\x4b\x=
cb\xbc\xaa"
=A0 =A0 =A0 "\xba\x9f\xf3\x89\x62\xb4\xf9\xfb\x47\x9a\xe7\x69\xac\xfd\xdb\x=
7a\xf9\x3c"
=A0 =A0 =A0 "\xdd\x98\x2e\xfb\xc9\x4d\x45\x51\x9c\xbf\xb4\xec\xee\x63\x2e\x=
bb\xaf\x62"
=A0 =A0 =A0 "\xb4\xd8\xd8\x71\xc9\xe8\xa5\xe7\x67\xa2\xb5\x23\x1b\xb7\xd1\x=
d8\x4a\xcf"
=A0 =A0 =A0 "\x29\xc6\xae\x68\x9f\x6e\x5e\xc5\x3e\x6d\xcc\xc3\x5b\x3b\xf7\x=
69\xf7\x6b"
=A0 =A0 =A0 "\x22\x9e\xff\xcd\xe9\x7a\x63\x4b\xac\xa1\xfd\x69\xfa\xe1\x87\x=
d6\x5f\xf6"
=A0 =A0 =A0 "\xbc\x5f\xe9\x3e\x0d\x8d\x47\xbd\xd4\x6b\xa5\x7b\x0f\xae\xf5\x=
6b\x65\x50"
=A0 =A0 =A0 "\xf6\x60\xec\x8b\x47\x9a\x0f\xfa\x81\x9e\x7b\x70\x6b\x7a\xfc\x=
f7\xde\xbc"
=A0 =A0 =A0 "\xf4\x1e\xec\xb9\x77\x7a\xec\xc1\xfc\xb8\xdb\xf6\xe0\x96\x95\x=
f6\xe0\xe8"
=A0 =A0 =A0 "\xfa\x75\xcd\x35\xe7\x27\x61\xa4\x79\x9d\x4b\x7b\x70\x7b\xc7\x=
f1\xeb\x9a"
=A0 =A0 =A0 "\xf7\x34\xd2\x9c\x4f\xdc\xbc\xfc\x1e\x9c\x39\x7b\xe2\xf4\xcc\x=
c2\x07\x3e"
=A0 =A0 =A0 "\xf8\xf2\x63\x27\x0e\x1e\x9d\x3f\x3a\x7f\x72\xd7\xec\xec\x9e\x=
9d\x7b\x77"
=A0 =A0 =A0 "\xcf\xee\x9d\x9d\x39\x72\xec\xf8\x7c\xfa\xb5\xe4\xd9\x1e\x7c\x=
1b\x8b\xd1"
=A0 =A0 =A0 "\xfc\x1a\xd8\x92\xce\x5d\xbc\x06\x5e\xda\x75\x6c\xfb\x56\x5d\x=
fc\xf4\xda"
=A0 =A0 =A0 "\xbd\x0e\x27\x96\x79\x1d\x4e\x76\x1d\xbb\xd6\xaf\xc3\xb1\xee\x=
07\x37\x72"
=A0 =A0 =A0 "\x75\x5e\x90\x97\xef\xe9\xd6\x6b\xe3\xad\x8d\x93\x3e\xf1\xe0\x=
68\xb1\xc4"
=A0 =A0 =A0 "\x6b\xac\xf9\xfc\xdc\xd2\xff\xeb\x30\x3f\xee\xb6\xd7\xe1\x58\x=
db\xeb\xb0"
=A0 =A0 =A0 "\xe7\xe7\x94\x1e\xaf\xc3\xb1\x55\xbc\x0e\x1b\xc7\x9c\xbe\x65\x=
75\x5f\xb3"
=A0 =A0 =A0 "\x8c\xb5\xfd\xd7\x6b\x0d\x4f\xd5\xe7\x82\xc9\xb6\x3d\xd8\xfd\x=
f5\x48\xf7"
=A0 =A0 =A0 "\x1e\x5c\xeb\xaf\x47\x06\x65\x0f\x4e\xa4\x7d\xf1\xaf\xb7\x2c\x=
fd\xb9\xe0"
=A0 =A0 =A0 "\xc6\xb4\xde\x07\xa6\xaf\xf4\xeb\x91\x75\x97\xed\xc1\xfc\x70\x=
d3\x7b\x4f"
=A0 =A0 =A0 "\xe3\x92\xfc\xf5\xfe\xc4\xed\xcd\xd1\x6b\x5f\xde\xd0\xf8\xc0\x=
b5\xeb\x8b"
=A0 =A0 =A0 "\x73\x0b\xf3\x67\x6e\x7b\xff\xc1\xb3\x67\xcf\x6c\x2f\xd2\xb8\x=
2a\x9e\xdb"
=A0 =A0 =A0 "\xb6\x57\xba\xf7\xeb\xc6\xb6\xc7\x54\x5c\xb6\x5f\x47\xaf\x78\x=
bf\xce\x7d"
=A0 =A0 =A0 "\xe4\x1b\xdf\xbc\xa1\xc7\xe5\x93\xe9\x5c\x4d\xbc\xbc\xf1\xcb\x=
c4\x92\xcf"
=A0 =A0 =A0 "\x55\xe3\x98\x5d\xb7\x2d\xff\x5c\x35\x3f\xbb\xf5\x3e\x9f\x1d\x=
97\xee\x28"
=A0 =A0 =A0 "\xd2\x58\x63\x57\xfb\x7c\xf6\xfa\x6c\xde\x38\x9f\x39\x4b\x2e\x=
73\x3e\x1b"
=A0 =A0 =A0 "\xc7\x7c\x78\xa6\xff\xaf\xc5\x73\x2e\x6d\x7b\xff\x1d\x5f\xe2\x=
fd\x37\x72"
=A0 =A0 =A0 "\xff\xcf\x9b\xf7\xb3\x35\xdf\xd4\xfd\xeb\xc6\xc7\x5a\xaf\xdf\x=
75\xf9\xec"
=A0 =A0 =A0 "\x8c\x77\xbc\x1f\x77\x3e\x55\x63\xcd\xf7\xae\x91\xe6\x7d\x5f\x=
9c\x59\xdd"
=A0 =A0 =A0 "\xfb\xf1\x78\xfa\xef\x6a\xbf\x1f\x5f\xb7\xcc\xfb\xf1\xa6\xae\x=
63\xd7\xfa"
=A0 =A0 =A0 "\xfd\x78\xbc\xfb\xc1\xc5\xfb\xf1\xc8\x4a\xdf\xed\xe8\x4f\xf7\x=
f3\x39\x91"
=A0 =A0 =A0 "\xf6\xc9\xf1\xd9\xe5\xdf\x8f\x1b\xc7\x6c\xda\x71\xa5\x7b\x72\x=
6c\xd9\xf7"
=A0 =A0 =A0 "\xe3\x9b\xd2\x1c\x49\xe7\xff\x65\x29\x29\xe4\x5c\xd4\xb6\x77\x=
96\xda\xb7"
=A0 =A0 =A0 "\xf9\xbe\xc6\xc6\xc6\xd3\xe3\x1a\x8b\x7b\xe8\xdc\xa7\x3b\x3b\x=
8e\x1f\x4f"
=A0 =A0 =A0 "\xd9\xac\x71\x5f\x9f\xdb\x51\x6e\x9f\x6e\xbb\xa9\x75\x5b\xeb\x=
f2\xa3\xbb"
=A0 =A0 =A0 "\xe4\x6a\xed\xd3\xa9\xae\x63\xd7\x7a\x9f\xe6\xf7\xab\xa5\xf6\x=
e9\xc8\x4a"
=A0 =A0 =A0 "\xdf\x7d\x2b\xa7\xfb\xf9\x9c\x48\xfb\xe2\xba\x9d\xcb\xef\xd3\x=
c6\x31\x17"
=A0 =A0 =A0 "\x76\xf5\xff\xde\xb9\x21\x7e\xdb\xf6\xde\xb9\x7e\xa5\x3d\x38\x=
be\x6e\x7d"
=A0 =A0 =A0 "\x63\xcd\xe3\x79\x13\xb6\xde\xef\x17\x37\xc4\x1e\xbc\xad\x38\x=
54\x9c\x2a"
=A0 =A0 =A0 "\x8e\x17\x87\x9b\x1f\x5d\xdf\xdc\x4f\x23\xcd\xfb\x9a\xde\xbd\x=
ba\x3d\xb8"
=A0 =A0 =A0 "\x3e\xfd\x77\xb5\xdf\x2b\x37\x2d\xb3\x07\xb7\x75\x1d\xbb\xd6\x=
7b\x30\x7f"
=A0 =A0 =A0 "\x1e\x5b\x6a\xef\x8d\x8c\x5d\xfe\xe0\xd7\x40\xf7\xf3\x39\x91\x=
f6\xc5\xc7"
=A0 =A0 =A0 "\x76\x2f\xbf\x07\x1b\xc7\xbc\x6e\xef\xda\x7e\xed\xba\x2d\x5d\x=
92\x8f\x69"
=A0 =A0 =A0 "\xfb\xda\xb5\xfb\xfb\x6b\x4b\x7d\xcf\xeb\x86\xae\xd3\xf4\x54\x=
7e\xcf\xab"
=A0 =A0 =A0 "\xb1\xce\x7f\xd8\xbb\xfc\xf7\x66\x1b\xc7\x1c\xbf\xfd\x4a\x73\x=
e6\xf2\xe7"
=A0 =A0 =A0 "\xe9\xd6\x74\xc9\xb5\x3d\xce\x53\xf7\xeb\x77\xa9\xd7\xd4\xe1\x=
e2\xea\x9c"
=A0 =A0 =A0 "\xa7\x4d\x69\x9d\x3f\xb8\x7d\xe9\xf3\xd4\x58\x4f\xe3\x98\x8f\x=
ee\x5b\xe5"
=A0 =A0 =A0 "\x7e\x9a\x2b\x8a\xe2\x8b\x77\xcd\x35\xbf\xdf\x9b\xfe\x7e\xe5\x=
0b\xe7\xbe"
=A0 =A0 =A0 "\xfd\xa5\x8e\xbf\x77\x99\x6b\x7d\xec\xcb\xfb\x2e\xdd\xd6\x65\x=
5f\x75\xf4"
=A0 =A0 =A0 "\xfa\x7b\x9f\x2f\xde\x35\x77\xe1\x9f\xef\xfc\xe9\x95\x3c\x46\x=
00\x06\xdb"
=A0 =A0 =A0 "\xcf\x9b\xbf\x6e\xdd\xd8\xfa\x5c\xd7\xf6\x37\x53\xab\xf9\xfb\x=
7f\x00\x00"
=A0 =A0 =A0 "\x00\x60\x28\x44\xee\x1f\x4d\x33\x93\xff\x01\x00\x00\xa0\x32\x=
22\xf7\xc7"
=A0 =A0 =A0 "\xff\x15\x9e\xc9\xff\x00\x00\x00\x50\x19\x91\xfb\xc7\xd2\xcc\x=
6a\x92\xff"
=A0 =A0 =A0 "\x1f\xf8\xb7\xe7\xbd\xfb\x67\xf7\x15\xb9\x99\xbf\x98\xc4\xc7\x=
e3\x34\x9c"
=A0 =A0 =A0 "\x7e\xbc\x75\x5c\x74\x5c\x3f\x95\xfe\x3c\xb5\x78\x49\xe3\xf2\x=
d7\x7c\xf6"
=A0 =A0 =A0 "\x1f\xbf\xf1\xf6\xfb\x56\x77\xdf\xa3\x45\x51\xfc\xec\xce\x7f\x=
e9\x79\xfc"
=A0 =A0 =A0 "\x03\x8f\xc7\xba\x5a\x1e\x4a\xeb\x9c\xfa\x4e\xe7\xe5\x97\xd9\x=
f4\x9d\x55"
=A0 =A0 =A0 "\xdd\xff\x3b\xee\xb9\x74\x5c\x7b\x07\x70\x32\xdd\x7e\x3c\x9e\x=
ee\x6d\xf0"
=A0 =A0 =A0 "\x95\xff\x7e\xbc\x79\xbd\xa9\x7d\xad\x79\xe1\xce\x0b\xcd\xf9\x=
e6\xf3\x0f"
=A0 =A0 =A0 "\xdc\xdf\xf8\xf8\xc5\x7d\xad\x3f\x47\x77\xf2\x89\xff\x69\x1d\x=
f7\xe7\xa9"
=A0 =A0 =A0 "\xcc\x3b\x77\xe4\xef\x3b\xae\xbf\xed\xd1\xd6\xfd\x6d\x7d\x74\x=
f9\xc7\x15"
=A0 =A0 =A0 "\xd7\xfb\xfc\x1b\x37\xdc\xf5\x82\xb7\x5d\xba\xbf\xb8\xde\xc8\x=
96\x67\x35"
=A0 =A0 =A0 "\x1f\xc6\xc7\x5e\xd9\xba\xdd\xf8\xb9\x37\x0f\xbd\xb6\x75\xfc\x=
c5\x74\xdc"
=A0 =A0 =A0 "\x52\xeb\xff\xbb\x3f\xfe\xdc\xe7\x1b\xc7\xbf\xff\x25\xbd\xd7\x=
7f\xdf\x68"
=A0 =A0 =A0 "\xef\xf5\x3f\x91\x6e\xf7\xbb\x69\xfe\xf4\xc9\xd6\xe5\xed\xe7\x=
b4\xf1\xe7"
=A0 =A0 =A0 "\xb8\xde\x1f\xa6\xf5\xc7\xfd\xc5\xf5\x6e\xfb\xcc\x57\x7b\xae\x=
ff\xe1\x37"
=A0 =A0 =A0 "\xb4\x8e\x7f\x38\x3d\x2f\x9f\x4a\xb3\x7b\xfd\xaf\xfe\xd3\x17\x=
3e\xd9\x7e"
=A0 =A0 =A0 "\xbe\x62\xfd\x71\x3f\x73\x8f\xb5\xae\x17\xf7\x3f\xfb\xd7\xff\x=
d1\xbc\x5e"
=A0 =A0 =A0 "\xdc\x5e\xdc\x7e\xf7\xfa\x27\x5e\xf5\x78\xc7\xf9\xe8\xbe\xfd\x=
0b\x5f\x68"
=A0 =A0 =A0 "\xdd\xce\xfe\xf7\xfe\xef\xba\xf6\xe3\xe3\xf2\xb8\x9f\xbc\xef\x=
1e\xeb\x7c"
=A0 =A0 =A0 "\x9e\x1b\xb7\xd3\xbe\xdf\xc2\xe7\xfe\xe8\x42\xc7\x79\x2e\xfe\x=
bd\x75\xbd"
=A0 =A0 =A0 "\xbf\xe9\x5a\x7f\xdc\xde\xe9\xc7\x7a\xaf\xff\xd6\xae\x75\x9e\x=
de\xbe\xb1"
=A0 =A0 =A0 "\x79\xfd\xa5\x2a\xe3\x9f\x98\xff\x6e\xcf\xc7\x1b\xeb\x99\xfb\x=
ab\x47\x3a"
=A0 =A0 =A0 "\x1e\xcf\xc3\xdf\x4f\xe7\xef\x35\x77\x37\x6f\x77\xe2\x27\x69\x=
3f\xa6\x8f"
=A0 =A0 =A0 "\xff\xdf\x43\xad\xdb\xeb\xfe\x69\x09\x8f\x7c\xbf\xf3\xfd\x24\x=
8e\xff\xd4"
=A0 =A0 =A0 "\x64\xeb\x75\x19\xb7\x37\xd3\xb5\xfe\x87\xba\xd6\x7f\xfe\xc5\x=
8d\x73\xb7"
=A0 =A0 =A0 "\xf2\xfa\xef\xf8\x71\x6b\xfd\x0f\xbf\xea\x6b\x9d\xcf\xc7\x7f\x=
b6\xd6\x31"
=A0 =A0 =A0 "\xf7\xc3\xd6\x5c\x69\xfd\x47\x3f\xf9\xad\x8e\xeb\x7f\xfa\xdb\x=
ad\xe7\xe3"
=A0 =A0 =A0 "\xcc\xfb\xa6\x4f\x9e\x5a\x38\x77\x2c\x3a\xd4\x93\xe9\x67\xff\x=
9c\xfe\x5e"
=A0 =A0 =A0 "\xeb\xf6\xae\x99\xd8\xb0\xf1\xda\x67\x3c\xf3\x59\xcf\x4e\xef\x=
95\xdd\x7f"
=A0 =A0 =A0 "\x3e\x70\xea\xec\x3b\xe7\xcf\x4c\xcd\x4e\xcd\x16\xc5\xd4\x10\x=
fe\x48\xbc"
=A0 =A0 =A0 "\xa7\x7a\xfd\x9f\x49\xf3\xbf\x5a\xe3\xfc\x5a\xdf\xfe\xbd\x45\x=
51\xbc\xaf"
=A0 =A0 =A0 "\xed\xf3\xda\x2d\xaf\x6f\xed\xbf\xe2\x45\x17\xff\xe4\xc5\x77\x=
7c\xf6\x9d"
=A0 =A0 =A0 "\x71\xdc\x3f\xbd\xae\x75\xf9\x83\x77\xb5\x3e\x6f\xbd\x34\x1d\x=
f7\x50\xba"
=A0 =A0 =A0 "\xfc\x7c\x7a\xbe\xe3\x76\x3e\xf1\xf1\xd6\xe7\xc3\x7e\xd7\x1f\x=
f7\xb3\xd4"
=A0 =A0 =A0 "\xcc\xeb\x5d\xa5\x73\x5f\xff\xc8\x9e\x55\x1d\x98\x1e\xff\xc7\x=
36\x5f\xdf"
=A0 =A0 =A0 "\x7c\x95\x8d\x5c\x68\x5d\xdc\xfd\x7e\x55\x56\xbc\xce\x1f\x7b\x=
5e\xe7\xeb"
=A0 =A0 =A0 "\xfe\xd1\xb7\xb6\xe6\x97\xd3\x79\x5d\x4c\x3f\x99\x79\xcb\xf5\x=
5f\x6f\x1e"
=A0 =A0 =A0 "\xd7\x7d\xff\xf1\xb3\x11\x1e\x7c\x4b\xeb\xf5\x1d\x5f\xc9\xc5\x=
f5\xfb\x5d"
=A0 =A0 =A0 "\xff\x5f\xa6\xe7\xfb\xee\xef\xb6\x6e\x3f\x6e\x37\xaf\x37\x7d\x=
1d\xf3\xd5"
=A0 =A0 =A0 "\x4d\x9d\xef\x8f\xf1\xfc\x7c\xf9\xbe\xae\x9f\x34\x30\xd9\xfa\x=
29\x1e\xe7"
=A0 =A0 =A0 "\xd3\xfb\x47\x71\xbe\xf5\xf1\x38\x2a\xbe\xa6\x7a\xf0\xe2\xf5\x=
57\xb2\xcc"
=A0 =A0 =A0 "\x25\x2d\x7c\x60\x61\xe6\xf8\xb1\x93\xe7\xde\x3f\x73\x76\x7e\x=
e1\xec\xcc"
=A0 =A0 =A0 "\xc2\x07\x3e\x78\xe0\xc4\xa9\x73\x27\xcf\x1e\x68\xfe\x6c\xce\x=
03\xef\x5a"
=A0 =A0 =A0 "\xe9\xfa\x97\x5e\xdf\x1b\x9b\xaf\xef\xc3\xf3\x7b\x76\x15\xcd\x=
57\xfb\xa9"
=A0 =A0 =A0 "\xd6\x78\x8a\x3d\xdd\xeb\x3f\x7d\xcf\xa1\xc3\x7b\x67\x6f\x3e\x=
3c\x7f\xe4"
=A0 =A0 =A0 "\xe0\xb9\x23\x67\xef\x39\x3d\x7f\xe6\xe8\xa1\x85\x85\x43\xf3\x=
87\x17\x6e"
=A0 =A0 =A0 "\x3e\x78\xe4\xc8\xfc\xfb\x56\xba\xfe\xb1\xc3\xfb\xb7\xef\xd8\x=
b7\x73\xef"
=A0 =A0 =A0 "\x8e\xe9\xa3\xc7\x0e\xef\xbf\x7d\xdf\xbe\x9d\xfb\xa6\x8f\x9d\x=
3c\xd5\x58"
=A0 =A0 =A0 "\x46\x6b\x51\x2b\xd8\x33\xfb\xee\xe9\x93\x67\x0e\x34\xaf\xb2\x=
b0\x7f\xd7"
=A0 =A0 =A0 "\xbe\xed\xbb\x77\xef\x9a\x9d\x3e\x71\xea\xf0\xfc\xfe\xbd\xb3\x=
b3\xd3\xe7"
=A0 =A0 =A0 "\x56\xba\x7e\xf3\x73\xd3\x74\xe3\xda\xef\x9d\x3e\x33\x7f\xfc\x=
e0\xd9\x63"
=A0 =A0 =A0 "\x27\xe6\xa7\x17\x8e\x7d\x70\x7e\xff\xf6\x7d\x7b\xf6\xec\x58\x=
f1\xa7\xfb"
=A0 =A0 =A0 "\x9d\x38\x7d\x64\x61\x6a\xe6\xcc\xb9\x93\x33\xe7\x16\xe6\xcf\x=
cc\xb4\x1e"
=A0 =A0 =A0 "\xcb\xd4\xd9\xe6\xc5\x8d\xcf\x7d\x2b\x5d\x1f\x1a\x16\x3e\xb9\x=
a1\xe7\xe7"
=A0 =A0 =A0 "\xa9\x91\xf4\xd5\xfb\xf6\x5b\xf7\xe4\x9f\xcf\xda\xf0\xd9\x0f\x=
2d\x79\x53"
=A0 =A0 =A0 "\xad\x43\xba\x7e\x80\xe8\x0f\xd2\xcf\xa2\xf9\xe6\x5f\xfc\xd9\x=
ee\xd5\xfc"
=A0 =A0 =A0 "\x39\x72\xff\x78\x9a\x59\x4d\xf2\x3f\x00\x00\x00\xd4\x41\xe4\x=
fe\xf5\x69"
=A0 =A0 =A0 "\x66\xf2\x3f\x00\x00\x00\x54\x46\xe4\xfe\x6b\xd2\xcc\xe4\x7f\x=
00\x00\x00"
=A0 =A0 =A0 "\xa8\x8c\xc8\xfd\x13\x69\x66\x35\xc9\xff\xfa\xff\xfa\xff\xfa\x=
ff\xfa\xff"
=A0 =A0 =A0 "\x41\xff\x5f\xff\xbf\x8c\x35\x5b\xff\x78\xef\x8b\xf5\xff\xf5\x=
ff\x0b\xfd"
=A0 =A0 =A0 "\xff\xd2\x9e\xee\xfe\xfc\xb0\xaf\x5f\xff\x5f\xff\x9f\xfe\x0d\x=
5a\xff\x3f"
=A0 =A0 =A0 "\x72\xff\x86\xa2\xa8\x65\xfe\x07\x00\x00\x80\x3a\x88\xdc\xbf\x=
31\xcd\x4c"
=A0 =A0 =A0 "\xfe\x07\x00\x00\x80\xca\x88\xdc\x7f\x6d\x9a\x99\xfc\x0f\x00\x=
00\x00\x95"
=A0 =A0 =A0 "\x11\xb9\xff\x19\x69\x66\x35\xc9\xff\xfa\xff\xfa\xff\xfa\xff\x=
fa\xff\x41"
=A0 =A0 =A0 "\xff\x5f\xff\xbf\x0c\xff\xfe\xbf\xfe\x7f\x19\xfa\xff\xfa\xff\x=
c3\xb0\x7e"
=A0 =A0 =A0 "\xfd\x7f\xfd\x7f\xfa\x37\x68\xfd\xff\xc8\xfd\xcf\x4c\x33\xab\x=
49\xfe\x07"
=A0 =A0 =A0 "\x00\x00\x80\x3a\x88\xdc\xff\xac\x34\x33\xf9\x1f\x00\x00\x00\x=
2a\x23\x72"
=A0 =A0 =A0 "\xff\xb3\xd3\xcc\xe4\x7f\x00\x00\x00\xa8\x8c\xc8\xfd\x93\x69\x=
66\x35\xc9"
=A0 =A0 =A0 "\xff\x4b\xf5\xff\x53\xdd\x6e\xf9\xfe\xff\x9c\xfe\xbf\xfe\xbf\x=
fe\xbf\xfe"
=A0 =A0 =A0 "\xbf\xfe\xbf\xfe\xbf\xfe\xbf\xfe\xff\x95\xd3\xff\xd7\xff\x1f\x=
86\xf5\xeb"
=A0 =A0 =A0 "\xff\xeb\xff\xd3\xbf\x41\xeb\xff\x47\xee\xff\x85\x34\xb3\x9a\x=
e4\x7f\x00"
=A0 =A0 =A0 "\x00\x00\xa8\x83\xc8\xfd\xcf\x49\x33\x93\xff\x01\x00\x00\xa0\x=
32\x22\xf7"
=A0 =A0 =A0 "\x3f\x37\xcd\x4c\xfe\x07\x00\x00\x80\xca\x88\xdc\x7f\x5d\x9a\x=
59\x4d\xf2"
=A0 =A0 =A0 "\xbf\x7f\xff\x5f\xff\x5f\xff\x5f\xff\x3f\xe8\xff\xeb\xff\x97\x=
a1\xff\xaf"
=A0 =A0 =A0 "\xff\x5f\x86\xfe\xbf\xfe\xff\x30\xac\x5f\xff\x5f\xff\x9f\xfe\x=
0d\x5a\xff"
=A0 =A0 =A0 "\x3f\x72\xff\xf3\xd2\xcc\x6a\x92\xff\x01\x00\x00\xa0\x0e\x22\x=
f7\x5f\x9f"
=A0 =A0 =A0 "\x66\x26\xff\x03\x00\x00\x40\x65\x44\xee\x7f\x7e\x9a\x99\xfc\x=
0f\x00\x00"
=A0 =A0 =A0 "\x00\x95\x11\xb9\x7f\x53\x9a\x59\x4d\xf2\xbf\xfe\xbf\xfe\xbf\x=
fe\xbf\xfe"
=A0 =A0 =A0 "\x7f\xd0\xff\xd7\xff\x2f\x43\xff\x5f\xff\xbf\x8c\x81\xe9\xff\x=
af\xf0\x35"
=A0 =A0 =A0 "\x83\xfe\xbf\xfe\xbf\xfe\xbf\xfe\x3f\xfd\x19\xb4\xfe\x7f\xe4\x=
fe\x5f\x4c"
=A0 =A0 =A0 "\x33\xab\x49\xfe\x07\x00\x00\x80\x3a\x88\xdc\x7f\x43\x9a\x99\x=
fc\x0f\x00"
=A0 =A0 =A0 "\x00\x00\x95\x11\xb9\xff\x05\x69\x66\xf2\x3f\x00\x00\x00\x54\x=
46\xe4\xfe"
=A0 =A0 =A0 "\x1b\xd3\xcc\x6a\x92\xff\xf5\xff\xf5\xff\xf5\xff\xf5\xff\x83\x=
fe\xbf\xfe"
=A0 =A0 =A0 "\x7f\x19\xfa\xff\xfa\xff\x65\x0c\x4c\xff\x7f\x05\xfa\xff\xfa\x=
ff\xfa\xff"
=A0 =A0 =A0 "\xfa\xff\xf4\x67\xd0\xfa\xff\x91\xfb\x5f\x98\x66\x56\x93\xfc\x=
0f\x00\x00"
=A0 =A0 =A0 "\x00\x75\x10\xb9\xff\x45\x69\x66\xf2\x3f\x00\x00\x00\x54\x46\x=
e4\xfe\x17"
=A0 =A0 =A0 "\xa7\x99\xc9\xff\x00\x00\x00\x50\x19\x91\xfb\xa7\xd2\xcc\x6a\x=
92\xff\xf5"
=A0 =A0 =A0 "\xff\xf5\xff\xf5\xff\xf5\xff\x83\xfe\xbf\xfe\x7f\x19\xfa\xff\x=
fa\xff\x65"
=A0 =A0 =A0 "\xe8\xff\xeb\xff\x0f\xc3\xfa\xf5\xff\xf5\xff\xe9\xdf\xa0\xf5\x=
ff\x23\xf7"
=A0 =A0 =A0 "\x6f\x4e\x33\xab\x49\xfe\x07\x00\x00\x80\x3a\x88\xdc\xbf\x25\x=
cd\x4c\xfe"
=A0 =A0 =A0 "\x07\x00\x00\x80\xca\x88\xdc\x7f\x53\x9a\x99\xfc\x0f\x00\x00\x=
00\x95\x11"
=A0 =A0 =A0 "\xb9\x7f\x6b\x9a\x59\x4d\xf2\xbf\xfe\xbf\xfe\xbf\xfe\xbf\xfe\x=
7f\xd0\xff"
=A0 =A0 =A0 "\xd7\xff\x2f\x43\xff\x5f\xff\xbf\x0c\xfd\x7f\xfd\xff\x61\x58\x=
bf\xfe\xbf"
=A0 =A0 =A0 "\xfe\x3f\xfd\x1b\xb4\xfe\x7f\xe4\xfe\x97\xa4\x99\xd5\x24\xff\x=
03\x00\x00"
=A0 =A0 =A0 "\x40\x1d\x44\xee\xbf\x39\xcd\x4c\xfe\x07\x00\x00\x80\xca\x88\x=
dc\xff\xd2"
=A0 =A0 =A0 "\x34\x33\xf9\x1f\x00\x00\x00\x2a\x23\x72\xff\xb6\x34\xb3\x9a\x=
e4\x7f\xfd"
=A0 =A0 =A0 "\x7f\xfd\x7f\xfd\x7f\xfd\xff\xa0\xff\xaf\xff\x5f\x86\xfe\xbf\x=
fe\x7f\x19"
=A0 =A0 =A0 "\xfa\xff\xfa\xff\xc3\xb0\x7e\xfd\x7f\xfd\x7f\xfa\x37\x68\xfd\x=
ff\xc8\xfd"
=A0 =A0 =A0 "\x2f\x4b\x33\xab\x49\xfe\x07\x00\x00\x80\x3a\x88\xdc\x7f\x4b\x=
9a\x99\xfc"
=A0 =A0 =A0 "\x0f\x00\x00\x00\x95\x11\xb9\xff\xd6\x34\x33\xf9\x1f\x00\x00\x=
00\x2a\x23"
=A0 =A0 =A0 "\x72\xff\x74\x9a\x59\x4d\xf2\xbf\xfe\xbf\xfe\xbf\xfe\xbf\xfe\x=
7f\xd0\xff"
=A0 =A0 =A0 "\xd7\xff\x2f\x43\xff\x5f\xff\xbf\x0c\xfd\x7f\xfd\xff\x61\x58\x=
bf\xfe\xbf"
=A0 =A0 =A0 "\xfe\x3f\xfd\x1b\xb4\xfe\x7f\xe4\xfe\x97\xa7\x99\xd5\x24\xff\x=
03\x00\x00"
=A0 =A0 =A0 "\x40\x1d\x44\xee\xbf\x2d\xcd\x4c\xfe\x07\x00\x00\x80\xca\x88\x=
dc\x3f\x93"
=A0 =A0 =A0 "\x66\x26\xff\x03\x00\x00\x40\x65\x44\xee\x9f\x4d\x33\xab\x49\x=
fe\xd7\xff"
=A0 =A0 =A0 "\xd7\xff\xd7\xff\xd7\xff\x0f\xfa\xff\xfa\xff\x65\xe8\xff\xeb\x=
ff\x97\xa1"
=A0 =A0 =A0 "\xff\xaf\xff\x3f\x0c\xeb\xd7\xff\xd7\xff\xa7\x7f\x83\xd6\xff\x=
8f\xdc\xbf"
=A0 =A0 =A0 "\x3d\xcd\xac\x26\xf9\x1f\x00\x00\x00\xea\x20\x72\xff\x8e\x34\x=
33\xf9\x1f"
=A0 =A0 =A0 "\x00\x00\x00\x2a\x23\x72\xff\xce\x34\x33\xf9\x1f\x00\x00\x00\x=
2a\x23\x72"
=A0 =A0 =A0 "\xff\xae\x34\xb3\x9a\xe4\x7f\xfd\x7f\xfd\x7f\xfd\x7f\xfd\xff\x=
a0\xff\xaf"
=A0 =A0 =A0 "\xff\x5f\x86\xfe\xbf\xfe\x7f\x19\xfa\xff\xfa\xff\xc3\xb0\x7e\x=
fd\x7f\xfd"
=A0 =A0 =A0 "\x7f\xfa\x37\x68\xfd\xff\xc8\xfd\xbb\xd3\xcc\x6a\x92\xff\x01\x=
00\x00\xa0"
=A0 =A0 =A0 "\x0e\x22\xf7\xef\x49\x33\x93\xff\x01\x00\x00\xa0\x32\x22\xf7\x=
ef\x4d\x33"
=A0 =A0 =A0 "\x93\xff\x01\x00\x00\xa0\x32\x22\xf7\xdf\x9e\x66\x56\x93\xfc\x=
af\xff\xaf"
=A0 =A0 =A0 "\xff\xdf\xab\xff\xff\x9e\xae\xf5\xeb\xff\x77\xd2\xff\x4f\xcf\x=
8f\xfe\xbf"
=A0 =A0 =A0 "\xfe\xbf\xfe\xbf\xfe\x7f\x49\xfa\xff\xfa\xff\xc3\xb0\x7e\xfd\x=
7f\xfd\x7f"
=A0 =A0 =A0 "\xfa\x37\x68\xfd\xff\xc8\xfd\xfb\xd2\xcc\x6a\x92\xff\x01\x00\x=
00\xa0\x0e"
=A0 =A0 =A0 "\x22\xf7\xbf\x22\xcd\x4c\xfe\x07\x00\x00\x80\xca\x88\xdc\xff\x=
4b\x69\x66"
=A0 =A0 =A0 "\xf2\x3f\x00\x00\x00\x54\x46\xe4\xfe\x5f\x4e\x33\xab\x49\xfe\x=
d7\xff\xd7"
=A0 =A0 =A0 "\xff\xf7\xef\xff\xeb\xff\x07\xfd\x7f\xfd\xff\x32\xf4\xff\xf5\x=
ff\xcb\xd0"
=A0 =A0 =A0 "\xff\xd7\xff\x1f\x86\xf5\xeb\xff\xeb\xff\xd3\xbf\x41\xeb\xff\x=
47\xee\xdf"
=A0 =A0 =A0 "\x9f\x66\x56\x93\xfc\x0f\x00\x00\x00\x75\x10\xb9\xff\x95\x69\x=
66\xf2\x3f"
=A0 =A0 =A0 "\x00\x00\x00\x54\x46\xe4\xfe\x57\xa5\x99\xc9\xff\x00\x00\x00\x=
50\x19\x91"
=A0 =A0 =A0 "\xfb\xe7\xd2\xcc\x6a\x92\xff\xf5\xff\xf5\xff\xf5\xff\xf5\xff\x=
83\xfe\xbf"
=A0 =A0 =A0 "\xfe\x7f\x19\xfa\xff\xfa\xff\x65\xe8\xff\xeb\xff\x0f\xc3\xfa\x=
f5\xff\xf5"
=A0 =A0 =A0 "\xff\xe9\xdf\xa0\xf5\xff\x23\xf7\xbf\x3a\xcd\xac\x26\xf9\x1f\x=
00\x00\x00"
=A0 =A0 =A0 "\xea\x20\x72\xff\x6b\xd2\xcc\xe4\x7f\x00\x00\x00\xa8\x8c\xc8\x=
fd\xaf\x4d"
=A0 =A0 =A0 "\x33\x93\xff\x01\x00\x00\xa0\x32\x22\xf7\xbf\x2e\xcd\xac\x26\x=
f9\x5f\xff"
=A0 =A0 =A0 "\x5f\xff\x5f\xff\x5f\xff\x3f\xe8\xff\xeb\xff\x97\xa1\xff\xaf\x=
ff\x5f\x86"
=A0 =A0 =A0 "\xfe\xbf\xfe\xff\x30\xac\x5f\xff\x5f\xff\x9f\xfe\x0d\x5a\xff\x=
3f\x72\xff"
=A0 =A0 =A0 "\xeb\xd3\xcc\x6a\x92\xff\x01\x00\x00\xa0\x0e\x22\xf7\xff\x4a\x=
9a\x99\xfc"
=A0 =A0 =A0 "\x0f\x00\x00\x00\x95\x11\xb9\xff\x0d\x69\x66\xf2\x3f\x00\x00\x=
00\x54\x46"
=A0 =A0 =A0 "\xe4\xfe\x3b\xd2\xcc\x6a\x92\xff\xf5\xff\xf5\xff\xf5\xff\xf5\x=
ff\x83\xfe"
=A0 =A0 =A0 "\xbf\xfe\x7f\x19\xfa\xff\xfa\xff\x65\xe8\xff\xeb\xff\x0f\xc3\x=
fa\xf5\xff"
=A0 =A0 =A0 "\xf5\xff\xe9\xdf\xa0\xf5\xff\x23\xf7\xff\x6a\x9a\x59\x4d\xf2\x=
3f\x00\x00"
=A0 =A0 =A0 "\x00\xd4\x41\xe4\xfe\x3b\xd3\xcc\xe4\x7f\x00\x00\x00\xa8\x8c\x=
c8\xfd\x77"
=A0 =A0 =A0 "\xa5\x99\xc9\xff\x00\x00\x00\x50\x19\x91\xfb\xdf\x98\x66\x56\x=
93\xfc\xaf"
=A0 =A0 =A0 "\xff\xaf\xff\xaf\xff\xaf\xff\x1f\xf4\xff\xf5\xff\xcb\xd0\xff\x=
d7\xff\x2f"
=A0 =A0 =A0 "\x43\xff\x5f\xff\x7f\x18\xd6\xaf\xff\x7f\x64\x61\x6a\x66\xae\x=
d0\xff\xa7"
=A0 =A0 =A0 "\x1f\x83\xd6\xff\x8f\xdc\x7f\x77\x9a\x59\x4d\xf2\x3f\x00\x00\x=
00\xd4\x41"
=A0 =A0 =A0 "\xe4\xfe\x5f\x4b\x33\x93\xff\x01\x00\x00\xa0\x32\x22\xf7\xff\x=
7a\x9a\x99"
=A0 =A0 =A0 "\xfc\x0f\x00\x00\x00\x95\x11\xb9\xff\x4d\x69\x66\x35\xc9\xff\x=
fa\xff\xfa"
=A0 =A0 =A0 "\xff\xfa\xff\xfa\xff\x41\xff\x5f\xff\xbf\x0c\xfd\x7f\xfd\xff\x=
32\xca\xf6"
=A0 =A0 =A0 "\xff\xc7\xbb\x6e\x47\xff\x7f\x79\x4f\x77\x7f\x7e\xd8\xd7\xaf\x=
ff\xef\xdf"
=A0 =A0 =A0 "\xff\xa7\x7f\x83\xd6\xff\x8f\xdc\xff\x1b\x69\x66\x35\xc9\xff\x=
00\x00\x00"
=A0 =A0 =A0 "\x50\x07\x91\xfb\xdf\x9c\x66\x26\xff\x03\x00\x00\x40\x65\x44\x=
ee\x7f\x4b"
=A0 =A0 =A0 "\x9a\x99\xfc\x0f\x00\x00\x00\x95\x11\xb9\xff\xad\x69\x66\x35\x=
c9\xff\xfa"
=A0 =A0 =A0 "\xff\xfa\xff\xfa\xff\xfa\xff\x41\xff\x5f\xff\xbf\x0c\xfd\x7f\x=
fd\xff\x32"
=A0 =A0 =A0 "\xfc\xfb\xff\xfa\xff\xc3\xb0\x7e\xfd\x7f\xfd\x7f\xfa\x37\x68\x=
fd\xff\xc8"
=A0 =A0 =A0 "\xfd\xf7\xa4\x99\xd5\x24\xff\x03\x00\x00\x40\x1d\x44\xee\x7f\x=
5b\x9a\x99"
=A0 =A0 =A0 "\xfc\x0f\x00\x00\x00\x95\x11\xb9\xff\x37\xd3\xcc\xe4\x7f\x00\x=
00\x00\xa8"
=A0 =A0 =A0 "\x8c\xc8\xfd\xbf\x95\x66\x56\x93\xfc\xaf\xff\xaf\xff\xaf\xff\x=
af\xff\x1f"
=A0 =A0 =A0 "\xf4\xff\xf5\xff\xcb\xd0\xff\xd7\xff\x2f\x43\xff\x5f\xff\x7f\x=
18\xd6\xaf"
=A0 =A0 =A0 "\xff\xaf\xff\x4f\xff\x06\xad\xff\x1f\xb9\xff\xb7\xd3\xcc\x6a\x=
92\xff\x01"
=A0 =A0 =A0 "\x00\x00\xa0\x0e\x22\xf7\xbf\x3d\xcd\x4c\xfe\x07\x00\x00\x80\x=
ca\x88\xdc"
=A0 =A0 =A0 "\xff\x3b\x69\x66\xf2\x3f\x00\x00\x00\x54\x46\xe4\xfe\xdf\x4d\x=
33\xab\x49"
=A0 =A0 =A0 "\xfe\xd7\xff\xd7\xff\xd7\xff\xd7\xff\x0f\xfa\xff\xfa\xff\x65\x=
e8\xff\xeb"
=A0 =A0 =A0 "\xff\x97\xa1\xff\xaf\xff\x3f\x0c\xeb\xd7\xff\xd7\xff\xa7\x7f\x=
83\xd6\xff"
=A0 =A0 =A0 "\x8f\xdc\xff\x7b\x69\x66\x35\xc9\xff\x00\x00\x00\x50\x07\x91\x=
fb\x7f\x3f"
=A0 =A0 =A0 "\xcd\x4c\xfe\x07\x00\x00\x80\xca\x88\xdc\x7f\x20\xcd\x4c\xfe\x=
07\x00\x00"
=A0 =A0 =A0 "\x80\xca\x88\xdc\xff\x8e\x34\xb3\x9a\xe4\x7f\xfd\x7f\xfd\x7f\x=
fd\x7f\xfd"
=A0 =A0 =A0 "\xff\xa0\xff\xaf\xff\x5f\x86\xfe\xbf\xfe\x7f\x19\xfa\xff\xfa\x=
ff\xc3\xb0"
=A0 =A0 =A0 "\x7e\xfd\x7f\xfd\x7f\xfa\x37\x68\xfd\xff\xc8\xfd\x07\xd3\xcc\x=
6a\x92\xff"
=A0 =A0 =A0 "\x01\x00\x00\xa0\x0e\x22\xf7\xff\x41\x9a\x99\xfc\x0f\x00\x00\x=
00\x95\x11"
=A0 =A0 =A0 "\xb9\xff\x50\x9a\x99\xfc\x0f\x00\x00\x00\x95\x11\xb9\xff\x70\x=
9a\x59\x4d"
=A0 =A0 =A0 "\xf2\xbf\xfe\xbf\xfe\xbf\xfe\xbf\xfe\x7f\xd0\xff\xd7\xff\x2f\x=
43\xff\x5f"
=A0 =A0 =A0 "\xff\xbf\x0c\xfd\x7f\xfd\xff\x61\x58\xbf\xfe\xbf\xfe\x3f\xfd\x=
1b\xb4\xfe"
=A0 =A0 =A0 "\x7f\xe4\xfe\xf9\x34\xb3\x9a\xe4\x7f\x00\x00\x00\xa8\x83\xc8\x=
fd\x47\xd2"
=A0 =A0 =A0 "\xcc\xe4\x7f\x00\x00\x00\xa8\x8c\xc8\xfd\x47\xd3\xcc\xe4\x7f\x=
00\x00\x00"
=A0 =A0 =A0 "\xa8\x8c\xc8\xfd\xef\x4c\x33\xab\x49\xfe\xd7\xff\xd7\xff\xd7\x=
ff\xd7\xff"
=A0 =A0 =A0 "\x0f\xfa\xff\xfa\xff\x65\xe8\xff\xeb\xff\x97\xa1\xff\xaf\xff\x=
3f\x0c\xeb"
=A0 =A0 =A0 "\xd7\xff\xd7\xff\xa7\x7f\x83\xd6\xff\x8f\xdc\x7f\x2c\xcd\xac\x=
26\xf9\x1f"
=A0 =A0 =A0 "\x00\x00\x00\xea\x20\x72\xff\xbb\xd2\xcc\xe4\x7f\x00\x00\x00\x=
a8\x8c\xc8"
=A0 =A0 =A0 "\xfd\xef\x4e\x33\x93\xff\x01\x00\x00\xa0\x32\x22\xf7\x1f\x4f\x=
33\xab\x49"
=A0 =A0 =A0 "\xfe\xd7\xff\xd7\xff\xd7\xff\xd7\xff\x0f\xfa\xff\xfa\xff\x65\x=
e8\xff\xeb"
=A0 =A0 =A0 "\xff\x97\xa1\xff\xaf\xff\x3f\x0c\xeb\xd7\xff\xd7\xff\xa7\x7f\x=
83\xd6\xff"
=A0 =A0 =A0 "\x8f\xdc\x7f\x22\xcd\xac\x26\xf9\x1f\x00\x00\x00\xea\x20\x72\x=
ff\xc9\x34"
=A0 =A0 =A0 "\x33\xf9\x1f\x00\x00\x00\x2a\x23\x72\xff\xa9\x34\x33\xf9\x1f\x=
00\x00\x00"
=A0 =A0 =A0 "\x2a\x23\x72\xff\xe9\x34\xb3\x9a\xe4\x7f\xfd\x7f\xfd\x7f\xfd\x=
7f\xfd\xff"
=A0 =A0 =A0 "\xa0\xff\xaf\xff\x5f\x86\xfe\xbf\xfe\x7f\x19\xfa\xff\xfa\xff\x=
c3\xb0\x7e"
=A0 =A0 =A0 "\xfd\x7f\xfd\x7f\xfa\x37\x68\xfd\xff\xc8\xfd\xef\x49\x33\xab\x=
49\xfe\x07"
=A0 =A0 =A0 "\x00\x00\x80\x3a\x88\xdc\x7f\x26\xcd\x4c\xfe\x07\x00\x00\x80\x=
ca\x88\xdc"
=A0 =A0 =A0 "\xbf\x90\x66\x26\xff\x03\x00\x00\x40\x65\x44\xee\x3f\x9b\x66\x=
56\x93\xfc"
=A0 =A0 =A0 "\xaf\xff\xaf\xff\xaf\xff\xaf\xff\x1f\xf4\xff\xf5\xff\xcb\xd0\x=
ff\xd7\xff"
=A0 =A0 =A0 "\x2f\x43\xff\x5f\xff\x7f\x18\xd6\xaf\xff\xaf\xff\x4f\xff\x06\x=
ad\xff\xff"
=A0 =A0 =A0 "\xff\xec\xdd\xc5\xae\x6d\xd9\x91\x85\x61\x65\xa3\x4a\xd5\xa8\x=
07\xaa\x27"
=A0 =A0 =A0 "\xaa\x37\x28\x34\x33\x33\x33\x33\x33\x33\x33\x33\xb3\xd3\xcc\x=
dc\xb0\x6c"
=A0 =A0 =A0 "\xc5\x08\x59\x56\x5a\x37\x3d\x57\x2a\x73\xad\x19\xdf\xd7\x89\x=
ce\x6e\x4c"
=A0 =A0 =A0 "\xe9\x48\x57\x67\xe8\xdc\x5f\x3b\xbb\xff\xbf\xea\xb6\x21\xfb\x=
1f\x00\x00"
=A0 =A0 =A0 "\x00\x26\xc8\xee\xff\xef\xba\xcd\xfe\x07\x00\x00\x80\x6d\x64\x=
f7\xff\x4f"
=A0 =A0 =A0 "\xdd\x66\xff\x03\x00\x00\xc0\x36\xb2\xfb\xff\xb7\x6e\x1b\xb2\x=
ff\xf5\xff"
=A0 =A0 =A0 "\xfa\x7f\xfd\xbf\xfe\x3f\xf4\xff\xfa\xff\x15\xfa\x7f\xfd\xff\x=
0a\xfd\xbf"
=A0 =A0 =A0 "\xfe\xff\x0a\xef\xd7\xff\xeb\xff\x39\xee\x6c\xfd\x7f\x76\xff\x=
ff\xd5\x6d"
=A0 =A0 =A0 "\x43\xf6\x3f\x00\x00\x00\x4c\x90\xdd\xff\xff\x75\x9b\xfd\x0f\x=
00\x00\x00"
=A0 =A0 =A0 "\xdb\xc8\xee\xbf\x53\xdd\x66\xff\x03\x00\x00\xc0\x36\xb2\xfb\x=
ef\x5c\xb7"
=A0 =A0 =A0 "\x0d\xd9\xff\xfa\x7f\xfd\xbf\xfe\x5f\xff\x1f\xfa\x7f\xfd\xff\x=
0a\xfd\xbf"
=A0 =A0 =A0 "\xfe\x7f\x85\xfe\x5f\xff\x7f\x85\xf7\xeb\xff\xf5\xff\x1c\x77\x=
b6\xfe\x3f"
=A0 =A0 =A0 "\xbb\xff\x2e\x75\xdb\x90\xfd\x0f\x00\x00\x00\x13\x64\xf7\xdf\x=
b5\x6e\xb3"
=A0 =A0 =A0 "\xff\x01\x00\x00\x60\x1b\xd9\xfd\x77\xab\xdb\xec\x7f\x00\x00\x=
00\xd8\x46"
=A0 =A0 =A0 "\x76\xff\xdd\xeb\xb6\x21\xfb\x5f\xff\xaf\xff\xd7\xff\xeb\xff\x=
43\xff\xaf"
=A0 =A0 =A0 "\xff\x5f\xa1\xff\xd7\xff\xaf\xd0\xff\xeb\xff\xaf\xf0\x7e\xfd\x=
bf\xfe\x9f"
=A0 =A0 =A0 "\xe3\xce\xd6\xff\x67\xf7\xdf\xa3\x6e\x1b\xb2\xff\x01\x00\x00\x=
60\x82\xec"
=A0 =A0 =A0 "\xfe\x7b\xd6\x6d\xf6\x3f\x00\x00\x00\x6c\x23\xbb\xff\x5e\x75\x=
9b\xfd\x0f"
=A0 =A0 =A0 "\x00\x00\x00\xdb\xc8\xee\xbf\x77\xdd\x36\x64\xff\xeb\xff\xf5\x=
ff\xfa\x7f"
=A0 =A0 =A0 "\xfd\x7f\xe8\xff\xf5\xff\x2b\xf4\xff\xfa\xff\x15\xfa\x7f\xfd\x=
ff\x15\xde"
=A0 =A0 =A0 "\xaf\xff\xd7\xff\x73\x23\xff\xf1\x2f\x37\xfa\xc4\xd9\xfa\xff\x=
ec\xfe\xfb"
=A0 =A0 =A0 "\xd4\x6d\x43\xf6\x3f\x00\x00\x00\x4c\x90\xdd\x7f\xdf\xba\xcd\x=
fe\x07\x00"
=A0 =A0 =A0 "\x00\x80\x6d\x64\xf7\xdf\xaf\x6e\xb3\xff\x01\x00\x00\x60\x1b\x=
d9\xfd\xf7"
=A0 =A0 =A0 "\xaf\xdb\x86\xec\x7f\xfd\xbf\xfe\x5f\xff\xaf\xff\x0f\xfd\xbf\x=
fe\x7f\x85"
=A0 =A0 =A0 "\xfe\x5f\xff\xbf\x42\xff\xaf\xff\xbf\xc2\xfb\xf5\xff\xfa\x7f\x=
8e\x3b\x5b"
=A0 =A0 =A0 "\xff\x9f\xdd\xff\x80\xba\x6d\xc8\xfe\x07\x00\x00\x80\x09\xb2\x=
fb\x1f\x58"
=A0 =A0 =A0 "\xb7\xd9\xff\x00\x00\x00\xb0\x8d\xec\xfe\x07\xd5\x6d\xf6\x3f\x=
00\x00\x00"
=A0 =A0 =A0 "\x6c\x23\xbb\xff\xc1\x75\xdb\x90\xfd\xaf\xff\xd7\xff\xeb\xff\x=
f5\xff\xa1"
=A0 =A0 =A0 "\xff\xd7\xff\xaf\xd0\xff\xeb\xff\x57\xe8\xff\xf5\xff\x57\x78\x=
bf\xfe\x5f"
=A0 =A0 =A0 "\xff\xcf\x71\x67\xeb\xff\xb3\xfb\x1f\x52\xb7\x0d\xd9\xff\x00\x=
00\x00\x30"
=A0 =A0 =A0 "\x41\x76\xff\x43\xeb\x36\xfb\x1f\x00\x00\x00\xb6\x91\xdd\xff\x=
b0\xba\xcd"
=A0 =A0 =A0 "\xfe\x07\x00\x00\x80\x6d\x64\xf7\x3f\xbc\x6e\x1b\xb2\xff\xf5\x=
ff\xfa\x7f"
=A0 =A0 =A0 "\xfd\xbf\xfe\x3f\xf4\xff\xfa\xff\x15\xfa\x7f\xfd\xff\x0a\xfd\x=
bf\xfe\xff"
=A0 =A0 =A0 "\x0a\xef\xd7\xff\xeb\xff\x39\xee\x6c\xfd\x7f\x76\xff\x23\xea\x=
b6\x21\xfb"
=A0 =A0 =A0 "\x1f\x00\x00\x00\x26\xc8\xee\x7f\x64\xdd\x66\xff\x03\x00\x00\x=
c0\x36\xb2"
=A0 =A0 =A0 "\xfb\x1f\x55\xb7\xd9\xff\x00\x00\x00\xb0\x8d\xec\xfe\x47\xd7\x=
6d\x43\xf6"
=A0 =A0 =A0 "\xbf\xfe\x5f\xff\xaf\xff\xbf\x71\xff\xff\xaf\x7f\xf7\xf3\xd0\x=
ff\xd7\xcf"
=A0 =A0 =A0 "\x47\xff\xaf\xff\xd7\xff\xeb\xff\x17\xe9\xff\xf5\xff\x57\x78\x=
bf\xfe\x5f"
=A0 =A0 =A0 "\xff\xcf\x71\x67\xeb\xff\xb3\xfb\x1f\x53\xb7\x0d\xd9\xff\x00\x=
00\x00\x30"
=A0 =A0 =A0 "\x41\x76\xff\x63\xeb\x36\xfb\x1f\x00\x00\x00\xb6\x91\xdd\xff\x=
b8\xba\xcd"
=A0 =A0 =A0 "\xfe\x07\x00\x00\x80\x6d\x64\xf7\x3f\xbe\x6e\x1b\xb2\xff\xf5\x=
ff\xfa\x7f"
=A0 =A0 =A0 "\xfd\xbf\xef\xff\x0f\xfd\xbf\xfe\x7f\x85\xfe\x5f\xff\xbf\x42\x=
ff\x7f\x9b"
=A0 =A0 =A0 "\xf4\xff\xff\x76\xa3\x0f\xdc\xd1\xfd\xfc\x51\x77\xf4\xfb\xf5\x=
ff\xfa\x7f"
=A0 =A0 =A0 "\x8e\x3b\x5b\xff\x9f\xdd\xff\x84\xba\x6d\xc8\xfe\x07\x00\x00\x=
80\x09\xb2"
=A0 =A0 =A0 "\xfb\x9f\x58\xb7\xd9\xff\x00\x00\x00\xb0\x8d\xec\xfe\x27\xd5\x=
6d\xf6\x3f"
=A0 =A0 =A0 "\x00\x00\x00\x6c\x23\xbb\xff\xc9\x75\xdb\x90\xfd\xaf\xff\xd7\x=
ff\xeb\xff"
=A0 =A0 =A0 "\xf5\xff\xa1\xff\xd7\xff\xaf\xd0\xff\xeb\xff\x57\xe8\xff\x7d\x=
ff\xff\x15"
=A0 =A0 =A0 "\xde\xaf\xff\xd7\xff\x73\xdc\xd9\xfa\xff\xec\xfe\xa7\xd4\x6d\x=
43\xf6\x3f"
=A0 =A0 =A0 "\x00\x00\x00\x4c\x90\xdd\xff\xd4\xba\xcd\xfe\x07\x00\x00\x80\x=
6d\x64\xf7"
=A0 =A0 =A0 "\x3f\xad\x6e\xfb\xc7\xfb\xff\x56\xfe\xef\x76\x00\x00\x00\xe0\x=
2c\xb2\xfb"
=A0 =A0 =A0 "\x9f\x5e\xb7\x0d\xf9\xfb\xbf\xfe\x5f\xff\xaf\xff\xd7\xff\x87\x=
fe\x5f\xff"
=A0 =A0 =A0 "\xbf\x42\xff\xaf\xff\x5f\xa1\xff\xd7\xff\x5f\xe1\xfd\xfa\x7f\x=
fd\x3f\xc7"
=A0 =A0 =A0 "\x9d\xad\xff\xcf\xee\x7f\x46\xdd\x36\x64\xff\x03\x00\x00\xc0\x=
04\xd9\xfd"
=A0 =A0 =A0 "\xcf\xac\xdb\xec\x7f\x00\x00\x00\xd8\x46\x76\xff\xb3\xea\x36\x=
fb\x1f\x00"
=A0 =A0 =A0 "\x00\x00\xb6\x91\xdd\xff\xec\xba\x6d\xc8\xfe\xd7\xff\xeb\xff\x=
f5\xff\xfa"
=A0 =A0 =A0 "\xff\xd0\xff\xeb\xff\x57\xe8\xff\xf5\xff\x2b\xf4\xff\xfa\xff\x=
2b\xbc\x5f"
=A0 =A0 =A0 "\xff\xaf\xff\xe7\xb8\xb3\xf5\xff\xd9\xfd\xcf\xa9\xdb\x86\xec\x=
7f\x00\x00"
=A0 =A0 =A0 "\x00\x98\x20\xbb\xff\xb9\x75\x9b\xfd\x0f\x00\x00\x00\xdb\xc8\x=
ee\x7f\x5e"
=A0 =A0 =A0 "\xdd\x66\xff\x03\x00\x00\xc0\x36\xb2\xfb\x9f\x5f\xb7\x0d\xd9\x=
ff\xfa\x7f"
=A0 =A0 =A0 "\xfd\xbf\xfe\x5f\xff\x1f\xfa\x7f\xfd\xff\x0a\xfd\xbf\xfe\x7f\x=
85\xfe\x5f"
=A0 =A0 =A0 "\xff\x7f\x85\xf7\xeb\xff\xf5\xff\x1c\x77\xb6\xfe\x3f\xbb\xff\x=
05\x75\xdb"
=A0 =A0 =A0 "\x90\xfd\x0f\x00\x00\x00\x13\x64\xf7\xbf\xb0\x6e\xb3\xff\x01\x=
00\x00\x60"
=A0 =A0 =A0 "\x1b\xd9\xfd\x2f\xaa\xdb\xec\x7f\x00\x00\x00\xd8\x46\x76\xff\x=
8b\xeb\xb6"
=A0 =A0 =A0 "\x21\xfb\x5f\xff\xaf\xff\xd7\xff\xeb\xff\x43\xff\xaf\xff\x5f\x=
a1\xff\xd7"
=A0 =A0 =A0 "\xff\xaf\xd0\xff\xeb\xff\xaf\xf0\x7e\xfd\xbf\xfe\x9f\xe3\xce\x=
d6\xff\x67"
=A0 =A0 =A0 "\xf7\xbf\xa4\x6e\x1b\xb2\xff\x01\x00\x00\x60\x82\xec\xfe\x97\x=
d6\x6d\xf6"
=A0 =A0 =A0 "\x3f\x00\x00\x00\x6c\x23\xbb\xff\x65\x75\x9b\xfd\x0f\x00\x00\x=
00\xdb\xc8"
=A0 =A0 =A0 "\xee\x7f\x79\xdd\x36\x64\xff\xeb\xff\xf5\xff\xfa\x7f\xfd\x7f\x=
e8\xff\xf5"
=A0 =A0 =A0 "\xff\x2b\xf4\xff\xfa\xff\x15\xfa\x7f\xfd\xff\x15\xde\xaf\xff\x=
d7\xff\x73"
=A0 =A0 =A0 "\xdc\xd9\xfa\xff\xec\xfe\x57\xd4\x6d\x43\xf6\x3f\x00\x00\x00\x=
4c\x90\xdd"
=A0 =A0 =A0 "\xff\xca\xba\xcd\xfe\x07\x00\x00\x80\x6d\x64\xf7\xbf\xaa\x6e\x=
b3\xff\x01"
=A0 =A0 =A0 "\x00\x00\x60\x1b\xd9\xfd\xaf\xae\xdb\x86\xec\x7f\xfd\xbf\xfe\x=
5f\xff\xaf"
=A0 =A0 =A0 "\xff\x0f\xfd\xbf\xfe\x7f\x85\xfe\x5f\xff\xbf\x42\xff\xaf\xff\x=
bf\xc2\xfb"
=A0 =A0 =A0 "\xf5\xff\xfa\x7f\x8e\xbb\x63\xfa\xff\xbf\xfc\x4b\x7b\xcb\xfd\x=
7f\x76\xff"
=A0 =A0 =A0 "\x6b\xea\xb6\x21\xfb\x1f\x00\x00\x00\x26\xc8\xee\x7f\x6d\xdd\x=
66\xff\x03"
=A0 =A0 =A0 "\x00\x00\xc0\x36\xb2\xfb\x5f\x57\xb7\xd9\xff\x00\x00\x00\xb0\x=
8d\xec\xfe"
=A0 =A0 =A0 "\xd7\xd7\x6d\x43\xf6\xbf\xfe\x5f\xff\xaf\xff\xd7\xff\x87\xfe\x=
5f\xff\xbf"
=A0 =A0 =A0 "\x42\xff\xaf\xff\x5f\xa1\xff\xd7\xff\x5f\xe1\xfd\xfa\x7f\xfd\x=
3f\xc7\xdd"
=A0 =A0 =A0 "\x42\xff\x7f\xd3\xdf\xfe\xae\x76\x7b\x7f\xff\x7f\x76\xff\x1b\x=
ea\xb6\x21"
=A0 =A0 =A0 "\xfb\x1f\x00\x00\x00\x26\xc8\xee\x7f\x63\xdd\x66\xff\x03\x00\x=
00\xc0\xd9"
=A0 =A0 =A0 "\xdd\xfc\x9f\xb7\xf2\x83\xd9\xfd\x6f\xaa\xdb\xec\x7f\x00\x00\x=
00\xd8\x46"
=A0 =A0 =A0 "\x76\xff\x9b\xeb\xb6\x21\xfb\x5f\xff\xaf\xff\xd7\xff\xeb\xff\x=
43\xff\xaf"
=A0 =A0 =A0 "\xff\x5f\xa1\xff\xd7\xff\xaf\xd0\xff\xeb\xff\xaf\xf0\x7e\xfd\x=
bf\xfe\x9f"
=A0 =A0 =A0 "\xe3\x6e\xa1\xff\xff\xab\x9b\xea\xb7\xf7\xdb\xbb\xff\xcf\xee\x=
7f\x4b\xdd"
=A0 =A0 =A0 "\x36\x64\xff\x03\x00\x00\xc0\x04\xd9\xfd\x6f\xad\xdb\xec\x7f\x=
00\x00\x00"
=A0 =A0 =A0 "\xd8\x46\x76\xff\xdb\xea\x36\xfb\x1f\x00\x00\x00\xb6\x91\xdd\x=
ff\xf6\xba"
=A0 =A0 =A0 "\x6d\xc8\xfe\xd7\xff\xeb\xff\xf5\xff\xfa\xff\xd0\xff\xeb\xff\x=
57\xe8\xff"
=A0 =A0 =A0 "\xf5\xff\x2b\xf4\xff\xfa\xff\x2b\xbc\x5f\xff\xaf\xff\xe7\xb8\x=
b3\xf5\xff"
=A0 =A0 =A0 "\xd9\xfd\xef\xa8\xdb\x86\xec\x7f\x00\x00\x00\x98\x20\xbb\xff\x=
9d\x75\x9b"
=A0 =A0 =A0 "\xfd\x0f\x00\x00\x00\xdb\xc8\xee\x7f\x57\xdd\x66\xff\x03\x00\x=
00\xc0\x36"
=A0 =A0 =A0 "\xb2\xfb\xdf\x5d\xb7\x0d\xd9\xff\xfa\x7f\xfd\xbf\xfe\x5f\xff\x=
1f\xfa\x7f"
=A0 =A0 =A0 "\xfd\xff\x0a\xfd\xbf\xfe\x7f\x85\xfe\x5f\xff\x7f\x85\xf7\xeb\x=
ff\xf5\xff"
=A0 =A0 =A0 "\x1c\x77\xb6\xfe\x3f\xbb\xff\x3d\x75\xdb\x90\xfd\x0f\x00\x00\x=
00\x13\x64"
=A0 =A0 =A0 "\xf7\xbf\xb7\x6e\xb3\xff\x01\x00\x00\x60\x1b\xd9\xfd\xef\xab\x=
db\xec\x7f"
=A0 =A0 =A0 "\x00\x00\x00\xd8\x46\x76\xff\xfb\xeb\xb6\x21\xfb\x5f\xff\xaf\x=
ff\xd7\xff"
=A0 =A0 =A0 "\xeb\xff\x43\xff\xaf\xff\x5f\xa1\xff\xd7\xff\xaf\xd0\xff\xeb\x=
ff\xaf\xf0"
=A0 =A0 =A0 "\x7e\xfd\xbf\xfe\x9f\xe3\xce\xd6\xff\x67\xf7\x7f\xa0\x6e\x1b\x=
b2\xff\x01"
=A0 =A0 =A0 "\x00\x00\x60\x82\xec\xfe\x0f\xd6\x6d\xff\xdc\xfe\xff\xf7\xdb\x=
f6\x55\x00"
=A0 =A0 =A0 "\x00\x00\xc0\x6d\x29\xbb\xff\x43\x75\x9b\xbf\xff\x03\x00\x00\x=
c0\x36\xb2"
=A0 =A0 =A0 "\xfb\x3f\x5c\xb7\x0d\xd9\xff\xfa\x7f\xfd\xbf\xfe\x5f\xff\x1f\x=
fa\x7f\xfd"
=A0 =A0 =A0 "\xff\x0a\xfd\xbf\xfe\x7f\x85\xfe\x5f\xff\x7f\x85\xf7\xeb\xff\x=
f5\xff\x1c"
=A0 =A0 =A0 "\x77\xb6\xfe\x3f\xbb\xff\x23\x75\xdb\x90\xfd\x0f\x00\x00\x00\x=
13\x64\xf7"
=A0 =A0 =A0 "\x7f\xb4\x6e\xb3\xff\x01\x00\x00\x60\x1b\xd9\xfd\x1f\xab\xdb\x=
ec\x7f\x00"
=A0 =A0 =A0 "\x00\x00\xd8\x46\x76\xff\xc7\xeb\xb6\x21\xfb\x5f\xff\xaf\xff\x=
d7\xff\xeb"
=A0 =A0 =A0 "\xff\x43\xff\xaf\xff\x5f\xa1\xff\xd7\xff\xaf\xd0\xff\xeb\xff\x=
af\xf0\x7e"
=A0 =A0 =A0 "\xfd\xbf\xfe\x9f\xe3\xce\xd6\xff\x67\xf7\x7f\xa2\x6e\x1b\xb2\x=
ff\x01\x00"
=A0 =A0 =A0 "\x00\x60\x82\xec\xfe\x4f\xd6\x6d\xf6\x3f\x00\x00\x00\x6c\x23\x=
bb\xff\x53"
=A0 =A0 =A0 "\x75\x9b\xfd\x0f\x00\x00\x00\xdb\xc8\xee\xff\x74\xdd\x36\x64\x=
ff\xeb\xff"
=A0 =A0 =A0 "\xf5\xff\xfa\x7f\xfd\x7f\xe8\xff\xf5\xff\x2b\xf4\xff\xfa\xff\x=
15\xfa\x7f"
=A0 =A0 =A0 "\xfd\xff\x15\xde\xaf\xff\xd7\xff\x73\xdc\xd9\xfa\xff\xec\xfe\x=
cf\xd4\x6d"
=A0 =A0 =A0 "\x43\xf6\x3f\x00\x00\x00\x4c\x90\xdd\xff\xd9\xba\xcd\xfe\x07\x=
00\x00\x80"
=A0 =A0 =A0 "\x6d\x64\xf7\x7f\xae\x6e\xb3\xff\x01\x00\x00\x60\x1b\xd9\xfd\x=
9f\xaf\xdb"
=A0 =A0 =A0 "\x86\xec\x7f\xfd\xbf\xfe\x5f\xff\xaf\xff\x0f\xfd\xbf\xfe\x7f\x=
85\xfe\x5f"
=A0 =A0 =A0 "\xff\xbf\x42\xff\xaf\xff\xbf\xc2\xfb\xf5\xff\xfa\x7f\x8e\x3b\x=
5b\xff\x9f"
=A0 =A0 =A0 "\xdd\xff\x85\xba\x6d\xc8\xfe\x07\x00\x00\x80\x09\xb2\xfb\xbf\x=
58\xb7\xd9"
=A0 =A0 =A0 "\xff\x00\x00\x00\xb0\x8d\xec\xfe\x2f\xd5\x6d\xf6\x3f\x00\x00\x=
00\x6c\x23"
=A0 =A0 =A0 "\xbb\xff\xcb\x75\xdb\x90\xfd\xaf\xff\xd7\xff\xeb\xff\xf5\xff\x=
a1\xff\xd7"
=A0 =A0 =A0 "\xff\xaf\xd0\xff\xeb\xff\x57\xe8\xff\xf5\xff\x57\x78\xbf\xfe\x=
5f\xff\xcf"
=A0 =A0 =A0 "\x71\x67\xeb\xff\xb3\xfb\xbf\x52\xb7\x0d\xd9\xff\x00\x00\x00\x=
30\x41\x76"
=A0 =A0 =A0 "\xff\x57\xeb\x36\xfb\x1f\x00\x00\x00\xb6\x91\xdd\xff\xb5\xba\x=
cd\xfe\x07"
=A0 =A0 =A0 "\x00\x00\x80\x6d\x64\xf7\x7f\xbd\x6e\x1b\xb2\xff\xf5\xff\xfa\x=
7f\xfd\xbf"
=A0 =A0 =A0 "\xfe\x3f\xf4\xff\xfa\xff\x15\xfa\x7f\xfd\xff\x0a\xfd\xbf\xfe\x=
ff\x0a\xef"
=A0 =A0 =A0 "\xd7\xff\xeb\xff\x39\xee\x6c\xfd\x7f\x76\xff\x37\xea\xb6\x21\x=
fb\x1f\x00"
=A0 =A0 =A0 "\x00\x00\x26\xc8\xee\xff\x66\xdd\x66\xff\x03\x00\x00\xc0\x36\x=
b2\xfb\xbf"
=A0 =A0 =A0 "\x55\xb7\xd9\xff\x00\x00\x00\xb0\x8d\xec\xfe\x6f\xd7\x6d\x43\x=
f6\xbf\xfe"
=A0 =A0 =A0 "\x5f\xff\xaf\xff\xd7\xff\x87\xfe\x5f\xff\xbf\x42\xff\xaf\xff\x=
5f\xa1\xff"
=A0 =A0 =A0 "\xd7\xff\x5f\xe1\xfd\xfa\x7f\xfd\x3f\xc7\x9d\xad\xff\xcf\xee\x=
ff\x4e\xdd"
=A0 =A0 =A0 "\x36\x64\xff\x03\x00\x00\xc0\x04\xd9\xfd\xdf\xad\xdb\xec\x7f\x=
00\x00\x00"
=A0 =A0 =A0 "\xd8\x46\x76\xff\xf7\xea\x36\xfb\x1f\x00\x00\x00\xb6\x91\xdd\x=
ff\xfd\xba"
=A0 =A0 =A0 "\x6d\xc8\xfe\xd7\xff\xeb\xff\xf5\xff\xfa\xff\xd0\xff\xeb\xff\x=
57\xe8\xff"
=A0 =A0 =A0 "\xf5\xff\x2b\xf4\xff\xfa\xff\x2b\xbc\x5f\xff\xaf\xff\xe7\xb8\x=
b3\xf5\xff"
=A0 =A0 =A0 "\xd9\xfd\x37\xd7\x6d\x43\xf6\x3f\x00\x00\x00\x4c\x90\xdd\xff\x=
83\xba\xcd"
=A0 =A0 =A0 "\xfe\x07\x00\x00\x80\x6d\x64\xf7\xff\xb0\x6e\xb3\xff\x01\x00\x=
00\x60\x1b"
=A0 =A0 =A0 "\xd9\xfd\x3f\xaa\xdb\x86\xec\x7f\xfd\xbf\xfe\x5f\xff\xaf\xff\x=
0f\xfd\xbf"
=A0 =A0 =A0 "\xfe\x7f\x85\xfe\x5f\xff\xbf\x42\xff\xaf\xff\xbf\xc2\xfb\xf5\x=
ff\xfa\x7f"
=A0 =A0 =A0 "\x8e\x3b\x5b\xff\x9f\xdd\xff\xe3\xba\x6d\xc8\xfe\x07\x00\x00\x=
80\x09\xb2"
=A0 =A0 =A0 "\xfb\x7f\x52\xb7\xd9\xff\x00\x00\x00\xb0\x8d\xec\xfe\x9f\xd6\x=
6d\xf6\x3f"
=A0 =A0 =A0 "\x00\x00\x00\x6c\x23\xbb\xff\x67\x75\xdb\x90\xfd\xaf\xff\xd7\x=
ff\xeb\xff"
=A0 =A0 =A0 "\xf5\xff\xa1\xff\xd7\xff\xaf\xd0\xff\xeb\xff\x57\xe8\xff\xf5\x=
ff\x57\x78"
=A0 =A0 =A0 "\xbf\xfe\x5f\xff\xcf\x71\x67\xeb\xff\xb3\xfb\x7f\x5e\xb7\x0d\x=
d9\xff\x00"
=A0 =A0 =A0 "\x00\x00\x30\x41\x76\xff\x2f\xea\x36\xfb\x1f\x00\x00\x00\xb6\x=
91\xdd\xff"
=A0 =A0 =A0 "\xcb\xba\xcd\xfe\x07\x00\x00\x80\x6d\x64\xf7\xff\xaa\x6e\x1b\x=
b2\xff\xf5"
=A0 =A0 =A0 "\xff\xfa\x7f\xfd\xbf\xfe\x3f\xf4\xff\xfa\xff\x15\xfa\x7f\xfd\x=
ff\x0a\xfd"
=A0 =A0 =A0 "\xbf\xfe\xff\x0a\xef\xd7\xff\xeb\xff\x39\xee\x6c\xfd\x7f\x76\x=
ff\xaf\xeb"
=A0 =A0 =A0 "\xb6\x21\xfb\x1f\x00\x00\x00\x26\xc8\xee\xff\x4d\xdd\x66\xff\x=
03\x00\x00"
=A0 =A0 =A0 "\xc0\x36\xb2\xfb\x7f\x5b\xb7\xd9\xff\x00\x00\x00\xb0\x8d\xec\x=
fe\xdf\xd5"
=A0 =A0 =A0 "\x6d\x43\xf6\xbf\xfe\x5f\xff\xaf\xff\xd7\xff\x87\xfe\x5f\xff\x=
bf\x42\xff"
=A0 =A0 =A0 "\xaf\xff\x5f\xa1\xff\xd7\xff\x5f\xe1\xfd\xfa\x7f\xfd\x3f\xc7\x=
9d\xad\xff"
=A0 =A0 =A0 "\xcf\xee\xff\x7d\xdd\x36\x64\xff\x03\x00\x00\xc0\x04\xd9\xfd\x=
7f\xa8\xdb"
=A0 =A0 =A0 "\xec\x7f\x00\x00\x00\xd8\x46\x76\xff\x1f\xeb\x36\xfb\x1f\x00\x=
00\x00\xb6"
=A0 =A0 =A0 "\x91\xdd\xff\xa7\xba\x6d\xc8\xfe\xd7\xff\xeb\xff\xf5\xff\xfa\x=
ff\xd0\xff"
=A0 =A0 =A0 "\xeb\xff\x57\xe8\xff\xf5\xff\x2b\xf4\xff\xfa\xff\x2b\xbc\x5f\x=
ff\xaf\xff"
=A0 =A0 =A0 "\xe7\xb8\xb3\xf5\xff\xd9\xfd\x7f\x0e\x00\x00\xff\xff\x66\xb4\x=
6a\xc0",
=A0 =A0 =A0 24155);
=A0 syz_mount_image(/*fs=3D*/0x20005dc0, /*dir=3D*/0x20000080, /*flags=3D*/=
0,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /*opts=3D*/0x200000c0, /*chdir=3D*/1, /=
*size=3D*/0x5e5b,
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /*img=3D*/0x2000bc00);
=A0 memcpy((void*)0x20000100, "./file1\000", 8);
=A0 res =3D syscall(
=A0 =A0 =A0 __NR_openat, /*fd=3D*/0xffffff9c, /*file=3D*/0x20000100ul,
=A0 =A0 =A0 /*flags=3DO_NOATIME|O_LARGEFILE|O_DIRECT|O_CREAT|0x2*/ 0x4c042,
=A0 =A0 =A0 /*mode=3DS_IXOTH|S_IWOTH|S_IROTH|S_IXGRP|S_IWGRP|S_IRGRP|S_IXUS=
R|S_IWUSR|0x100*/
=A0 =A0 =A0 0x1ff);
=A0 if (res !=3D -1)
=A0 =A0 r[0] =3D res;
=A0 memcpy((void*)0x20000000, "/dev/loop#\000", 11);
=A0 res =3D -1;
=A0 res =3D syz_open_dev(/*dev=3D*/0x20000000, /*id=3D*/5, /*flags=3DO_CREA=
T*/ 0x40);
=A0 if (res !=3D -1)
=A0 =A0 r[1] =3D res;
=A0 syscall(__NR_ioctl, /*fd=3D*/r[1], /*cmd=3D*/0x4c00, /*arg=3D*/r[0]);
}
int main(void)
{
=A0 syscall(__NR_mmap, /*addr=3D*/0x1ffff000ul, /*len=3D*/0x1000ul, /*prot=
=3D*/0ul,
=A0 =A0 =A0 =A0 =A0 /*flags=3DMAP_FIXED|MAP_ANONYMOUS|MAP_PRIVATE*/ 0x32ul,=
 /*fd=3D*/-1,
=A0 =A0 =A0 =A0 =A0 /*offset=3D*/0ul);
=A0 syscall(__NR_mmap, /*addr=3D*/0x20000000ul, /*len=3D*/0x1000000ul,
=A0 =A0 =A0 =A0 =A0 /*prot=3DPROT_WRITE|PROT_READ|PROT_EXEC*/ 7ul,
=A0 =A0 =A0 =A0 =A0 /*flags=3DMAP_FIXED|MAP_ANONYMOUS|MAP_PRIVATE*/ 0x32ul,=
 /*fd=3D*/-1,
=A0 =A0 =A0 =A0 =A0 /*offset=3D*/0ul);
=A0 syscall(__NR_mmap, /*addr=3D*/0x21000000ul, /*len=3D*/0x1000ul, /*prot=
=3D*/0ul,
=A0 =A0 =A0 =A0 =A0 /*flags=3DMAP_FIXED|MAP_ANONYMOUS|MAP_PRIVATE*/ 0x32ul,=
 /*fd=3D*/-1,
=A0 =A0 =A0 =A0 =A0 /*offset=3D*/0ul);
=A0 const char* reason;
=A0 (void)reason;
=A0 if ((reason =3D setup_802154()))
=A0 =A0 printf("the reproducer may not work as expected: 802154 injection s=
etup "
=A0 =A0 =A0 =A0 =A0 =A0"failed: %s\n",
=A0 =A0 =A0 =A0 =A0 =A0reason);
=A0 use_temporary_dir();
=A0 loop();
=A0 return 0;
}

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
kernel build .config
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

#
# Automatically generated file; DO NOT EDIT.
# Linux/x86 6.13.0-rc7 Kernel Configuration
#
CONFIG_CC_VERSION_TEXT=3D"gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
CONFIG_CC_IS_GCC=3Dy
CONFIG_GCC_VERSION=3D110400
CONFIG_CLANG_VERSION=3D0
CONFIG_AS_IS_GNU=3Dy
CONFIG_AS_VERSION=3D23800
CONFIG_LD_IS_BFD=3Dy
CONFIG_LD_VERSION=3D23800
CONFIG_LLD_VERSION=3D0
CONFIG_RUSTC_VERSION=3D0
CONFIG_RUSTC_LLVM_VERSION=3D0
CONFIG_CC_CAN_LINK=3Dy
CONFIG_CC_CAN_LINK_STATIC=3Dy
CONFIG_GCC_ASM_GOTO_OUTPUT_BROKEN=3Dy
CONFIG_TOOLS_SUPPORT_RELR=3Dy
CONFIG_CC_HAS_ASM_INLINE=3Dy
CONFIG_CC_HAS_NO_PROFILE_FN_ATTR=3Dy
CONFIG_PAHOLE_VERSION=3D125
CONFIG_CONSTRUCTORS=3Dy
CONFIG_IRQ_WORK=3Dy
CONFIG_BUILDTIME_TABLE_SORT=3Dy
CONFIG_THREAD_INFO_IN_TASK=3Dy

#
# General setup
#
CONFIG_INIT_ENV_ARG_LIMIT=3D32
# CONFIG_COMPILE_TEST is not set
# CONFIG_WERROR is not set
CONFIG_LOCALVERSION=3D""
CONFIG_LOCALVERSION_AUTO=3Dy
CONFIG_BUILD_SALT=3D""
CONFIG_HAVE_KERNEL_GZIP=3Dy
CONFIG_HAVE_KERNEL_BZIP2=3Dy
CONFIG_HAVE_KERNEL_LZMA=3Dy
CONFIG_HAVE_KERNEL_XZ=3Dy
CONFIG_HAVE_KERNEL_LZO=3Dy
CONFIG_HAVE_KERNEL_LZ4=3Dy
CONFIG_HAVE_KERNEL_ZSTD=3Dy
CONFIG_KERNEL_GZIP=3Dy
# CONFIG_KERNEL_BZIP2 is not set
# CONFIG_KERNEL_LZMA is not set
# CONFIG_KERNEL_XZ is not set
# CONFIG_KERNEL_LZO is not set
# CONFIG_KERNEL_LZ4 is not set
# CONFIG_KERNEL_ZSTD is not set
CONFIG_DEFAULT_INIT=3D""
CONFIG_DEFAULT_HOSTNAME=3D"(none)"
CONFIG_SYSVIPC=3Dy
CONFIG_SYSVIPC_SYSCTL=3Dy
CONFIG_SYSVIPC_COMPAT=3Dy
CONFIG_POSIX_MQUEUE=3Dy
CONFIG_POSIX_MQUEUE_SYSCTL=3Dy
CONFIG_WATCH_QUEUE=3Dy
CONFIG_CROSS_MEMORY_ATTACH=3Dy
# CONFIG_USELIB is not set
CONFIG_AUDIT=3Dy
CONFIG_HAVE_ARCH_AUDITSYSCALL=3Dy
CONFIG_AUDITSYSCALL=3Dy

#
# IRQ subsystem
#
CONFIG_GENERIC_IRQ_PROBE=3Dy
CONFIG_GENERIC_IRQ_SHOW=3Dy
CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=3Dy
CONFIG_GENERIC_PENDING_IRQ=3Dy
CONFIG_GENERIC_IRQ_MIGRATION=3Dy
CONFIG_HARDIRQS_SW_RESEND=3Dy
CONFIG_IRQ_DOMAIN=3Dy
CONFIG_IRQ_DOMAIN_HIERARCHY=3Dy
CONFIG_GENERIC_MSI_IRQ=3Dy
CONFIG_IRQ_MSI_IOMMU=3Dy
CONFIG_GENERIC_IRQ_MATRIX_ALLOCATOR=3Dy
CONFIG_GENERIC_IRQ_RESERVATION_MODE=3Dy
CONFIG_IRQ_FORCED_THREADING=3Dy
CONFIG_SPARSE_IRQ=3Dy
# CONFIG_GENERIC_IRQ_DEBUGFS is not set
# end of IRQ subsystem

CONFIG_CLOCKSOURCE_WATCHDOG=3Dy
CONFIG_ARCH_CLOCKSOURCE_INIT=3Dy
CONFIG_GENERIC_TIME_VSYSCALL=3Dy
CONFIG_GENERIC_CLOCKEVENTS=3Dy
CONFIG_GENERIC_CLOCKEVENTS_BROADCAST=3Dy
CONFIG_GENERIC_CLOCKEVENTS_BROADCAST_IDLE=3Dy
CONFIG_GENERIC_CLOCKEVENTS_MIN_ADJUST=3Dy
CONFIG_GENERIC_CMOS_UPDATE=3Dy
CONFIG_HAVE_POSIX_CPU_TIMERS_TASK_WORK=3Dy
CONFIG_POSIX_CPU_TIMERS_TASK_WORK=3Dy
CONFIG_CONTEXT_TRACKING=3Dy
CONFIG_CONTEXT_TRACKING_IDLE=3Dy

#
# Timers subsystem
#
CONFIG_TICK_ONESHOT=3Dy
CONFIG_NO_HZ_COMMON=3Dy
# CONFIG_HZ_PERIODIC is not set
CONFIG_NO_HZ_IDLE=3Dy
# CONFIG_NO_HZ_FULL is not set
CONFIG_CONTEXT_TRACKING_USER=3Dy
# CONFIG_CONTEXT_TRACKING_USER_FORCE is not set
CONFIG_NO_HZ=3Dy
CONFIG_HIGH_RES_TIMERS=3Dy
CONFIG_CLOCKSOURCE_WATCHDOG_MAX_SKEW_US=3D125
# end of Timers subsystem

CONFIG_BPF=3Dy
CONFIG_HAVE_EBPF_JIT=3Dy
CONFIG_ARCH_WANT_DEFAULT_BPF_JIT=3Dy

#
# BPF subsystem
#
CONFIG_BPF_SYSCALL=3Dy
CONFIG_BPF_JIT=3Dy
# CONFIG_BPF_JIT_ALWAYS_ON is not set
CONFIG_BPF_JIT_DEFAULT_ON=3Dy
# CONFIG_BPF_UNPRIV_DEFAULT_OFF is not set
CONFIG_USERMODE_DRIVER=3Dy
CONFIG_BPF_PRELOAD=3Dy
CONFIG_BPF_PRELOAD_UMD=3Dy
CONFIG_BPF_LSM=3Dy
# end of BPF subsystem

CONFIG_PREEMPT_BUILD=3Dy
CONFIG_ARCH_HAS_PREEMPT_LAZY=3Dy
# CONFIG_PREEMPT_NONE is not set
# CONFIG_PREEMPT_VOLUNTARY is not set
CONFIG_PREEMPT=3Dy
# CONFIG_PREEMPT_LAZY is not set
# CONFIG_PREEMPT_RT is not set
CONFIG_PREEMPT_COUNT=3Dy
CONFIG_PREEMPTION=3Dy
CONFIG_PREEMPT_DYNAMIC=3Dy
CONFIG_SCHED_CORE=3Dy

#
# CPU/Task time and stats accounting
#
CONFIG_VIRT_CPU_ACCOUNTING=3Dy
# CONFIG_TICK_CPU_ACCOUNTING is not set
CONFIG_VIRT_CPU_ACCOUNTING_GEN=3Dy
CONFIG_IRQ_TIME_ACCOUNTING=3Dy
CONFIG_HAVE_SCHED_AVG_IRQ=3Dy
CONFIG_BSD_PROCESS_ACCT=3Dy
CONFIG_BSD_PROCESS_ACCT_V3=3Dy
CONFIG_TASKSTATS=3Dy
CONFIG_TASK_DELAY_ACCT=3Dy
CONFIG_TASK_XACCT=3Dy
CONFIG_TASK_IO_ACCOUNTING=3Dy
CONFIG_PSI=3Dy
# CONFIG_PSI_DEFAULT_DISABLED is not set
# end of CPU/Task time and stats accounting

CONFIG_CPU_ISOLATION=3Dy

#
# RCU Subsystem
#
CONFIG_TREE_RCU=3Dy
CONFIG_PREEMPT_RCU=3Dy
# CONFIG_RCU_EXPERT is not set
CONFIG_TREE_SRCU=3Dy
CONFIG_TASKS_RCU_GENERIC=3Dy
CONFIG_NEED_TASKS_RCU=3Dy
CONFIG_TASKS_RCU=3Dy
CONFIG_TASKS_TRACE_RCU=3Dy
CONFIG_RCU_STALL_COMMON=3Dy
CONFIG_RCU_NEED_SEGCBLIST=3Dy
# end of RCU Subsystem

CONFIG_IKCONFIG=3Dy
CONFIG_IKCONFIG_PROC=3Dy
# CONFIG_IKHEADERS is not set
CONFIG_LOG_BUF_SHIFT=3D18
CONFIG_LOG_CPU_MAX_BUF_SHIFT=3D12
# CONFIG_PRINTK_INDEX is not set
CONFIG_HAVE_UNSTABLE_SCHED_CLOCK=3Dy

#
# Scheduler features
#
# CONFIG_UCLAMP_TASK is not set
# end of Scheduler features

CONFIG_ARCH_SUPPORTS_NUMA_BALANCING=3Dy
CONFIG_ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH=3Dy
CONFIG_CC_HAS_INT128=3Dy
CONFIG_CC_IMPLICIT_FALLTHROUGH=3D"-Wimplicit-fallthrough=3D5"
CONFIG_GCC10_NO_ARRAY_BOUNDS=3Dy
CONFIG_CC_NO_ARRAY_BOUNDS=3Dy
CONFIG_GCC_NO_STRINGOP_OVERFLOW=3Dy
CONFIG_CC_NO_STRINGOP_OVERFLOW=3Dy
CONFIG_ARCH_SUPPORTS_INT128=3Dy
CONFIG_NUMA_BALANCING=3Dy
CONFIG_NUMA_BALANCING_DEFAULT_ENABLED=3Dy
CONFIG_SLAB_OBJ_EXT=3Dy
CONFIG_CGROUPS=3Dy
CONFIG_PAGE_COUNTER=3Dy
# CONFIG_CGROUP_FAVOR_DYNMODS is not set
CONFIG_MEMCG=3Dy
CONFIG_MEMCG_V1=3Dy
CONFIG_BLK_CGROUP=3Dy
CONFIG_CGROUP_WRITEBACK=3Dy
CONFIG_CGROUP_SCHED=3Dy
CONFIG_GROUP_SCHED_WEIGHT=3Dy
CONFIG_FAIR_GROUP_SCHED=3Dy
CONFIG_CFS_BANDWIDTH=3Dy
# CONFIG_RT_GROUP_SCHED is not set
CONFIG_SCHED_MM_CID=3Dy
CONFIG_CGROUP_PIDS=3Dy
CONFIG_CGROUP_RDMA=3Dy
CONFIG_CGROUP_FREEZER=3Dy
CONFIG_CGROUP_HUGETLB=3Dy
CONFIG_CPUSETS=3Dy
# CONFIG_CPUSETS_V1 is not set
CONFIG_PROC_PID_CPUSET=3Dy
CONFIG_CGROUP_DEVICE=3Dy
CONFIG_CGROUP_CPUACCT=3Dy
CONFIG_CGROUP_PERF=3Dy
CONFIG_CGROUP_BPF=3Dy
CONFIG_CGROUP_MISC=3Dy
CONFIG_CGROUP_DEBUG=3Dy
CONFIG_SOCK_CGROUP_DATA=3Dy
CONFIG_NAMESPACES=3Dy
CONFIG_UTS_NS=3Dy
CONFIG_TIME_NS=3Dy
CONFIG_IPC_NS=3Dy
CONFIG_USER_NS=3Dy
CONFIG_PID_NS=3Dy
CONFIG_NET_NS=3Dy
CONFIG_CHECKPOINT_RESTORE=3Dy
# CONFIG_SCHED_AUTOGROUP is not set
CONFIG_RELAY=3Dy
CONFIG_BLK_DEV_INITRD=3Dy
CONFIG_INITRAMFS_SOURCE=3D""
CONFIG_RD_GZIP=3Dy
CONFIG_RD_BZIP2=3Dy
CONFIG_RD_LZMA=3Dy
CONFIG_RD_XZ=3Dy
CONFIG_RD_LZO=3Dy
CONFIG_RD_LZ4=3Dy
CONFIG_RD_ZSTD=3Dy
# CONFIG_BOOT_CONFIG is not set
CONFIG_INITRAMFS_PRESERVE_MTIME=3Dy
CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=3Dy
# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
CONFIG_LD_ORPHAN_WARN=3Dy
CONFIG_LD_ORPHAN_WARN_LEVEL=3D"warn"
CONFIG_SYSCTL=3Dy
CONFIG_HAVE_UID16=3Dy
CONFIG_SYSCTL_EXCEPTION_TRACE=3Dy
CONFIG_HAVE_PCSPKR_PLATFORM=3Dy
CONFIG_EXPERT=3Dy
CONFIG_UID16=3Dy
CONFIG_MULTIUSER=3Dy
CONFIG_SGETMASK_SYSCALL=3Dy
CONFIG_SYSFS_SYSCALL=3Dy
CONFIG_FHANDLE=3Dy
CONFIG_POSIX_TIMERS=3Dy
CONFIG_PRINTK=3Dy
CONFIG_BUG=3Dy
CONFIG_ELF_CORE=3Dy
CONFIG_PCSPKR_PLATFORM=3Dy
# CONFIG_BASE_SMALL is not set
CONFIG_FUTEX=3Dy
CONFIG_FUTEX_PI=3Dy
CONFIG_EPOLL=3Dy
CONFIG_SIGNALFD=3Dy
CONFIG_TIMERFD=3Dy
CONFIG_EVENTFD=3Dy
CONFIG_SHMEM=3Dy
CONFIG_AIO=3Dy
CONFIG_IO_URING=3Dy
CONFIG_ADVISE_SYSCALLS=3Dy
CONFIG_MEMBARRIER=3Dy
CONFIG_KCMP=3Dy
CONFIG_RSEQ=3Dy
# CONFIG_DEBUG_RSEQ is not set
CONFIG_CACHESTAT_SYSCALL=3Dy
# CONFIG_PC104 is not set
CONFIG_KALLSYMS=3Dy
# CONFIG_KALLSYMS_SELFTEST is not set
CONFIG_KALLSYMS_ALL=3Dy
CONFIG_KALLSYMS_ABSOLUTE_PERCPU=3Dy
CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE=3Dy
CONFIG_HAVE_PERF_EVENTS=3Dy
CONFIG_GUEST_PERF_EVENTS=3Dy

#
# Kernel Performance Events And Counters
#
CONFIG_PERF_EVENTS=3Dy
# CONFIG_DEBUG_PERF_USE_VMALLOC is not set
# end of Kernel Performance Events And Counters

CONFIG_SYSTEM_DATA_VERIFICATION=3Dy
CONFIG_PROFILING=3Dy
CONFIG_TRACEPOINTS=3Dy

#
# Kexec and crash features
#
CONFIG_CRASH_RESERVE=3Dy
CONFIG_VMCORE_INFO=3Dy
CONFIG_KEXEC_CORE=3Dy
CONFIG_KEXEC=3Dy
# CONFIG_KEXEC_FILE is not set
# CONFIG_KEXEC_JUMP is not set
CONFIG_CRASH_DUMP=3Dy
CONFIG_CRASH_HOTPLUG=3Dy
CONFIG_CRASH_MAX_MEMORY_RANGES=3D8192
# end of Kexec and crash features
# end of General setup

CONFIG_64BIT=3Dy
CONFIG_X86_64=3Dy
CONFIG_X86=3Dy
CONFIG_INSTRUCTION_DECODER=3Dy
CONFIG_OUTPUT_FORMAT=3D"elf64-x86-64"
CONFIG_LOCKDEP_SUPPORT=3Dy
CONFIG_STACKTRACE_SUPPORT=3Dy
CONFIG_MMU=3Dy
CONFIG_ARCH_MMAP_RND_BITS_MIN=3D28
CONFIG_ARCH_MMAP_RND_BITS_MAX=3D32
CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=3D8
CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=3D16
CONFIG_GENERIC_ISA_DMA=3Dy
CONFIG_GENERIC_CSUM=3Dy
CONFIG_GENERIC_BUG=3Dy
CONFIG_GENERIC_BUG_RELATIVE_POINTERS=3Dy
CONFIG_ARCH_MAY_HAVE_PC_FDC=3Dy
CONFIG_GENERIC_CALIBRATE_DELAY=3Dy
CONFIG_ARCH_HAS_CPU_RELAX=3Dy
CONFIG_ARCH_HIBERNATION_POSSIBLE=3Dy
CONFIG_ARCH_SUSPEND_POSSIBLE=3Dy
CONFIG_AUDIT_ARCH=3Dy
CONFIG_KASAN_SHADOW_OFFSET=3D0xdffffc0000000000
CONFIG_HAVE_INTEL_TXT=3Dy
CONFIG_X86_64_SMP=3Dy
CONFIG_ARCH_SUPPORTS_UPROBES=3Dy
CONFIG_FIX_EARLYCON_MEM=3Dy
CONFIG_PGTABLE_LEVELS=3D4
CONFIG_CC_HAS_SANE_STACKPROTECTOR=3Dy

#
# Processor type and features
#
CONFIG_SMP=3Dy
CONFIG_X86_X2APIC=3Dy
# CONFIG_X86_POSTED_MSI is not set
CONFIG_X86_MPPARSE=3Dy
# CONFIG_X86_CPU_RESCTRL is not set
# CONFIG_X86_FRED is not set
CONFIG_X86_EXTENDED_PLATFORM=3Dy
# CONFIG_X86_NUMACHIP is not set
# CONFIG_X86_VSMP is not set
# CONFIG_X86_GOLDFISH is not set
# CONFIG_X86_INTEL_MID is not set
# CONFIG_X86_INTEL_LPSS is not set
# CONFIG_X86_AMD_PLATFORM_DEVICE is not set
CONFIG_IOSF_MBI=3Dy
# CONFIG_IOSF_MBI_DEBUG is not set
CONFIG_X86_SUPPORTS_MEMORY_FAILURE=3Dy
CONFIG_SCHED_OMIT_FRAME_POINTER=3Dy
CONFIG_HYPERVISOR_GUEST=3Dy
CONFIG_PARAVIRT=3Dy
CONFIG_PARAVIRT_DEBUG=3Dy
CONFIG_PARAVIRT_SPINLOCKS=3Dy
CONFIG_X86_HV_CALLBACK_VECTOR=3Dy
# CONFIG_XEN is not set
CONFIG_KVM_GUEST=3Dy
CONFIG_ARCH_CPUIDLE_HALTPOLL=3Dy
CONFIG_PVH=3Dy
# CONFIG_PARAVIRT_TIME_ACCOUNTING is not set
CONFIG_PARAVIRT_CLOCK=3Dy
# CONFIG_JAILHOUSE_GUEST is not set
# CONFIG_ACRN_GUEST is not set
# CONFIG_MK8 is not set
# CONFIG_MPSC is not set
CONFIG_MCORE2=3Dy
# CONFIG_MATOM is not set
# CONFIG_GENERIC_CPU is not set
CONFIG_X86_INTERNODE_CACHE_SHIFT=3D6
CONFIG_X86_L1_CACHE_SHIFT=3D6
CONFIG_X86_INTEL_USERCOPY=3Dy
CONFIG_X86_USE_PPRO_CHECKSUM=3Dy
CONFIG_X86_P6_NOP=3Dy
CONFIG_X86_TSC=3Dy
CONFIG_X86_HAVE_PAE=3Dy
CONFIG_X86_CMPXCHG64=3Dy
CONFIG_X86_CMOV=3Dy
CONFIG_X86_MINIMUM_CPU_FAMILY=3D64
CONFIG_X86_DEBUGCTLMSR=3Dy
CONFIG_IA32_FEAT_CTL=3Dy
CONFIG_X86_VMX_FEATURE_NAMES=3Dy
CONFIG_PROCESSOR_SELECT=3Dy
CONFIG_CPU_SUP_INTEL=3Dy
CONFIG_CPU_SUP_AMD=3Dy
# CONFIG_CPU_SUP_HYGON is not set
# CONFIG_CPU_SUP_CENTAUR is not set
# CONFIG_CPU_SUP_ZHAOXIN is not set
CONFIG_HPET_TIMER=3Dy
CONFIG_HPET_EMULATE_RTC=3Dy
CONFIG_DMI=3Dy
# CONFIG_GART_IOMMU is not set
CONFIG_BOOT_VESA_SUPPORT=3Dy
# CONFIG_MAXSMP is not set
CONFIG_NR_CPUS_RANGE_BEGIN=3D2
CONFIG_NR_CPUS_RANGE_END=3D512
CONFIG_NR_CPUS_DEFAULT=3D64
CONFIG_NR_CPUS=3D8
CONFIG_SCHED_CLUSTER=3Dy
CONFIG_SCHED_SMT=3Dy
CONFIG_SCHED_MC=3Dy
CONFIG_SCHED_MC_PRIO=3Dy
CONFIG_X86_LOCAL_APIC=3Dy
CONFIG_ACPI_MADT_WAKEUP=3Dy
CONFIG_X86_IO_APIC=3Dy
CONFIG_X86_REROUTE_FOR_BROKEN_BOOT_IRQS=3Dy
CONFIG_X86_MCE=3Dy
# CONFIG_X86_MCELOG_LEGACY is not set
CONFIG_X86_MCE_INTEL=3Dy
CONFIG_X86_MCE_AMD=3Dy
CONFIG_X86_MCE_THRESHOLD=3Dy
# CONFIG_X86_MCE_INJECT is not set

#
# Performance monitoring
#
CONFIG_PERF_EVENTS_INTEL_UNCORE=3Dy
CONFIG_PERF_EVENTS_INTEL_RAPL=3Dy
CONFIG_PERF_EVENTS_INTEL_CSTATE=3Dy
# CONFIG_PERF_EVENTS_AMD_POWER is not set
CONFIG_PERF_EVENTS_AMD_UNCORE=3Dy
# CONFIG_PERF_EVENTS_AMD_BRS is not set
# end of Performance monitoring

CONFIG_X86_16BIT=3Dy
CONFIG_X86_ESPFIX64=3Dy
CONFIG_X86_VSYSCALL_EMULATION=3Dy
CONFIG_X86_IOPL_IOPERM=3Dy
CONFIG_MICROCODE=3Dy
# CONFIG_MICROCODE_LATE_LOADING is not set
CONFIG_X86_MSR=3Dy
CONFIG_X86_CPUID=3Dy
# CONFIG_X86_5LEVEL is not set
CONFIG_X86_DIRECT_GBPAGES=3Dy
# CONFIG_X86_CPA_STATISTICS is not set
CONFIG_NUMA=3Dy
CONFIG_AMD_NUMA=3Dy
CONFIG_X86_64_ACPI_NUMA=3Dy
CONFIG_NODES_SHIFT=3D6
CONFIG_ARCH_SPARSEMEM_ENABLE=3Dy
CONFIG_ARCH_SPARSEMEM_DEFAULT=3Dy
# CONFIG_ARCH_MEMORY_PROBE is not set
CONFIG_ARCH_PROC_KCORE_TEXT=3Dy
CONFIG_ILLEGAL_POINTER_VALUE=3D0xdead000000000000
# CONFIG_X86_PMEM_LEGACY is not set
# CONFIG_X86_CHECK_BIOS_CORRUPTION is not set
CONFIG_MTRR=3Dy
# CONFIG_MTRR_SANITIZER is not set
CONFIG_X86_PAT=3Dy
CONFIG_X86_UMIP=3Dy
CONFIG_CC_HAS_IBT=3Dy
CONFIG_X86_CET=3Dy
CONFIG_X86_KERNEL_IBT=3Dy
CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS=3Dy
CONFIG_ARCH_PKEY_BITS=3D4
# CONFIG_X86_INTEL_TSX_MODE_OFF is not set
CONFIG_X86_INTEL_TSX_MODE_ON=3Dy
# CONFIG_X86_INTEL_TSX_MODE_AUTO is not set
CONFIG_X86_SGX=3Dy
CONFIG_X86_USER_SHADOW_STACK=3Dy
# CONFIG_EFI is not set
CONFIG_HZ_100=3Dy
# CONFIG_HZ_250 is not set
# CONFIG_HZ_300 is not set
# CONFIG_HZ_1000 is not set
CONFIG_HZ=3D100
CONFIG_SCHED_HRTICK=3Dy
CONFIG_ARCH_SUPPORTS_KEXEC=3Dy
CONFIG_ARCH_SUPPORTS_KEXEC_FILE=3Dy
CONFIG_ARCH_SUPPORTS_KEXEC_PURGATORY=3Dy
CONFIG_ARCH_SUPPORTS_KEXEC_SIG=3Dy
CONFIG_ARCH_SUPPORTS_KEXEC_SIG_FORCE=3Dy
CONFIG_ARCH_SUPPORTS_KEXEC_BZIMAGE_VERIFY_SIG=3Dy
CONFIG_ARCH_SUPPORTS_KEXEC_JUMP=3Dy
CONFIG_ARCH_SUPPORTS_CRASH_DUMP=3Dy
CONFIG_ARCH_DEFAULT_CRASH_DUMP=3Dy
CONFIG_ARCH_SUPPORTS_CRASH_HOTPLUG=3Dy
CONFIG_ARCH_HAS_GENERIC_CRASHKERNEL_RESERVATION=3Dy
CONFIG_PHYSICAL_START=3D0x1000000
# CONFIG_RELOCATABLE is not set
CONFIG_PHYSICAL_ALIGN=3D0x200000
CONFIG_HOTPLUG_CPU=3Dy
# CONFIG_COMPAT_VDSO is not set
CONFIG_LEGACY_VSYSCALL_XONLY=3Dy
# CONFIG_LEGACY_VSYSCALL_NONE is not set
CONFIG_CMDLINE_BOOL=3Dy
CONFIG_CMDLINE=3D"earlyprintk=3Dserial net.ifnames=3D0 sysctl.kernel.hung_t=
ask_all_cpu_backtrace=3D1 ima_policy=3Dtcb nf-conntrack-ftp.ports=3D20000 n=
f-conntrack-tftp.ports=3D20000 nf-conntrack-sip.ports=3D20000 nf-conntrack-=
irc.ports=3D20000 nf-conntrack-sane.ports=3D20000 binder.debug_mask=3D0 rcu=
pdate.rcu_expedited=3D1 rcupdate.rcu_cpu_stall_cputime=3D1 no_hash_pointers=
 page_owner=3Don sysctl.vm.nr_hugepages=3D4 sysctl.vm.nr_overcommit_hugepag=
es=3D4 secretmem.enable=3D1 sysctl.max_rcu_stall_to_panic=3D1 msr.allow_wri=
tes=3Doff coredump_filter=3D0xffff root=3D/dev/sda console=3DttyS0 vsyscall=
=3Dnative numa=3Dfake=3D2 kvm-intel.nested=3D1 spec_store_bypass_disable=3D=
prctl nopcid vivid.n_devs=3D64 vivid.multiplanar=3D1,2,1,2,1,2,1,2,1,2,1,2,=
1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2=
,1,2,1,2,1,2,1,2,1,2,1,2,1,2 netrom.nr_ndevs=3D32 rose.rose_ndevs=3D32 smp.=
csd_lock_timeout=3D100000 watchdog_thresh=3D55 workqueue.watchdog_thresh=3D=
140 sysctl.net.core.netdev_unregister_timeout_secs=3D140 dummy_hcd.num=3D32=
 max_loop=3D32 nbds_max=3D32 panic_on_warn=3D1"
# CONFIG_CMDLINE_OVERRIDE is not set
CONFIG_MODIFY_LDT_SYSCALL=3Dy
# CONFIG_STRICT_SIGALTSTACK_SIZE is not set
CONFIG_HAVE_LIVEPATCH=3Dy
CONFIG_X86_BUS_LOCK_DETECT=3Dy
# end of Processor type and features

CONFIG_CC_HAS_NAMED_AS=3Dy
CONFIG_CC_HAS_SLS=3Dy
CONFIG_CC_HAS_RETURN_THUNK=3Dy
CONFIG_CC_HAS_ENTRY_PADDING=3Dy
CONFIG_FUNCTION_PADDING_CFI=3D11
CONFIG_FUNCTION_PADDING_BYTES=3D16
CONFIG_CALL_PADDING=3Dy
CONFIG_HAVE_CALL_THUNKS=3Dy
CONFIG_CALL_THUNKS=3Dy
CONFIG_PREFIX_SYMBOLS=3Dy
CONFIG_CPU_MITIGATIONS=3Dy
CONFIG_MITIGATION_PAGE_TABLE_ISOLATION=3Dy
CONFIG_MITIGATION_RETPOLINE=3Dy
CONFIG_MITIGATION_RETHUNK=3Dy
CONFIG_MITIGATION_UNRET_ENTRY=3Dy
CONFIG_MITIGATION_CALL_DEPTH_TRACKING=3Dy
# CONFIG_CALL_THUNKS_DEBUG is not set
CONFIG_MITIGATION_IBPB_ENTRY=3Dy
CONFIG_MITIGATION_IBRS_ENTRY=3Dy
CONFIG_MITIGATION_SRSO=3Dy
# CONFIG_MITIGATION_SLS is not set
CONFIG_MITIGATION_GDS=3Dy
CONFIG_MITIGATION_RFDS=3Dy
CONFIG_MITIGATION_SPECTRE_BHI=3Dy
CONFIG_MITIGATION_MDS=3Dy
CONFIG_MITIGATION_TAA=3Dy
CONFIG_MITIGATION_MMIO_STALE_DATA=3Dy
CONFIG_MITIGATION_L1TF=3Dy
CONFIG_MITIGATION_RETBLEED=3Dy
CONFIG_MITIGATION_SPECTRE_V1=3Dy
CONFIG_MITIGATION_SPECTRE_V2=3Dy
CONFIG_MITIGATION_SRBDS=3Dy
CONFIG_MITIGATION_SSB=3Dy
CONFIG_ARCH_HAS_ADD_PAGES=3Dy

#
# Power management and ACPI options
#
CONFIG_ARCH_HIBERNATION_HEADER=3Dy
CONFIG_SUSPEND=3Dy
CONFIG_SUSPEND_FREEZER=3Dy
# CONFIG_SUSPEND_SKIP_SYNC is not set
CONFIG_HIBERNATE_CALLBACKS=3Dy
CONFIG_HIBERNATION=3Dy
CONFIG_HIBERNATION_SNAPSHOT_DEV=3Dy
CONFIG_HIBERNATION_COMP_LZO=3Dy
# CONFIG_HIBERNATION_COMP_LZ4 is not set
CONFIG_HIBERNATION_DEF_COMP=3D"lzo"
CONFIG_PM_STD_PARTITION=3D""
CONFIG_PM_SLEEP=3Dy
CONFIG_PM_SLEEP_SMP=3Dy
# CONFIG_PM_AUTOSLEEP is not set
# CONFIG_PM_USERSPACE_AUTOSLEEP is not set
# CONFIG_PM_WAKELOCKS is not set
CONFIG_PM=3Dy
CONFIG_PM_DEBUG=3Dy
# CONFIG_PM_ADVANCED_DEBUG is not set
# CONFIG_PM_TEST_SUSPEND is not set
CONFIG_PM_SLEEP_DEBUG=3Dy
# CONFIG_DPM_WATCHDOG is not set
CONFIG_PM_TRACE=3Dy
CONFIG_PM_TRACE_RTC=3Dy
CONFIG_PM_CLK=3Dy
# CONFIG_WQ_POWER_EFFICIENT_DEFAULT is not set
# CONFIG_ENERGY_MODEL is not set
CONFIG_ARCH_SUPPORTS_ACPI=3Dy
CONFIG_ACPI=3Dy
CONFIG_ACPI_LEGACY_TABLES_LOOKUP=3Dy
CONFIG_ARCH_MIGHT_HAVE_ACPI_PDC=3Dy
CONFIG_ACPI_SYSTEM_POWER_STATES_SUPPORT=3Dy
CONFIG_ACPI_THERMAL_LIB=3Dy
# CONFIG_ACPI_DEBUGGER is not set
CONFIG_ACPI_SPCR_TABLE=3Dy
# CONFIG_ACPI_FPDT is not set
CONFIG_ACPI_LPIT=3Dy
CONFIG_ACPI_SLEEP=3Dy
CONFIG_ACPI_REV_OVERRIDE_POSSIBLE=3Dy
CONFIG_ACPI_EC=3Dy
# CONFIG_ACPI_EC_DEBUGFS is not set
CONFIG_ACPI_AC=3Dy
CONFIG_ACPI_BATTERY=3Dy
CONFIG_ACPI_BUTTON=3Dy
CONFIG_ACPI_VIDEO=3Dy
CONFIG_ACPI_FAN=3Dy
# CONFIG_ACPI_TAD is not set
CONFIG_ACPI_DOCK=3Dy
CONFIG_ACPI_CPU_FREQ_PSS=3Dy
CONFIG_ACPI_PROCESSOR_CSTATE=3Dy
CONFIG_ACPI_PROCESSOR_IDLE=3Dy
CONFIG_ACPI_CPPC_LIB=3Dy
CONFIG_ACPI_PROCESSOR=3Dy
CONFIG_ACPI_HOTPLUG_CPU=3Dy
# CONFIG_ACPI_PROCESSOR_AGGREGATOR is not set
CONFIG_ACPI_THERMAL=3Dy
CONFIG_ACPI_PLATFORM_PROFILE=3Dy
CONFIG_ARCH_HAS_ACPI_TABLE_UPGRADE=3Dy
CONFIG_ACPI_TABLE_UPGRADE=3Dy
# CONFIG_ACPI_DEBUG is not set
# CONFIG_ACPI_PCI_SLOT is not set
CONFIG_ACPI_CONTAINER=3Dy
# CONFIG_ACPI_HOTPLUG_MEMORY is not set
CONFIG_ACPI_HOTPLUG_IOAPIC=3Dy
# CONFIG_ACPI_SBS is not set
# CONFIG_ACPI_HED is not set
# CONFIG_ACPI_REDUCED_HARDWARE_ONLY is not set
CONFIG_ACPI_NHLT=3Dy
CONFIG_ACPI_NFIT=3Dy
# CONFIG_NFIT_SECURITY_DEBUG is not set
CONFIG_ACPI_NUMA=3Dy
# CONFIG_ACPI_HMAT is not set
CONFIG_HAVE_ACPI_APEI=3Dy
CONFIG_HAVE_ACPI_APEI_NMI=3Dy
# CONFIG_ACPI_APEI is not set
# CONFIG_ACPI_DPTF is not set
# CONFIG_ACPI_EXTLOG is not set
# CONFIG_ACPI_CONFIGFS is not set
# CONFIG_ACPI_PFRUT is not set
CONFIG_ACPI_PCC=3Dy
# CONFIG_ACPI_FFH is not set
CONFIG_PMIC_OPREGION=3Dy
CONFIG_BXT_WC_PMIC_OPREGION=3Dy
# CONFIG_CHT_WC_PMIC_OPREGION is not set
CONFIG_X86_PM_TIMER=3Dy

#
# CPU Frequency scaling
#
CONFIG_CPU_FREQ=3Dy
CONFIG_CPU_FREQ_GOV_ATTR_SET=3Dy
CONFIG_CPU_FREQ_GOV_COMMON=3Dy
# CONFIG_CPU_FREQ_STAT is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_POWERSAVE is not set
CONFIG_CPU_FREQ_DEFAULT_GOV_USERSPACE=3Dy
# CONFIG_CPU_FREQ_DEFAULT_GOV_SCHEDUTIL is not set
CONFIG_CPU_FREQ_GOV_PERFORMANCE=3Dy
# CONFIG_CPU_FREQ_GOV_POWERSAVE is not set
CONFIG_CPU_FREQ_GOV_USERSPACE=3Dy
CONFIG_CPU_FREQ_GOV_ONDEMAND=3Dy
# CONFIG_CPU_FREQ_GOV_CONSERVATIVE is not set
CONFIG_CPU_FREQ_GOV_SCHEDUTIL=3Dy

#
# CPU frequency scaling drivers
#
# CONFIG_CPUFREQ_DT is not set
# CONFIG_CPUFREQ_DT_PLATDEV is not set
CONFIG_X86_INTEL_PSTATE=3Dy
# CONFIG_X86_PCC_CPUFREQ is not set
CONFIG_X86_AMD_PSTATE=3Dy
CONFIG_X86_AMD_PSTATE_DEFAULT_MODE=3D3
# CONFIG_X86_AMD_PSTATE_UT is not set
CONFIG_X86_ACPI_CPUFREQ=3Dy
CONFIG_X86_ACPI_CPUFREQ_CPB=3Dy
# CONFIG_X86_POWERNOW_K8 is not set
# CONFIG_X86_AMD_FREQ_SENSITIVITY is not set
# CONFIG_X86_SPEEDSTEP_CENTRINO is not set
# CONFIG_X86_P4_CLOCKMOD is not set

#
# shared options
#
# end of CPU Frequency scaling

#
# CPU Idle
#
CONFIG_CPU_IDLE=3Dy
# CONFIG_CPU_IDLE_GOV_LADDER is not set
CONFIG_CPU_IDLE_GOV_MENU=3Dy
# CONFIG_CPU_IDLE_GOV_TEO is not set
CONFIG_CPU_IDLE_GOV_HALTPOLL=3Dy
CONFIG_HALTPOLL_CPUIDLE=3Dy
# end of CPU Idle

CONFIG_INTEL_IDLE=3Dy
# end of Power management and ACPI options

#
# Bus options (PCI etc.)
#
CONFIG_PCI_DIRECT=3Dy
CONFIG_PCI_MMCONFIG=3Dy
CONFIG_MMCONF_FAM10H=3Dy
# CONFIG_PCI_CNB20LE_QUIRK is not set
# CONFIG_ISA_BUS is not set
CONFIG_ISA_DMA_API=3Dy
CONFIG_AMD_NB=3Dy
# end of Bus options (PCI etc.)

#
# Binary Emulations
#
CONFIG_IA32_EMULATION=3Dy
# CONFIG_IA32_EMULATION_DEFAULT_DISABLED is not set
CONFIG_X86_X32_ABI=3Dy
CONFIG_COMPAT_32=3Dy
CONFIG_COMPAT=3Dy
CONFIG_COMPAT_FOR_U64_ALIGNMENT=3Dy
# end of Binary Emulations

CONFIG_KVM_COMMON=3Dy
CONFIG_HAVE_KVM_PFNCACHE=3Dy
CONFIG_HAVE_KVM_IRQCHIP=3Dy
CONFIG_HAVE_KVM_IRQ_ROUTING=3Dy
CONFIG_HAVE_KVM_DIRTY_RING=3Dy
CONFIG_HAVE_KVM_DIRTY_RING_TSO=3Dy
CONFIG_HAVE_KVM_DIRTY_RING_ACQ_REL=3Dy
CONFIG_KVM_MMIO=3Dy
CONFIG_KVM_ASYNC_PF=3Dy
CONFIG_HAVE_KVM_MSI=3Dy
CONFIG_HAVE_KVM_READONLY_MEM=3Dy
CONFIG_HAVE_KVM_CPU_RELAX_INTERCEPT=3Dy
CONFIG_KVM_VFIO=3Dy
CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT=3Dy
CONFIG_KVM_GENERIC_PRE_FAULT_MEMORY=3Dy
CONFIG_KVM_COMPAT=3Dy
CONFIG_HAVE_KVM_IRQ_BYPASS=3Dy
CONFIG_HAVE_KVM_NO_POLL=3Dy
CONFIG_KVM_XFER_TO_GUEST_WORK=3Dy
CONFIG_HAVE_KVM_PM_NOTIFIER=3Dy
CONFIG_KVM_GENERIC_HARDWARE_ENABLING=3Dy
CONFIG_KVM_GENERIC_MMU_NOTIFIER=3Dy
CONFIG_KVM_ELIDE_TLB_FLUSH_IF_YOUNG=3Dy
CONFIG_KVM_GENERIC_MEMORY_ATTRIBUTES=3Dy
CONFIG_KVM_PRIVATE_MEM=3Dy
CONFIG_KVM_GENERIC_PRIVATE_MEM=3Dy
CONFIG_VIRTUALIZATION=3Dy
CONFIG_KVM_X86=3Dy
CONFIG_KVM=3Dy
CONFIG_KVM_SW_PROTECTED_VM=3Dy
CONFIG_KVM_INTEL=3Dy
# CONFIG_KVM_INTEL_PROVE_VE is not set
CONFIG_X86_SGX_KVM=3Dy
CONFIG_KVM_AMD=3Dy
# CONFIG_KVM_SMM is not set
CONFIG_KVM_HYPERV=3Dy
CONFIG_KVM_XEN=3Dy
CONFIG_KVM_PROVE_MMU=3Dy
CONFIG_KVM_MAX_NR_VCPUS=3D1024
CONFIG_AS_AVX512=3Dy
CONFIG_AS_SHA1_NI=3Dy
CONFIG_AS_SHA256_NI=3Dy
CONFIG_AS_TPAUSE=3Dy
CONFIG_AS_GFNI=3Dy
CONFIG_AS_VAES=3Dy
CONFIG_AS_VPCLMULQDQ=3Dy
CONFIG_AS_WRUSS=3Dy
CONFIG_ARCH_CONFIGURES_CPU_MITIGATIONS=3Dy

#
# General architecture-dependent options
#
CONFIG_HOTPLUG_SMT=3Dy
CONFIG_HOTPLUG_CORE_SYNC=3Dy
CONFIG_HOTPLUG_CORE_SYNC_DEAD=3Dy
CONFIG_HOTPLUG_CORE_SYNC_FULL=3Dy
CONFIG_HOTPLUG_SPLIT_STARTUP=3Dy
CONFIG_HOTPLUG_PARALLEL=3Dy
CONFIG_GENERIC_ENTRY=3Dy
# CONFIG_KPROBES is not set
CONFIG_JUMP_LABEL=3Dy
# CONFIG_STATIC_KEYS_SELFTEST is not set
# CONFIG_STATIC_CALL_SELFTEST is not set
CONFIG_UPROBES=3Dy
CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=3Dy
CONFIG_ARCH_USE_BUILTIN_BSWAP=3Dy
CONFIG_USER_RETURN_NOTIFIER=3Dy
CONFIG_HAVE_IOREMAP_PROT=3Dy
CONFIG_HAVE_KPROBES=3Dy
CONFIG_HAVE_KRETPROBES=3Dy
CONFIG_HAVE_OPTPROBES=3Dy
CONFIG_HAVE_KPROBES_ON_FTRACE=3Dy
CONFIG_ARCH_CORRECT_STACKTRACE_ON_KRETPROBE=3Dy
CONFIG_HAVE_FUNCTION_ERROR_INJECTION=3Dy
CONFIG_HAVE_NMI=3Dy
CONFIG_TRACE_IRQFLAGS_SUPPORT=3Dy
CONFIG_TRACE_IRQFLAGS_NMI_SUPPORT=3Dy
CONFIG_HAVE_ARCH_TRACEHOOK=3Dy
CONFIG_HAVE_DMA_CONTIGUOUS=3Dy
CONFIG_GENERIC_SMP_IDLE_THREAD=3Dy
CONFIG_ARCH_HAS_FORTIFY_SOURCE=3Dy
CONFIG_ARCH_HAS_SET_MEMORY=3Dy
CONFIG_ARCH_HAS_SET_DIRECT_MAP=3Dy
CONFIG_ARCH_HAS_CPU_FINALIZE_INIT=3Dy
CONFIG_ARCH_HAS_CPU_PASID=3Dy
CONFIG_HAVE_ARCH_THREAD_STRUCT_WHITELIST=3Dy
CONFIG_ARCH_WANTS_DYNAMIC_TASK_STRUCT=3Dy
CONFIG_ARCH_WANTS_NO_INSTR=3Dy
CONFIG_HAVE_ASM_MODVERSIONS=3Dy
CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=3Dy
CONFIG_HAVE_RSEQ=3Dy
CONFIG_HAVE_RUST=3Dy
CONFIG_HAVE_FUNCTION_ARG_ACCESS_API=3Dy
CONFIG_HAVE_HW_BREAKPOINT=3Dy
CONFIG_HAVE_MIXED_BREAKPOINTS_REGS=3Dy
CONFIG_HAVE_USER_RETURN_NOTIFIER=3Dy
CONFIG_HAVE_PERF_EVENTS_NMI=3Dy
CONFIG_HAVE_HARDLOCKUP_DETECTOR_PERF=3Dy
CONFIG_HAVE_PERF_REGS=3Dy
CONFIG_HAVE_PERF_USER_STACK_DUMP=3Dy
CONFIG_HAVE_ARCH_JUMP_LABEL=3Dy
CONFIG_HAVE_ARCH_JUMP_LABEL_RELATIVE=3Dy
CONFIG_MMU_GATHER_TABLE_FREE=3Dy
CONFIG_MMU_GATHER_RCU_TABLE_FREE=3Dy
CONFIG_MMU_GATHER_MERGE_VMAS=3Dy
CONFIG_MMU_LAZY_TLB_REFCOUNT=3Dy
CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG=3Dy
CONFIG_ARCH_HAVE_EXTRA_ELF_NOTES=3Dy
CONFIG_ARCH_HAS_NMI_SAFE_THIS_CPU_OPS=3Dy
CONFIG_HAVE_ALIGNED_STRUCT_PAGE=3Dy
CONFIG_HAVE_CMPXCHG_LOCAL=3Dy
CONFIG_HAVE_CMPXCHG_DOUBLE=3Dy
CONFIG_ARCH_WANT_COMPAT_IPC_PARSE_VERSION=3Dy
CONFIG_ARCH_WANT_OLD_COMPAT_IPC=3Dy
CONFIG_HAVE_ARCH_SECCOMP=3Dy
CONFIG_HAVE_ARCH_SECCOMP_FILTER=3Dy
CONFIG_SECCOMP=3Dy
CONFIG_SECCOMP_FILTER=3Dy
# CONFIG_SECCOMP_CACHE_DEBUG is not set
CONFIG_HAVE_ARCH_STACKLEAK=3Dy
CONFIG_HAVE_STACKPROTECTOR=3Dy
CONFIG_STACKPROTECTOR=3Dy
CONFIG_STACKPROTECTOR_STRONG=3Dy
CONFIG_ARCH_SUPPORTS_LTO_CLANG=3Dy
CONFIG_ARCH_SUPPORTS_LTO_CLANG_THIN=3Dy
CONFIG_LTO_NONE=3Dy
CONFIG_ARCH_SUPPORTS_AUTOFDO_CLANG=3Dy
CONFIG_ARCH_SUPPORTS_PROPELLER_CLANG=3Dy
CONFIG_ARCH_SUPPORTS_CFI_CLANG=3Dy
CONFIG_HAVE_ARCH_WITHIN_STACK_FRAMES=3Dy
CONFIG_HAVE_CONTEXT_TRACKING_USER=3Dy
CONFIG_HAVE_CONTEXT_TRACKING_USER_OFFSTACK=3Dy
CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=3Dy
CONFIG_HAVE_IRQ_TIME_ACCOUNTING=3Dy
CONFIG_HAVE_MOVE_PUD=3Dy
CONFIG_HAVE_MOVE_PMD=3Dy
CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=3Dy
CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD=3Dy
CONFIG_HAVE_ARCH_HUGE_VMAP=3Dy
CONFIG_HAVE_ARCH_HUGE_VMALLOC=3Dy
CONFIG_ARCH_WANT_HUGE_PMD_SHARE=3Dy
CONFIG_ARCH_WANT_PMD_MKWRITE=3Dy
CONFIG_HAVE_ARCH_SOFT_DIRTY=3Dy
CONFIG_HAVE_MOD_ARCH_SPECIFIC=3Dy
CONFIG_MODULES_USE_ELF_RELA=3Dy
CONFIG_ARCH_HAS_EXECMEM_ROX=3Dy
CONFIG_HAVE_IRQ_EXIT_ON_IRQ_STACK=3Dy
CONFIG_HAVE_SOFTIRQ_ON_OWN_STACK=3Dy
CONFIG_SOFTIRQ_ON_OWN_STACK=3Dy
CONFIG_ARCH_HAS_ELF_RANDOMIZE=3Dy
CONFIG_HAVE_ARCH_MMAP_RND_BITS=3Dy
CONFIG_HAVE_EXIT_THREAD=3Dy
CONFIG_ARCH_MMAP_RND_BITS=3D28
CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=3Dy
CONFIG_ARCH_MMAP_RND_COMPAT_BITS=3D8
CONFIG_HAVE_ARCH_COMPAT_MMAP_BASES=3Dy
CONFIG_HAVE_PAGE_SIZE_4KB=3Dy
CONFIG_PAGE_SIZE_4KB=3Dy
CONFIG_PAGE_SIZE_LESS_THAN_64KB=3Dy
CONFIG_PAGE_SIZE_LESS_THAN_256KB=3Dy
CONFIG_PAGE_SHIFT=3D12
CONFIG_HAVE_OBJTOOL=3Dy
CONFIG_HAVE_JUMP_LABEL_HACK=3Dy
CONFIG_HAVE_NOINSTR_HACK=3Dy
CONFIG_HAVE_NOINSTR_VALIDATION=3Dy
CONFIG_HAVE_UACCESS_VALIDATION=3Dy
CONFIG_HAVE_STACK_VALIDATION=3Dy
CONFIG_HAVE_RELIABLE_STACKTRACE=3Dy
CONFIG_OLD_SIGSUSPEND3=3Dy
CONFIG_COMPAT_OLD_SIGACTION=3Dy
CONFIG_COMPAT_32BIT_TIME=3Dy
CONFIG_ARCH_SUPPORTS_RT=3Dy
CONFIG_HAVE_ARCH_VMAP_STACK=3Dy
CONFIG_VMAP_STACK=3Dy
CONFIG_HAVE_ARCH_RANDOMIZE_KSTACK_OFFSET=3Dy
CONFIG_RANDOMIZE_KSTACK_OFFSET=3Dy
# CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT is not set
CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=3Dy
CONFIG_STRICT_KERNEL_RWX=3Dy
CONFIG_ARCH_HAS_STRICT_MODULE_RWX=3Dy
CONFIG_STRICT_MODULE_RWX=3Dy
CONFIG_HAVE_ARCH_PREL32_RELOCATIONS=3Dy
# CONFIG_LOCK_EVENT_COUNTS is not set
CONFIG_ARCH_HAS_MEM_ENCRYPT=3Dy
CONFIG_HAVE_STATIC_CALL=3Dy
CONFIG_HAVE_STATIC_CALL_INLINE=3Dy
CONFIG_HAVE_PREEMPT_DYNAMIC=3Dy
CONFIG_HAVE_PREEMPT_DYNAMIC_CALL=3Dy
CONFIG_ARCH_WANT_LD_ORPHAN_WARN=3Dy
CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC=3Dy
CONFIG_ARCH_SUPPORTS_PAGE_TABLE_CHECK=3Dy
CONFIG_ARCH_HAS_ELFCORE_COMPAT=3Dy
CONFIG_ARCH_HAS_PARANOID_L1D_FLUSH=3Dy
CONFIG_DYNAMIC_SIGFRAME=3Dy
CONFIG_HAVE_ARCH_NODE_DEV_GROUP=3Dy
CONFIG_ARCH_HAS_HW_PTE_YOUNG=3Dy
CONFIG_ARCH_HAS_NONLEAF_PMD_YOUNG=3Dy
CONFIG_ARCH_HAS_KERNEL_FPU_SUPPORT=3Dy

#
# GCOV-based kernel profiling
#
# CONFIG_GCOV_KERNEL is not set
CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=3Dy
# end of GCOV-based kernel profiling

CONFIG_HAVE_GCC_PLUGINS=3Dy
CONFIG_FUNCTION_ALIGNMENT_4B=3Dy
CONFIG_FUNCTION_ALIGNMENT_16B=3Dy
CONFIG_FUNCTION_ALIGNMENT=3D16
# end of General architecture-dependent options

CONFIG_RT_MUTEXES=3Dy
CONFIG_MODULE_SIG_FORMAT=3Dy
CONFIG_MODULES=3Dy
# CONFIG_MODULE_DEBUG is not set
# CONFIG_MODULE_FORCE_LOAD is not set
CONFIG_MODULE_UNLOAD=3Dy
CONFIG_MODULE_FORCE_UNLOAD=3Dy
# CONFIG_MODULE_UNLOAD_TAINT_TRACKING is not set
CONFIG_MODVERSIONS=3Dy
CONFIG_ASM_MODVERSIONS=3Dy
CONFIG_MODULE_SRCVERSION_ALL=3Dy
CONFIG_MODULE_SIG=3Dy
# CONFIG_MODULE_SIG_FORCE is not set
# CONFIG_MODULE_SIG_ALL is not set
CONFIG_MODULE_SIG_SHA1=3Dy
# CONFIG_MODULE_SIG_SHA256 is not set
# CONFIG_MODULE_SIG_SHA384 is not set
# CONFIG_MODULE_SIG_SHA512 is not set
# CONFIG_MODULE_SIG_SHA3_256 is not set
# CONFIG_MODULE_SIG_SHA3_384 is not set
# CONFIG_MODULE_SIG_SHA3_512 is not set
CONFIG_MODULE_SIG_HASH=3D"sha1"
# CONFIG_MODULE_COMPRESS is not set
# CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS is not set
CONFIG_MODPROBE_PATH=3D"/sbin/modprobe"
# CONFIG_TRIM_UNUSED_KSYMS is not set
CONFIG_MODULES_TREE_LOOKUP=3Dy
CONFIG_BLOCK=3Dy
CONFIG_BLOCK_LEGACY_AUTOLOAD=3Dy
CONFIG_BLK_RQ_ALLOC_TIME=3Dy
CONFIG_BLK_CGROUP_RWSTAT=3Dy
CONFIG_BLK_CGROUP_PUNT_BIO=3Dy
CONFIG_BLK_DEV_BSG_COMMON=3Dy
CONFIG_BLK_ICQ=3Dy
CONFIG_BLK_DEV_BSGLIB=3Dy
CONFIG_BLK_DEV_INTEGRITY=3Dy
# CONFIG_BLK_DEV_WRITE_MOUNTED is not set
CONFIG_BLK_DEV_ZONED=3Dy
CONFIG_BLK_DEV_THROTTLING=3Dy
CONFIG_BLK_WBT=3Dy
CONFIG_BLK_WBT_MQ=3Dy
CONFIG_BLK_CGROUP_IOLATENCY=3Dy
# CONFIG_BLK_CGROUP_FC_APPID is not set
CONFIG_BLK_CGROUP_IOCOST=3Dy
CONFIG_BLK_CGROUP_IOPRIO=3Dy
CONFIG_BLK_DEBUG_FS=3Dy
# CONFIG_BLK_SED_OPAL is not set
CONFIG_BLK_INLINE_ENCRYPTION=3Dy
CONFIG_BLK_INLINE_ENCRYPTION_FALLBACK=3Dy

#
# Partition Types
#
CONFIG_PARTITION_ADVANCED=3Dy
CONFIG_ACORN_PARTITION=3Dy
CONFIG_ACORN_PARTITION_CUMANA=3Dy
CONFIG_ACORN_PARTITION_EESOX=3Dy
CONFIG_ACORN_PARTITION_ICS=3Dy
CONFIG_ACORN_PARTITION_ADFS=3Dy
CONFIG_ACORN_PARTITION_POWERTEC=3Dy
CONFIG_ACORN_PARTITION_RISCIX=3Dy
CONFIG_AIX_PARTITION=3Dy
CONFIG_OSF_PARTITION=3Dy
CONFIG_AMIGA_PARTITION=3Dy
CONFIG_ATARI_PARTITION=3Dy
CONFIG_MAC_PARTITION=3Dy
CONFIG_MSDOS_PARTITION=3Dy
CONFIG_BSD_DISKLABEL=3Dy
CONFIG_MINIX_SUBPARTITION=3Dy
CONFIG_SOLARIS_X86_PARTITION=3Dy
CONFIG_UNIXWARE_DISKLABEL=3Dy
CONFIG_LDM_PARTITION=3Dy
# CONFIG_LDM_DEBUG is not set
CONFIG_SGI_PARTITION=3Dy
CONFIG_ULTRIX_PARTITION=3Dy
CONFIG_SUN_PARTITION=3Dy
CONFIG_KARMA_PARTITION=3Dy
CONFIG_EFI_PARTITION=3Dy
CONFIG_SYSV68_PARTITION=3Dy
CONFIG_CMDLINE_PARTITION=3Dy
# CONFIG_OF_PARTITION is not set
# end of Partition Types

CONFIG_BLK_MQ_PCI=3Dy
CONFIG_BLK_MQ_VIRTIO=3Dy
CONFIG_BLK_PM=3Dy
CONFIG_BLOCK_HOLDER_DEPRECATED=3Dy
CONFIG_BLK_MQ_STACKING=3Dy

#
# IO Schedulers
#
CONFIG_MQ_IOSCHED_DEADLINE=3Dy
CONFIG_MQ_IOSCHED_KYBER=3Dy
CONFIG_IOSCHED_BFQ=3Dy
CONFIG_BFQ_GROUP_IOSCHED=3Dy
CONFIG_BFQ_CGROUP_DEBUG=3Dy
# end of IO Schedulers

CONFIG_PREEMPT_NOTIFIERS=3Dy
CONFIG_PADATA=3Dy
CONFIG_ASN1=3Dy
CONFIG_UNINLINE_SPIN_UNLOCK=3Dy
CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=3Dy
CONFIG_MUTEX_SPIN_ON_OWNER=3Dy
CONFIG_RWSEM_SPIN_ON_OWNER=3Dy
CONFIG_LOCK_SPIN_ON_OWNER=3Dy
CONFIG_ARCH_USE_QUEUED_SPINLOCKS=3Dy
CONFIG_QUEUED_SPINLOCKS=3Dy
CONFIG_ARCH_USE_QUEUED_RWLOCKS=3Dy
CONFIG_QUEUED_RWLOCKS=3Dy
CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE=3Dy
CONFIG_ARCH_HAS_SYNC_CORE_BEFORE_USERMODE=3Dy
CONFIG_ARCH_HAS_SYSCALL_WRAPPER=3Dy
CONFIG_FREEZER=3Dy

#
# Executable file formats
#
CONFIG_BINFMT_ELF=3Dy
CONFIG_COMPAT_BINFMT_ELF=3Dy
CONFIG_ELFCORE=3Dy
CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS=3Dy
CONFIG_BINFMT_SCRIPT=3Dy
CONFIG_BINFMT_MISC=3Dy
CONFIG_COREDUMP=3Dy
# end of Executable file formats

#
# Memory Management options
#
CONFIG_ZPOOL=3Dy
CONFIG_SWAP=3Dy
CONFIG_ZSWAP=3Dy
CONFIG_ZSWAP_DEFAULT_ON=3Dy
CONFIG_ZSWAP_SHRINKER_DEFAULT_ON=3Dy
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_DEFLATE is not set
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZO is not set
CONFIG_ZSWAP_COMPRESSOR_DEFAULT_842=3Dy
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4 is not set
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4HC is not set
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_ZSTD is not set
CONFIG_ZSWAP_COMPRESSOR_DEFAULT=3D"842"
# CONFIG_ZSWAP_ZPOOL_DEFAULT_ZBUD is not set
CONFIG_ZSWAP_ZPOOL_DEFAULT_Z3FOLD_DEPRECATED=3Dy
# CONFIG_ZSWAP_ZPOOL_DEFAULT_ZSMALLOC is not set
CONFIG_ZSWAP_ZPOOL_DEFAULT=3D"z3fold"
# CONFIG_ZBUD is not set
CONFIG_Z3FOLD_DEPRECATED=3Dy
CONFIG_Z3FOLD=3Dy
CONFIG_ZSMALLOC=3Dy
# CONFIG_ZSMALLOC_STAT is not set
CONFIG_ZSMALLOC_CHAIN_SIZE=3D8

#
# Slab allocator options
#
CONFIG_SLUB=3Dy
# CONFIG_SLUB_TINY is not set
CONFIG_SLAB_MERGE_DEFAULT=3Dy
# CONFIG_SLAB_FREELIST_RANDOM is not set
# CONFIG_SLAB_FREELIST_HARDENED is not set
# CONFIG_SLAB_BUCKETS is not set
# CONFIG_SLUB_STATS is not set
CONFIG_SLUB_CPU_PARTIAL=3Dy
# CONFIG_RANDOM_KMALLOC_CACHES is not set
# end of Slab allocator options

# CONFIG_SHUFFLE_PAGE_ALLOCATOR is not set
# CONFIG_COMPAT_BRK is not set
CONFIG_SPARSEMEM=3Dy
CONFIG_SPARSEMEM_EXTREME=3Dy
CONFIG_SPARSEMEM_VMEMMAP_ENABLE=3Dy
CONFIG_SPARSEMEM_VMEMMAP=3Dy
CONFIG_ARCH_WANT_OPTIMIZE_DAX_VMEMMAP=3Dy
CONFIG_ARCH_WANT_OPTIMIZE_HUGETLB_VMEMMAP=3Dy
CONFIG_HAVE_GUP_FAST=3Dy
CONFIG_NUMA_KEEP_MEMINFO=3Dy
CONFIG_MEMORY_ISOLATION=3Dy
CONFIG_EXCLUSIVE_SYSTEM_RAM=3Dy
CONFIG_HAVE_BOOTMEM_INFO_NODE=3Dy
CONFIG_ARCH_ENABLE_MEMORY_HOTPLUG=3Dy
CONFIG_ARCH_ENABLE_MEMORY_HOTREMOVE=3Dy
CONFIG_MEMORY_HOTPLUG=3Dy
CONFIG_MEMORY_HOTPLUG_DEFAULT_ONLINE=3Dy
CONFIG_MEMORY_HOTREMOVE=3Dy
CONFIG_MHP_MEMMAP_ON_MEMORY=3Dy
CONFIG_ARCH_MHP_MEMMAP_ON_MEMORY_ENABLE=3Dy
CONFIG_SPLIT_PTE_PTLOCKS=3Dy
CONFIG_ARCH_ENABLE_SPLIT_PMD_PTLOCK=3Dy
CONFIG_SPLIT_PMD_PTLOCKS=3Dy
CONFIG_MEMORY_BALLOON=3Dy
# CONFIG_BALLOON_COMPACTION is not set
CONFIG_COMPACTION=3Dy
CONFIG_COMPACT_UNEVICTABLE_DEFAULT=3D1
CONFIG_PAGE_REPORTING=3Dy
CONFIG_MIGRATION=3Dy
CONFIG_DEVICE_MIGRATION=3Dy
CONFIG_ARCH_ENABLE_HUGEPAGE_MIGRATION=3Dy
CONFIG_ARCH_ENABLE_THP_MIGRATION=3Dy
CONFIG_CONTIG_ALLOC=3Dy
CONFIG_PCP_BATCH_SCALE_MAX=3D5
CONFIG_PHYS_ADDR_T_64BIT=3Dy
CONFIG_MMU_NOTIFIER=3Dy
CONFIG_KSM=3Dy
CONFIG_DEFAULT_MMAP_MIN_ADDR=3D4096
CONFIG_ARCH_SUPPORTS_MEMORY_FAILURE=3Dy
# CONFIG_MEMORY_FAILURE is not set
CONFIG_ARCH_WANT_GENERAL_HUGETLB=3Dy
CONFIG_ARCH_WANTS_THP_SWAP=3Dy
CONFIG_TRANSPARENT_HUGEPAGE=3Dy
# CONFIG_TRANSPARENT_HUGEPAGE_ALWAYS is not set
CONFIG_TRANSPARENT_HUGEPAGE_MADVISE=3Dy
# CONFIG_TRANSPARENT_HUGEPAGE_NEVER is not set
CONFIG_THP_SWAP=3Dy
CONFIG_READ_ONLY_THP_FOR_FS=3Dy
CONFIG_PGTABLE_HAS_HUGE_LEAVES=3Dy
CONFIG_ARCH_SUPPORTS_HUGE_PFNMAP=3Dy
CONFIG_ARCH_SUPPORTS_PMD_PFNMAP=3Dy
CONFIG_ARCH_SUPPORTS_PUD_PFNMAP=3Dy
CONFIG_NEED_PER_CPU_EMBED_FIRST_CHUNK=3Dy
CONFIG_NEED_PER_CPU_PAGE_FIRST_CHUNK=3Dy
CONFIG_USE_PERCPU_NUMA_NODE_ID=3Dy
CONFIG_HAVE_SETUP_PER_CPU_AREA=3Dy
CONFIG_CMA=3Dy
# CONFIG_CMA_DEBUGFS is not set
# CONFIG_CMA_SYSFS is not set
CONFIG_CMA_AREAS=3D20
CONFIG_MEM_SOFT_DIRTY=3Dy
CONFIG_GENERIC_EARLY_IOREMAP=3Dy
# CONFIG_DEFERRED_STRUCT_PAGE_INIT is not set
CONFIG_PAGE_IDLE_FLAG=3Dy
# CONFIG_IDLE_PAGE_TRACKING is not set
CONFIG_ARCH_HAS_CACHE_LINE_SIZE=3Dy
CONFIG_ARCH_HAS_CURRENT_STACK_POINTER=3Dy
CONFIG_ARCH_HAS_PTE_DEVMAP=3Dy
CONFIG_ARCH_HAS_ZONE_DMA_SET=3Dy
CONFIG_ZONE_DMA=3Dy
CONFIG_ZONE_DMA32=3Dy
CONFIG_ZONE_DEVICE=3Dy
CONFIG_HMM_MIRROR=3Dy
CONFIG_GET_FREE_REGION=3Dy
CONFIG_DEVICE_PRIVATE=3Dy
CONFIG_VMAP_PFN=3Dy
CONFIG_ARCH_USES_HIGH_VMA_FLAGS=3Dy
CONFIG_ARCH_HAS_PKEYS=3Dy
CONFIG_ARCH_USES_PG_ARCH_2=3Dy
CONFIG_VM_EVENT_COUNTERS=3Dy
CONFIG_PERCPU_STATS=3Dy
# CONFIG_GUP_TEST is not set
# CONFIG_DMAPOOL_TEST is not set
CONFIG_ARCH_HAS_PTE_SPECIAL=3Dy
CONFIG_MAPPING_DIRTY_HELPERS=3Dy
CONFIG_KMAP_LOCAL=3Dy
CONFIG_MEMFD_CREATE=3Dy
CONFIG_SECRETMEM=3Dy
CONFIG_ANON_VMA_NAME=3Dy
CONFIG_HAVE_ARCH_USERFAULTFD_WP=3Dy
CONFIG_HAVE_ARCH_USERFAULTFD_MINOR=3Dy
CONFIG_USERFAULTFD=3Dy
# CONFIG_PTE_MARKER_UFFD_WP is not set
CONFIG_LRU_GEN=3Dy
CONFIG_LRU_GEN_ENABLED=3Dy
# CONFIG_LRU_GEN_STATS is not set
CONFIG_LRU_GEN_WALKS_MMU=3Dy
CONFIG_ARCH_SUPPORTS_PER_VMA_LOCK=3Dy
CONFIG_PER_VMA_LOCK=3Dy
CONFIG_LOCK_MM_AND_FIND_VMA=3Dy
CONFIG_IOMMU_MM_DATA=3Dy
CONFIG_EXECMEM=3Dy
CONFIG_NUMA_MEMBLKS=3Dy
CONFIG_NUMA_EMU=3Dy
CONFIG_ARCH_HAS_USER_SHADOW_STACK=3Dy

#
# Data Access Monitoring
#
CONFIG_DAMON=3Dy
CONFIG_DAMON_VADDR=3Dy
CONFIG_DAMON_PADDR=3Dy
# CONFIG_DAMON_SYSFS is not set
# CONFIG_DAMON_DBGFS_DEPRECATED is not set
CONFIG_DAMON_RECLAIM=3Dy
# CONFIG_DAMON_LRU_SORT is not set
# end of Data Access Monitoring
# end of Memory Management options

CONFIG_NET=3Dy
CONFIG_WANT_COMPAT_NETLINK_MESSAGES=3Dy
CONFIG_COMPAT_NETLINK_MESSAGES=3Dy
CONFIG_NET_INGRESS=3Dy
CONFIG_NET_EGRESS=3Dy
CONFIG_NET_XGRESS=3Dy
CONFIG_NET_REDIRECT=3Dy
CONFIG_SKB_DECRYPTED=3Dy
CONFIG_SKB_EXTENSIONS=3Dy
CONFIG_NET_DEVMEM=3Dy
CONFIG_NET_SHAPER=3Dy

#
# Networking options
#
CONFIG_PACKET=3Dy
CONFIG_PACKET_DIAG=3Dy
CONFIG_UNIX=3Dy
CONFIG_AF_UNIX_OOB=3Dy
CONFIG_UNIX_DIAG=3Dy
CONFIG_TLS=3Dy
CONFIG_TLS_DEVICE=3Dy
CONFIG_TLS_TOE=3Dy
CONFIG_XFRM=3Dy
CONFIG_XFRM_OFFLOAD=3Dy
CONFIG_XFRM_ALGO=3Dy
CONFIG_XFRM_USER=3Dy
CONFIG_XFRM_USER_COMPAT=3Dy
CONFIG_XFRM_INTERFACE=3Dy
CONFIG_XFRM_SUB_POLICY=3Dy
CONFIG_XFRM_MIGRATE=3Dy
CONFIG_XFRM_STATISTICS=3Dy
CONFIG_XFRM_AH=3Dy
CONFIG_XFRM_ESP=3Dy
CONFIG_XFRM_IPCOMP=3Dy
CONFIG_NET_KEY=3Dy
CONFIG_NET_KEY_MIGRATE=3Dy
CONFIG_XFRM_ESPINTCP=3Dy
CONFIG_SMC=3Dy
CONFIG_SMC_DIAG=3Dy
# CONFIG_SMC_LO is not set
CONFIG_XDP_SOCKETS=3Dy
CONFIG_XDP_SOCKETS_DIAG=3Dy
CONFIG_NET_HANDSHAKE=3Dy
CONFIG_INET=3Dy
CONFIG_IP_MULTICAST=3Dy
CONFIG_IP_ADVANCED_ROUTER=3Dy
CONFIG_IP_FIB_TRIE_STATS=3Dy
CONFIG_IP_MULTIPLE_TABLES=3Dy
CONFIG_IP_ROUTE_MULTIPATH=3Dy
CONFIG_IP_ROUTE_VERBOSE=3Dy
CONFIG_IP_ROUTE_CLASSID=3Dy
CONFIG_IP_PNP=3Dy
CONFIG_IP_PNP_DHCP=3Dy
CONFIG_IP_PNP_BOOTP=3Dy
CONFIG_IP_PNP_RARP=3Dy
CONFIG_NET_IPIP=3Dy
CONFIG_NET_IPGRE_DEMUX=3Dy
CONFIG_NET_IP_TUNNEL=3Dy
CONFIG_NET_IPGRE=3Dy
CONFIG_NET_IPGRE_BROADCAST=3Dy
CONFIG_IP_MROUTE_COMMON=3Dy
CONFIG_IP_MROUTE=3Dy
CONFIG_IP_MROUTE_MULTIPLE_TABLES=3Dy
CONFIG_IP_PIMSM_V1=3Dy
CONFIG_IP_PIMSM_V2=3Dy
CONFIG_SYN_COOKIES=3Dy
CONFIG_NET_IPVTI=3Dy
CONFIG_NET_UDP_TUNNEL=3Dy
CONFIG_NET_FOU=3Dy
CONFIG_NET_FOU_IP_TUNNELS=3Dy
CONFIG_INET_AH=3Dy
CONFIG_INET_ESP=3Dy
CONFIG_INET_ESP_OFFLOAD=3Dy
CONFIG_INET_ESPINTCP=3Dy
CONFIG_INET_IPCOMP=3Dy
CONFIG_INET_TABLE_PERTURB_ORDER=3D16
CONFIG_INET_XFRM_TUNNEL=3Dy
CONFIG_INET_TUNNEL=3Dy
CONFIG_INET_DIAG=3Dy
CONFIG_INET_TCP_DIAG=3Dy
CONFIG_INET_UDP_DIAG=3Dy
CONFIG_INET_RAW_DIAG=3Dy
CONFIG_INET_DIAG_DESTROY=3Dy
CONFIG_TCP_CONG_ADVANCED=3Dy
CONFIG_TCP_CONG_BIC=3Dy
CONFIG_TCP_CONG_CUBIC=3Dy
CONFIG_TCP_CONG_WESTWOOD=3Dy
CONFIG_TCP_CONG_HTCP=3Dy
CONFIG_TCP_CONG_HSTCP=3Dy
CONFIG_TCP_CONG_HYBLA=3Dy
CONFIG_TCP_CONG_VEGAS=3Dy
CONFIG_TCP_CONG_NV=3Dy
CONFIG_TCP_CONG_SCALABLE=3Dy
CONFIG_TCP_CONG_LP=3Dy
CONFIG_TCP_CONG_VENO=3Dy
CONFIG_TCP_CONG_YEAH=3Dy
CONFIG_TCP_CONG_ILLINOIS=3Dy
CONFIG_TCP_CONG_DCTCP=3Dy
CONFIG_TCP_CONG_CDG=3Dy
CONFIG_TCP_CONG_BBR=3Dy
# CONFIG_DEFAULT_BIC is not set
CONFIG_DEFAULT_CUBIC=3Dy
# CONFIG_DEFAULT_HTCP is not set
# CONFIG_DEFAULT_HYBLA is not set
# CONFIG_DEFAULT_VEGAS is not set
# CONFIG_DEFAULT_VENO is not set
# CONFIG_DEFAULT_WESTWOOD is not set
# CONFIG_DEFAULT_DCTCP is not set
# CONFIG_DEFAULT_CDG is not set
# CONFIG_DEFAULT_BBR is not set
# CONFIG_DEFAULT_RENO is not set
CONFIG_DEFAULT_TCP_CONG=3D"cubic"
CONFIG_TCP_SIGPOOL=3Dy
# CONFIG_TCP_AO is not set
CONFIG_TCP_MD5SIG=3Dy
CONFIG_IPV6=3Dy
CONFIG_IPV6_ROUTER_PREF=3Dy
CONFIG_IPV6_ROUTE_INFO=3Dy
CONFIG_IPV6_OPTIMISTIC_DAD=3Dy
CONFIG_INET6_AH=3Dy
CONFIG_INET6_ESP=3Dy
CONFIG_INET6_ESP_OFFLOAD=3Dy
CONFIG_INET6_ESPINTCP=3Dy
CONFIG_INET6_IPCOMP=3Dy
CONFIG_IPV6_MIP6=3Dy
CONFIG_IPV6_ILA=3Dy
CONFIG_INET6_XFRM_TUNNEL=3Dy
CONFIG_INET6_TUNNEL=3Dy
CONFIG_IPV6_VTI=3Dy
CONFIG_IPV6_SIT=3Dy
CONFIG_IPV6_SIT_6RD=3Dy
CONFIG_IPV6_NDISC_NODETYPE=3Dy
CONFIG_IPV6_TUNNEL=3Dy
CONFIG_IPV6_GRE=3Dy
CONFIG_IPV6_FOU=3Dy
CONFIG_IPV6_FOU_TUNNEL=3Dy
CONFIG_IPV6_MULTIPLE_TABLES=3Dy
CONFIG_IPV6_SUBTREES=3Dy
CONFIG_IPV6_MROUTE=3Dy
CONFIG_IPV6_MROUTE_MULTIPLE_TABLES=3Dy
CONFIG_IPV6_PIMSM_V2=3Dy
CONFIG_IPV6_SEG6_LWTUNNEL=3Dy
CONFIG_IPV6_SEG6_HMAC=3Dy
CONFIG_IPV6_SEG6_BPF=3Dy
CONFIG_IPV6_RPL_LWTUNNEL=3Dy
# CONFIG_IPV6_IOAM6_LWTUNNEL is not set
CONFIG_NETLABEL=3Dy
CONFIG_MPTCP=3Dy
CONFIG_INET_MPTCP_DIAG=3Dy
CONFIG_MPTCP_IPV6=3Dy
CONFIG_NETWORK_SECMARK=3Dy
CONFIG_NET_PTP_CLASSIFY=3Dy
# CONFIG_NETWORK_PHY_TIMESTAMPING is not set
CONFIG_NETFILTER=3Dy
CONFIG_NETFILTER_ADVANCED=3Dy
CONFIG_BRIDGE_NETFILTER=3Dy

#
# Core Netfilter Configuration
#
CONFIG_NETFILTER_INGRESS=3Dy
CONFIG_NETFILTER_EGRESS=3Dy
CONFIG_NETFILTER_SKIP_EGRESS=3Dy
CONFIG_NETFILTER_NETLINK=3Dy
CONFIG_NETFILTER_FAMILY_BRIDGE=3Dy
CONFIG_NETFILTER_FAMILY_ARP=3Dy
CONFIG_NETFILTER_BPF_LINK=3Dy
# CONFIG_NETFILTER_NETLINK_HOOK is not set
CONFIG_NETFILTER_NETLINK_ACCT=3Dy
CONFIG_NETFILTER_NETLINK_QUEUE=3Dy
CONFIG_NETFILTER_NETLINK_LOG=3Dy
CONFIG_NETFILTER_NETLINK_OSF=3Dy
CONFIG_NF_CONNTRACK=3Dy
CONFIG_NF_LOG_SYSLOG=3Dy
CONFIG_NETFILTER_CONNCOUNT=3Dy
CONFIG_NF_CONNTRACK_MARK=3Dy
CONFIG_NF_CONNTRACK_SECMARK=3Dy
CONFIG_NF_CONNTRACK_ZONES=3Dy
# CONFIG_NF_CONNTRACK_PROCFS is not set
CONFIG_NF_CONNTRACK_EVENTS=3Dy
CONFIG_NF_CONNTRACK_TIMEOUT=3Dy
CONFIG_NF_CONNTRACK_TIMESTAMP=3Dy
CONFIG_NF_CONNTRACK_LABELS=3Dy
CONFIG_NF_CONNTRACK_OVS=3Dy
CONFIG_NF_CT_PROTO_DCCP=3Dy
CONFIG_NF_CT_PROTO_GRE=3Dy
CONFIG_NF_CT_PROTO_SCTP=3Dy
CONFIG_NF_CT_PROTO_UDPLITE=3Dy
CONFIG_NF_CONNTRACK_AMANDA=3Dy
CONFIG_NF_CONNTRACK_FTP=3Dy
CONFIG_NF_CONNTRACK_H323=3Dy
CONFIG_NF_CONNTRACK_IRC=3Dy
CONFIG_NF_CONNTRACK_BROADCAST=3Dy
CONFIG_NF_CONNTRACK_NETBIOS_NS=3Dy
CONFIG_NF_CONNTRACK_SNMP=3Dy
CONFIG_NF_CONNTRACK_PPTP=3Dy
CONFIG_NF_CONNTRACK_SANE=3Dy
CONFIG_NF_CONNTRACK_SIP=3Dy
CONFIG_NF_CONNTRACK_TFTP=3Dy
CONFIG_NF_CT_NETLINK=3Dy
CONFIG_NF_CT_NETLINK_TIMEOUT=3Dy
CONFIG_NF_CT_NETLINK_HELPER=3Dy
CONFIG_NETFILTER_NETLINK_GLUE_CT=3Dy
CONFIG_NF_NAT=3Dy
CONFIG_NF_NAT_AMANDA=3Dy
CONFIG_NF_NAT_FTP=3Dy
CONFIG_NF_NAT_IRC=3Dy
CONFIG_NF_NAT_SIP=3Dy
CONFIG_NF_NAT_TFTP=3Dy
CONFIG_NF_NAT_REDIRECT=3Dy
CONFIG_NF_NAT_MASQUERADE=3Dy
CONFIG_NF_NAT_OVS=3Dy
CONFIG_NETFILTER_SYNPROXY=3Dy
CONFIG_NF_TABLES=3Dy
CONFIG_NF_TABLES_INET=3Dy
CONFIG_NF_TABLES_NETDEV=3Dy
CONFIG_NFT_NUMGEN=3Dy
CONFIG_NFT_CT=3Dy
CONFIG_NFT_FLOW_OFFLOAD=3Dy
CONFIG_NFT_CONNLIMIT=3Dy
CONFIG_NFT_LOG=3Dy
CONFIG_NFT_LIMIT=3Dy
CONFIG_NFT_MASQ=3Dy
CONFIG_NFT_REDIR=3Dy
CONFIG_NFT_NAT=3Dy
CONFIG_NFT_TUNNEL=3Dy
CONFIG_NFT_QUEUE=3Dy
CONFIG_NFT_QUOTA=3Dy
CONFIG_NFT_REJECT=3Dy
CONFIG_NFT_REJECT_INET=3Dy
CONFIG_NFT_COMPAT=3Dy
CONFIG_NFT_HASH=3Dy
CONFIG_NFT_FIB=3Dy
CONFIG_NFT_FIB_INET=3Dy
CONFIG_NFT_XFRM=3Dy
CONFIG_NFT_SOCKET=3Dy
CONFIG_NFT_OSF=3Dy
CONFIG_NFT_TPROXY=3Dy
CONFIG_NFT_SYNPROXY=3Dy
CONFIG_NF_DUP_NETDEV=3Dy
CONFIG_NFT_DUP_NETDEV=3Dy
CONFIG_NFT_FWD_NETDEV=3Dy
CONFIG_NFT_FIB_NETDEV=3Dy
CONFIG_NFT_REJECT_NETDEV=3Dy
CONFIG_NF_FLOW_TABLE_INET=3Dy
CONFIG_NF_FLOW_TABLE=3Dy
# CONFIG_NF_FLOW_TABLE_PROCFS is not set
CONFIG_NETFILTER_XTABLES=3Dy
CONFIG_NETFILTER_XTABLES_COMPAT=3Dy

#
# Xtables combined modules
#
CONFIG_NETFILTER_XT_MARK=3Dy
CONFIG_NETFILTER_XT_CONNMARK=3Dy
CONFIG_NETFILTER_XT_SET=3Dy

#
# Xtables targets
#
CONFIG_NETFILTER_XT_TARGET_AUDIT=3Dy
CONFIG_NETFILTER_XT_TARGET_CHECKSUM=3Dy
CONFIG_NETFILTER_XT_TARGET_CLASSIFY=3Dy
CONFIG_NETFILTER_XT_TARGET_CONNMARK=3Dy
CONFIG_NETFILTER_XT_TARGET_CONNSECMARK=3Dy
CONFIG_NETFILTER_XT_TARGET_CT=3Dy
CONFIG_NETFILTER_XT_TARGET_DSCP=3Dy
CONFIG_NETFILTER_XT_TARGET_HL=3Dy
CONFIG_NETFILTER_XT_TARGET_HMARK=3Dy
CONFIG_NETFILTER_XT_TARGET_IDLETIMER=3Dy
CONFIG_NETFILTER_XT_TARGET_LED=3Dy
CONFIG_NETFILTER_XT_TARGET_LOG=3Dy
CONFIG_NETFILTER_XT_TARGET_MARK=3Dy
CONFIG_NETFILTER_XT_NAT=3Dy
CONFIG_NETFILTER_XT_TARGET_NETMAP=3Dy
CONFIG_NETFILTER_XT_TARGET_NFLOG=3Dy
CONFIG_NETFILTER_XT_TARGET_NFQUEUE=3Dy
CONFIG_NETFILTER_XT_TARGET_NOTRACK=3Dy
CONFIG_NETFILTER_XT_TARGET_RATEEST=3Dy
CONFIG_NETFILTER_XT_TARGET_REDIRECT=3Dy
CONFIG_NETFILTER_XT_TARGET_MASQUERADE=3Dy
CONFIG_NETFILTER_XT_TARGET_TEE=3Dy
CONFIG_NETFILTER_XT_TARGET_TPROXY=3Dy
CONFIG_NETFILTER_XT_TARGET_TRACE=3Dy
CONFIG_NETFILTER_XT_TARGET_SECMARK=3Dy
CONFIG_NETFILTER_XT_TARGET_TCPMSS=3Dy
CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP=3Dy

#
# Xtables matches
#
CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=3Dy
CONFIG_NETFILTER_XT_MATCH_BPF=3Dy
CONFIG_NETFILTER_XT_MATCH_CGROUP=3Dy
CONFIG_NETFILTER_XT_MATCH_CLUSTER=3Dy
CONFIG_NETFILTER_XT_MATCH_COMMENT=3Dy
CONFIG_NETFILTER_XT_MATCH_CONNBYTES=3Dy
CONFIG_NETFILTER_XT_MATCH_CONNLABEL=3Dy
CONFIG_NETFILTER_XT_MATCH_CONNLIMIT=3Dy
CONFIG_NETFILTER_XT_MATCH_CONNMARK=3Dy
CONFIG_NETFILTER_XT_MATCH_CONNTRACK=3Dy
CONFIG_NETFILTER_XT_MATCH_CPU=3Dy
CONFIG_NETFILTER_XT_MATCH_DCCP=3Dy
CONFIG_NETFILTER_XT_MATCH_DEVGROUP=3Dy
CONFIG_NETFILTER_XT_MATCH_DSCP=3Dy
CONFIG_NETFILTER_XT_MATCH_ECN=3Dy
CONFIG_NETFILTER_XT_MATCH_ESP=3Dy
CONFIG_NETFILTER_XT_MATCH_HASHLIMIT=3Dy
CONFIG_NETFILTER_XT_MATCH_HELPER=3Dy
CONFIG_NETFILTER_XT_MATCH_HL=3Dy
CONFIG_NETFILTER_XT_MATCH_IPCOMP=3Dy
CONFIG_NETFILTER_XT_MATCH_IPRANGE=3Dy
CONFIG_NETFILTER_XT_MATCH_IPVS=3Dy
CONFIG_NETFILTER_XT_MATCH_L2TP=3Dy
CONFIG_NETFILTER_XT_MATCH_LENGTH=3Dy
CONFIG_NETFILTER_XT_MATCH_LIMIT=3Dy
CONFIG_NETFILTER_XT_MATCH_MAC=3Dy
CONFIG_NETFILTER_XT_MATCH_MARK=3Dy
CONFIG_NETFILTER_XT_MATCH_MULTIPORT=3Dy
CONFIG_NETFILTER_XT_MATCH_NFACCT=3Dy
CONFIG_NETFILTER_XT_MATCH_OSF=3Dy
CONFIG_NETFILTER_XT_MATCH_OWNER=3Dy
CONFIG_NETFILTER_XT_MATCH_POLICY=3Dy
CONFIG_NETFILTER_XT_MATCH_PHYSDEV=3Dy
CONFIG_NETFILTER_XT_MATCH_PKTTYPE=3Dy
CONFIG_NETFILTER_XT_MATCH_QUOTA=3Dy
CONFIG_NETFILTER_XT_MATCH_RATEEST=3Dy
CONFIG_NETFILTER_XT_MATCH_REALM=3Dy
CONFIG_NETFILTER_XT_MATCH_RECENT=3Dy
CONFIG_NETFILTER_XT_MATCH_SCTP=3Dy
CONFIG_NETFILTER_XT_MATCH_SOCKET=3Dy
CONFIG_NETFILTER_XT_MATCH_STATE=3Dy
CONFIG_NETFILTER_XT_MATCH_STATISTIC=3Dy
CONFIG_NETFILTER_XT_MATCH_STRING=3Dy
CONFIG_NETFILTER_XT_MATCH_TCPMSS=3Dy
CONFIG_NETFILTER_XT_MATCH_TIME=3Dy
CONFIG_NETFILTER_XT_MATCH_U32=3Dy
# end of Core Netfilter Configuration

CONFIG_IP_SET=3Dy
CONFIG_IP_SET_MAX=3D256
CONFIG_IP_SET_BITMAP_IP=3Dy
CONFIG_IP_SET_BITMAP_IPMAC=3Dy
CONFIG_IP_SET_BITMAP_PORT=3Dy
CONFIG_IP_SET_HASH_IP=3Dy
CONFIG_IP_SET_HASH_IPMARK=3Dy
CONFIG_IP_SET_HASH_IPPORT=3Dy
CONFIG_IP_SET_HASH_IPPORTIP=3Dy
CONFIG_IP_SET_HASH_IPPORTNET=3Dy
CONFIG_IP_SET_HASH_IPMAC=3Dy
CONFIG_IP_SET_HASH_MAC=3Dy
CONFIG_IP_SET_HASH_NETPORTNET=3Dy
CONFIG_IP_SET_HASH_NET=3Dy
CONFIG_IP_SET_HASH_NETNET=3Dy
CONFIG_IP_SET_HASH_NETPORT=3Dy
CONFIG_IP_SET_HASH_NETIFACE=3Dy
CONFIG_IP_SET_LIST_SET=3Dy
CONFIG_IP_VS=3Dy
CONFIG_IP_VS_IPV6=3Dy
# CONFIG_IP_VS_DEBUG is not set
CONFIG_IP_VS_TAB_BITS=3D12

#
# IPVS transport protocol load balancing support
#
CONFIG_IP_VS_PROTO_TCP=3Dy
CONFIG_IP_VS_PROTO_UDP=3Dy
CONFIG_IP_VS_PROTO_AH_ESP=3Dy
CONFIG_IP_VS_PROTO_ESP=3Dy
CONFIG_IP_VS_PROTO_AH=3Dy
CONFIG_IP_VS_PROTO_SCTP=3Dy

#
# IPVS scheduler
#
CONFIG_IP_VS_RR=3Dy
CONFIG_IP_VS_WRR=3Dy
CONFIG_IP_VS_LC=3Dy
CONFIG_IP_VS_WLC=3Dy
CONFIG_IP_VS_FO=3Dy
CONFIG_IP_VS_OVF=3Dy
CONFIG_IP_VS_LBLC=3Dy
CONFIG_IP_VS_LBLCR=3Dy
CONFIG_IP_VS_DH=3Dy
CONFIG_IP_VS_SH=3Dy
CONFIG_IP_VS_MH=3Dy
CONFIG_IP_VS_SED=3Dy
CONFIG_IP_VS_NQ=3Dy
CONFIG_IP_VS_TWOS=3Dy

#
# IPVS SH scheduler
#
CONFIG_IP_VS_SH_TAB_BITS=3D8

#
# IPVS MH scheduler
#
CONFIG_IP_VS_MH_TAB_INDEX=3D12

#
# IPVS application helper
#
CONFIG_IP_VS_FTP=3Dy
CONFIG_IP_VS_NFCT=3Dy
CONFIG_IP_VS_PE_SIP=3Dy

#
# IP: Netfilter Configuration
#
CONFIG_NF_DEFRAG_IPV4=3Dy
CONFIG_IP_NF_IPTABLES_LEGACY=3Dy
CONFIG_NF_SOCKET_IPV4=3Dy
CONFIG_NF_TPROXY_IPV4=3Dy
CONFIG_NF_TABLES_IPV4=3Dy
CONFIG_NFT_REJECT_IPV4=3Dy
CONFIG_NFT_DUP_IPV4=3Dy
CONFIG_NFT_FIB_IPV4=3Dy
CONFIG_NF_TABLES_ARP=3Dy
CONFIG_NF_DUP_IPV4=3Dy
CONFIG_NF_LOG_ARP=3Dy
CONFIG_NF_LOG_IPV4=3Dy
CONFIG_NF_REJECT_IPV4=3Dy
CONFIG_NF_NAT_SNMP_BASIC=3Dy
CONFIG_NF_NAT_PPTP=3Dy
CONFIG_NF_NAT_H323=3Dy
CONFIG_IP_NF_IPTABLES=3Dy
CONFIG_IP_NF_MATCH_AH=3Dy
CONFIG_IP_NF_MATCH_ECN=3Dy
CONFIG_IP_NF_MATCH_RPFILTER=3Dy
CONFIG_IP_NF_MATCH_TTL=3Dy
CONFIG_IP_NF_FILTER=3Dy
CONFIG_IP_NF_TARGET_REJECT=3Dy
CONFIG_IP_NF_TARGET_SYNPROXY=3Dy
CONFIG_IP_NF_NAT=3Dy
CONFIG_IP_NF_TARGET_MASQUERADE=3Dy
CONFIG_IP_NF_TARGET_NETMAP=3Dy
CONFIG_IP_NF_TARGET_REDIRECT=3Dy
CONFIG_IP_NF_MANGLE=3Dy
CONFIG_IP_NF_TARGET_ECN=3Dy
CONFIG_IP_NF_TARGET_TTL=3Dy
CONFIG_IP_NF_RAW=3Dy
CONFIG_IP_NF_SECURITY=3Dy
CONFIG_IP_NF_ARPTABLES=3Dy
CONFIG_NFT_COMPAT_ARP=3Dy
CONFIG_IP_NF_ARPFILTER=3Dy
CONFIG_IP_NF_ARP_MANGLE=3Dy
# end of IP: Netfilter Configuration

#
# IPv6: Netfilter Configuration
#
CONFIG_IP6_NF_IPTABLES_LEGACY=3Dy
CONFIG_NF_SOCKET_IPV6=3Dy
CONFIG_NF_TPROXY_IPV6=3Dy
CONFIG_NF_TABLES_IPV6=3Dy
CONFIG_NFT_REJECT_IPV6=3Dy
CONFIG_NFT_DUP_IPV6=3Dy
CONFIG_NFT_FIB_IPV6=3Dy
CONFIG_NF_DUP_IPV6=3Dy
CONFIG_NF_REJECT_IPV6=3Dy
CONFIG_NF_LOG_IPV6=3Dy
CONFIG_IP6_NF_IPTABLES=3Dy
CONFIG_IP6_NF_MATCH_AH=3Dy
CONFIG_IP6_NF_MATCH_EUI64=3Dy
CONFIG_IP6_NF_MATCH_FRAG=3Dy
CONFIG_IP6_NF_MATCH_OPTS=3Dy
CONFIG_IP6_NF_MATCH_HL=3Dy
CONFIG_IP6_NF_MATCH_IPV6HEADER=3Dy
CONFIG_IP6_NF_MATCH_MH=3Dy
CONFIG_IP6_NF_MATCH_RPFILTER=3Dy
CONFIG_IP6_NF_MATCH_RT=3Dy
CONFIG_IP6_NF_MATCH_SRH=3Dy
CONFIG_IP6_NF_TARGET_HL=3Dy
CONFIG_IP6_NF_FILTER=3Dy
CONFIG_IP6_NF_TARGET_REJECT=3Dy
CONFIG_IP6_NF_TARGET_SYNPROXY=3Dy
CONFIG_IP6_NF_MANGLE=3Dy
CONFIG_IP6_NF_RAW=3Dy
CONFIG_IP6_NF_SECURITY=3Dy
CONFIG_IP6_NF_NAT=3Dy
CONFIG_IP6_NF_TARGET_MASQUERADE=3Dy
CONFIG_IP6_NF_TARGET_NPT=3Dy
# end of IPv6: Netfilter Configuration

CONFIG_NF_DEFRAG_IPV6=3Dy
CONFIG_NF_TABLES_BRIDGE=3Dy
CONFIG_NFT_BRIDGE_META=3Dy
CONFIG_NFT_BRIDGE_REJECT=3Dy
CONFIG_NF_CONNTRACK_BRIDGE=3Dy
CONFIG_BRIDGE_NF_EBTABLES_LEGACY=3Dy
CONFIG_BRIDGE_NF_EBTABLES=3Dy
CONFIG_BRIDGE_EBT_BROUTE=3Dy
CONFIG_BRIDGE_EBT_T_FILTER=3Dy
CONFIG_BRIDGE_EBT_T_NAT=3Dy
CONFIG_BRIDGE_EBT_802_3=3Dy
CONFIG_BRIDGE_EBT_AMONG=3Dy
CONFIG_BRIDGE_EBT_ARP=3Dy
CONFIG_BRIDGE_EBT_IP=3Dy
CONFIG_BRIDGE_EBT_IP6=3Dy
CONFIG_BRIDGE_EBT_LIMIT=3Dy
CONFIG_BRIDGE_EBT_MARK=3Dy
CONFIG_BRIDGE_EBT_PKTTYPE=3Dy
CONFIG_BRIDGE_EBT_STP=3Dy
CONFIG_BRIDGE_EBT_VLAN=3Dy
CONFIG_BRIDGE_EBT_ARPREPLY=3Dy
CONFIG_BRIDGE_EBT_DNAT=3Dy
CONFIG_BRIDGE_EBT_MARK_T=3Dy
CONFIG_BRIDGE_EBT_REDIRECT=3Dy
CONFIG_BRIDGE_EBT_SNAT=3Dy
CONFIG_BRIDGE_EBT_LOG=3Dy
CONFIG_BRIDGE_EBT_NFLOG=3Dy
CONFIG_IP_DCCP=3Dy
CONFIG_INET_DCCP_DIAG=3Dy

#
# DCCP CCIDs Configuration
#
# CONFIG_IP_DCCP_CCID2_DEBUG is not set
CONFIG_IP_DCCP_CCID3=3Dy
# CONFIG_IP_DCCP_CCID3_DEBUG is not set
CONFIG_IP_DCCP_TFRC_LIB=3Dy
# end of DCCP CCIDs Configuration

#
# DCCP Kernel Hacking
#
# CONFIG_IP_DCCP_DEBUG is not set
# end of DCCP Kernel Hacking

CONFIG_IP_SCTP=3Dy
# CONFIG_SCTP_DBG_OBJCNT is not set
CONFIG_SCTP_DEFAULT_COOKIE_HMAC_MD5=3Dy
# CONFIG_SCTP_DEFAULT_COOKIE_HMAC_SHA1 is not set
# CONFIG_SCTP_DEFAULT_COOKIE_HMAC_NONE is not set
CONFIG_SCTP_COOKIE_HMAC_MD5=3Dy
CONFIG_SCTP_COOKIE_HMAC_SHA1=3Dy
CONFIG_INET_SCTP_DIAG=3Dy
CONFIG_RDS=3Dy
CONFIG_RDS_RDMA=3Dy
CONFIG_RDS_TCP=3Dy
# CONFIG_RDS_DEBUG is not set
CONFIG_TIPC=3Dy
CONFIG_TIPC_MEDIA_IB=3Dy
CONFIG_TIPC_MEDIA_UDP=3Dy
CONFIG_TIPC_CRYPTO=3Dy
CONFIG_TIPC_DIAG=3Dy
CONFIG_ATM=3Dy
CONFIG_ATM_CLIP=3Dy
# CONFIG_ATM_CLIP_NO_ICMP is not set
CONFIG_ATM_LANE=3Dy
CONFIG_ATM_MPOA=3Dy
CONFIG_ATM_BR2684=3Dy
# CONFIG_ATM_BR2684_IPFILTER is not set
CONFIG_L2TP=3Dy
# CONFIG_L2TP_DEBUGFS is not set
CONFIG_L2TP_V3=3Dy
CONFIG_L2TP_IP=3Dy
CONFIG_L2TP_ETH=3Dy
CONFIG_STP=3Dy
CONFIG_GARP=3Dy
CONFIG_MRP=3Dy
CONFIG_BRIDGE=3Dy
CONFIG_BRIDGE_IGMP_SNOOPING=3Dy
CONFIG_BRIDGE_VLAN_FILTERING=3Dy
CONFIG_BRIDGE_MRP=3Dy
CONFIG_BRIDGE_CFM=3Dy
CONFIG_NET_DSA=3Dy
# CONFIG_NET_DSA_TAG_NONE is not set
# CONFIG_NET_DSA_TAG_AR9331 is not set
CONFIG_NET_DSA_TAG_BRCM_COMMON=3Dy
CONFIG_NET_DSA_TAG_BRCM=3Dy
# CONFIG_NET_DSA_TAG_BRCM_LEGACY is not set
CONFIG_NET_DSA_TAG_BRCM_PREPEND=3Dy
# CONFIG_NET_DSA_TAG_HELLCREEK is not set
# CONFIG_NET_DSA_TAG_GSWIP is not set
# CONFIG_NET_DSA_TAG_DSA is not set
# CONFIG_NET_DSA_TAG_EDSA is not set
CONFIG_NET_DSA_TAG_MTK=3Dy
# CONFIG_NET_DSA_TAG_KSZ is not set
# CONFIG_NET_DSA_TAG_OCELOT is not set
# CONFIG_NET_DSA_TAG_OCELOT_8021Q is not set
CONFIG_NET_DSA_TAG_QCA=3Dy
CONFIG_NET_DSA_TAG_RTL4_A=3Dy
# CONFIG_NET_DSA_TAG_RTL8_4 is not set
# CONFIG_NET_DSA_TAG_RZN1_A5PSW is not set
# CONFIG_NET_DSA_TAG_LAN9303 is not set
# CONFIG_NET_DSA_TAG_SJA1105 is not set
# CONFIG_NET_DSA_TAG_TRAILER is not set
# CONFIG_NET_DSA_TAG_VSC73XX_8021Q is not set
# CONFIG_NET_DSA_TAG_XRS700X is not set
CONFIG_VLAN_8021Q=3Dy
CONFIG_VLAN_8021Q_GVRP=3Dy
CONFIG_VLAN_8021Q_MVRP=3Dy
CONFIG_LLC=3Dy
CONFIG_LLC2=3Dy
# CONFIG_ATALK is not set
CONFIG_X25=3Dy
CONFIG_LAPB=3Dy
CONFIG_PHONET=3Dy
CONFIG_6LOWPAN=3Dy
# CONFIG_6LOWPAN_DEBUGFS is not set
CONFIG_6LOWPAN_NHC=3Dy
CONFIG_6LOWPAN_NHC_DEST=3Dy
CONFIG_6LOWPAN_NHC_FRAGMENT=3Dy
CONFIG_6LOWPAN_NHC_HOP=3Dy
CONFIG_6LOWPAN_NHC_IPV6=3Dy
CONFIG_6LOWPAN_NHC_MOBILITY=3Dy
CONFIG_6LOWPAN_NHC_ROUTING=3Dy
CONFIG_6LOWPAN_NHC_UDP=3Dy
CONFIG_6LOWPAN_GHC_EXT_HDR_HOP=3Dy
CONFIG_6LOWPAN_GHC_UDP=3Dy
CONFIG_6LOWPAN_GHC_ICMPV6=3Dy
CONFIG_6LOWPAN_GHC_EXT_HDR_DEST=3Dy
CONFIG_6LOWPAN_GHC_EXT_HDR_FRAG=3Dy
CONFIG_6LOWPAN_GHC_EXT_HDR_ROUTE=3Dy
CONFIG_IEEE802154=3Dy
CONFIG_IEEE802154_NL802154_EXPERIMENTAL=3Dy
CONFIG_IEEE802154_SOCKET=3Dy
CONFIG_IEEE802154_6LOWPAN=3Dy
CONFIG_MAC802154=3Dy
CONFIG_NET_SCHED=3Dy

#
# Queueing/Scheduling
#
CONFIG_NET_SCH_HTB=3Dy
CONFIG_NET_SCH_HFSC=3Dy
CONFIG_NET_SCH_PRIO=3Dy
CONFIG_NET_SCH_MULTIQ=3Dy
CONFIG_NET_SCH_RED=3Dy
CONFIG_NET_SCH_SFB=3Dy
CONFIG_NET_SCH_SFQ=3Dy
CONFIG_NET_SCH_TEQL=3Dy
CONFIG_NET_SCH_TBF=3Dy
CONFIG_NET_SCH_CBS=3Dy
CONFIG_NET_SCH_ETF=3Dy
CONFIG_NET_SCH_MQPRIO_LIB=3Dy
CONFIG_NET_SCH_TAPRIO=3Dy
CONFIG_NET_SCH_GRED=3Dy
CONFIG_NET_SCH_NETEM=3Dy
CONFIG_NET_SCH_DRR=3Dy
CONFIG_NET_SCH_MQPRIO=3Dy
CONFIG_NET_SCH_SKBPRIO=3Dy
CONFIG_NET_SCH_CHOKE=3Dy
CONFIG_NET_SCH_QFQ=3Dy
CONFIG_NET_SCH_CODEL=3Dy
CONFIG_NET_SCH_FQ_CODEL=3Dy
CONFIG_NET_SCH_CAKE=3Dy
CONFIG_NET_SCH_FQ=3Dy
CONFIG_NET_SCH_HHF=3Dy
CONFIG_NET_SCH_PIE=3Dy
CONFIG_NET_SCH_FQ_PIE=3Dy
CONFIG_NET_SCH_INGRESS=3Dy
CONFIG_NET_SCH_PLUG=3Dy
CONFIG_NET_SCH_ETS=3Dy
CONFIG_NET_SCH_DEFAULT=3Dy
# CONFIG_DEFAULT_FQ is not set
CONFIG_DEFAULT_CODEL=3Dy
# CONFIG_DEFAULT_FQ_CODEL is not set
# CONFIG_DEFAULT_FQ_PIE is not set
# CONFIG_DEFAULT_SFQ is not set
# CONFIG_DEFAULT_PFIFO_FAST is not set
CONFIG_DEFAULT_NET_SCH=3D"pfifo_fast"

#
# Classification
#
CONFIG_NET_CLS=3Dy
CONFIG_NET_CLS_BASIC=3Dy
CONFIG_NET_CLS_ROUTE4=3Dy
CONFIG_NET_CLS_FW=3Dy
CONFIG_NET_CLS_U32=3Dy
CONFIG_CLS_U32_PERF=3Dy
CONFIG_CLS_U32_MARK=3Dy
CONFIG_NET_CLS_FLOW=3Dy
CONFIG_NET_CLS_CGROUP=3Dy
CONFIG_NET_CLS_BPF=3Dy
CONFIG_NET_CLS_FLOWER=3Dy
CONFIG_NET_CLS_MATCHALL=3Dy
CONFIG_NET_EMATCH=3Dy
CONFIG_NET_EMATCH_STACK=3D32
CONFIG_NET_EMATCH_CMP=3Dy
CONFIG_NET_EMATCH_NBYTE=3Dy
CONFIG_NET_EMATCH_U32=3Dy
CONFIG_NET_EMATCH_META=3Dy
CONFIG_NET_EMATCH_TEXT=3Dy
CONFIG_NET_EMATCH_CANID=3Dy
CONFIG_NET_EMATCH_IPSET=3Dy
CONFIG_NET_EMATCH_IPT=3Dy
CONFIG_NET_CLS_ACT=3Dy
CONFIG_NET_ACT_POLICE=3Dy
CONFIG_NET_ACT_GACT=3Dy
CONFIG_GACT_PROB=3Dy
CONFIG_NET_ACT_MIRRED=3Dy
CONFIG_NET_ACT_SAMPLE=3Dy
CONFIG_NET_ACT_NAT=3Dy
CONFIG_NET_ACT_PEDIT=3Dy
CONFIG_NET_ACT_SIMP=3Dy
CONFIG_NET_ACT_SKBEDIT=3Dy
CONFIG_NET_ACT_CSUM=3Dy
CONFIG_NET_ACT_MPLS=3Dy
CONFIG_NET_ACT_VLAN=3Dy
CONFIG_NET_ACT_BPF=3Dy
CONFIG_NET_ACT_CONNMARK=3Dy
CONFIG_NET_ACT_CTINFO=3Dy
CONFIG_NET_ACT_SKBMOD=3Dy
CONFIG_NET_ACT_IFE=3Dy
CONFIG_NET_ACT_TUNNEL_KEY=3Dy
CONFIG_NET_ACT_CT=3Dy
CONFIG_NET_ACT_GATE=3Dy
CONFIG_NET_IFE_SKBMARK=3Dy
CONFIG_NET_IFE_SKBPRIO=3Dy
CONFIG_NET_IFE_SKBTCINDEX=3Dy
CONFIG_NET_TC_SKB_EXT=3Dy
CONFIG_NET_SCH_FIFO=3Dy
CONFIG_DCB=3Dy
CONFIG_DNS_RESOLVER=3Dy
CONFIG_BATMAN_ADV=3Dy
CONFIG_BATMAN_ADV_BATMAN_V=3Dy
CONFIG_BATMAN_ADV_BLA=3Dy
CONFIG_BATMAN_ADV_DAT=3Dy
CONFIG_BATMAN_ADV_NC=3Dy
CONFIG_BATMAN_ADV_MCAST=3Dy
# CONFIG_BATMAN_ADV_DEBUG is not set
# CONFIG_BATMAN_ADV_TRACING is not set
CONFIG_OPENVSWITCH=3Dy
CONFIG_OPENVSWITCH_GRE=3Dy
CONFIG_OPENVSWITCH_VXLAN=3Dy
CONFIG_OPENVSWITCH_GENEVE=3Dy
CONFIG_VSOCKETS=3Dy
CONFIG_VSOCKETS_DIAG=3Dy
CONFIG_VSOCKETS_LOOPBACK=3Dy
# CONFIG_VMWARE_VMCI_VSOCKETS is not set
CONFIG_VIRTIO_VSOCKETS=3Dy
CONFIG_VIRTIO_VSOCKETS_COMMON=3Dy
CONFIG_NETLINK_DIAG=3Dy
CONFIG_MPLS=3Dy
CONFIG_NET_MPLS_GSO=3Dy
CONFIG_MPLS_ROUTING=3Dy
CONFIG_MPLS_IPTUNNEL=3Dy
CONFIG_NET_NSH=3Dy
CONFIG_HSR=3Dy
CONFIG_NET_SWITCHDEV=3Dy
CONFIG_NET_L3_MASTER_DEV=3Dy
CONFIG_QRTR=3Dy
CONFIG_QRTR_TUN=3Dy
# CONFIG_QRTR_MHI is not set
CONFIG_NET_NCSI=3Dy
# CONFIG_NCSI_OEM_CMD_GET_MAC is not set
# CONFIG_NCSI_OEM_CMD_KEEP_PHY is not set
# CONFIG_PCPU_DEV_REFCNT is not set
CONFIG_MAX_SKB_FRAGS=3D17
CONFIG_RPS=3Dy
CONFIG_RFS_ACCEL=3Dy
CONFIG_SOCK_RX_QUEUE_MAPPING=3Dy
CONFIG_XPS=3Dy
CONFIG_CGROUP_NET_PRIO=3Dy
CONFIG_CGROUP_NET_CLASSID=3Dy
CONFIG_NET_RX_BUSY_POLL=3Dy
CONFIG_BQL=3Dy
CONFIG_BPF_STREAM_PARSER=3Dy
CONFIG_NET_FLOW_LIMIT=3Dy

#
# Network testing
#
# CONFIG_NET_PKTGEN is not set
CONFIG_NET_DROP_MONITOR=3Dy
# end of Network testing
# end of Networking options

CONFIG_HAMRADIO=3Dy

#
# Packet Radio protocols
#
CONFIG_AX25=3Dy
CONFIG_AX25_DAMA_SLAVE=3Dy
CONFIG_NETROM=3Dy
CONFIG_ROSE=3Dy

#
# AX.25 network device drivers
#
CONFIG_MKISS=3Dy
CONFIG_6PACK=3Dy
CONFIG_BPQETHER=3Dy
# CONFIG_BAYCOM_SER_FDX is not set
# CONFIG_BAYCOM_SER_HDX is not set
# CONFIG_BAYCOM_PAR is not set
# CONFIG_YAM is not set
# end of AX.25 network device drivers

CONFIG_CAN=3Dy
CONFIG_CAN_RAW=3Dy
CONFIG_CAN_BCM=3Dy
CONFIG_CAN_GW=3Dy
CONFIG_CAN_J1939=3Dy
CONFIG_CAN_ISOTP=3Dy
CONFIG_BT=3Dy
CONFIG_BT_BREDR=3Dy
CONFIG_BT_RFCOMM=3Dy
CONFIG_BT_RFCOMM_TTY=3Dy
CONFIG_BT_BNEP=3Dy
CONFIG_BT_BNEP_MC_FILTER=3Dy
CONFIG_BT_BNEP_PROTO_FILTER=3Dy
CONFIG_BT_HIDP=3Dy
CONFIG_BT_LE=3Dy
CONFIG_BT_LE_L2CAP_ECRED=3Dy
CONFIG_BT_6LOWPAN=3Dy
CONFIG_BT_LEDS=3Dy
CONFIG_BT_MSFTEXT=3Dy
# CONFIG_BT_AOSPEXT is not set
# CONFIG_BT_DEBUGFS is not set
# CONFIG_BT_SELFTEST is not set

#
# Bluetooth device drivers
#
CONFIG_BT_INTEL=3Dy
CONFIG_BT_BCM=3Dy
CONFIG_BT_RTL=3Dy
CONFIG_BT_QCA=3Dy
CONFIG_BT_MTK=3Dy
CONFIG_BT_HCIBTUSB=3Dy
CONFIG_BT_HCIBTUSB_AUTOSUSPEND=3Dy
CONFIG_BT_HCIBTUSB_POLL_SYNC=3Dy
CONFIG_BT_HCIBTUSB_BCM=3Dy
CONFIG_BT_HCIBTUSB_MTK=3Dy
CONFIG_BT_HCIBTUSB_RTL=3Dy
# CONFIG_BT_HCIBTSDIO is not set
CONFIG_BT_HCIUART=3Dy
CONFIG_BT_HCIUART_SERDEV=3Dy
CONFIG_BT_HCIUART_H4=3Dy
# CONFIG_BT_HCIUART_NOKIA is not set
CONFIG_BT_HCIUART_BCSP=3Dy
# CONFIG_BT_HCIUART_ATH3K is not set
CONFIG_BT_HCIUART_LL=3Dy
CONFIG_BT_HCIUART_3WIRE=3Dy
# CONFIG_BT_HCIUART_INTEL is not set
# CONFIG_BT_HCIUART_BCM is not set
# CONFIG_BT_HCIUART_RTL is not set
CONFIG_BT_HCIUART_QCA=3Dy
CONFIG_BT_HCIUART_AG6XX=3Dy
CONFIG_BT_HCIUART_MRVL=3Dy
# CONFIG_BT_HCIUART_AML is not set
CONFIG_BT_HCIBCM203X=3Dy
# CONFIG_BT_HCIBCM4377 is not set
CONFIG_BT_HCIBPA10X=3Dy
CONFIG_BT_HCIBFUSB=3Dy
# CONFIG_BT_HCIDTL1 is not set
# CONFIG_BT_HCIBT3C is not set
# CONFIG_BT_HCIBLUECARD is not set
CONFIG_BT_HCIVHCI=3Dy
CONFIG_BT_MRVL=3Dy
CONFIG_BT_MRVL_SDIO=3Dy
CONFIG_BT_ATH3K=3Dy
CONFIG_BT_MTKSDIO=3Dy
CONFIG_BT_MTKUART=3Dy
# CONFIG_BT_VIRTIO is not set
# CONFIG_BT_NXPUART is not set
# CONFIG_BT_INTEL_PCIE is not set
# end of Bluetooth device drivers

CONFIG_AF_RXRPC=3Dy
CONFIG_AF_RXRPC_IPV6=3Dy
# CONFIG_AF_RXRPC_INJECT_LOSS is not set
# CONFIG_AF_RXRPC_INJECT_RX_DELAY is not set
# CONFIG_AF_RXRPC_DEBUG is not set
CONFIG_RXKAD=3Dy
# CONFIG_RXPERF is not set
CONFIG_AF_KCM=3Dy
CONFIG_STREAM_PARSER=3Dy
# CONFIG_MCTP is not set
CONFIG_FIB_RULES=3Dy
CONFIG_WIRELESS=3Dy
CONFIG_WEXT_CORE=3Dy
CONFIG_WEXT_PROC=3Dy
CONFIG_CFG80211=3Dy
# CONFIG_NL80211_TESTMODE is not set
# CONFIG_CFG80211_DEVELOPER_WARNINGS is not set
# CONFIG_CFG80211_CERTIFICATION_ONUS is not set
CONFIG_CFG80211_REQUIRE_SIGNED_REGDB=3Dy
CONFIG_CFG80211_USE_KERNEL_REGDB_KEYS=3Dy
CONFIG_CFG80211_DEFAULT_PS=3Dy
CONFIG_CFG80211_DEBUGFS=3Dy
CONFIG_CFG80211_CRDA_SUPPORT=3Dy
CONFIG_CFG80211_WEXT=3Dy
CONFIG_MAC80211=3Dy
CONFIG_MAC80211_HAS_RC=3Dy
CONFIG_MAC80211_RC_MINSTREL=3Dy
CONFIG_MAC80211_RC_DEFAULT_MINSTREL=3Dy
CONFIG_MAC80211_RC_DEFAULT=3D"minstrel_ht"
CONFIG_MAC80211_MESH=3Dy
CONFIG_MAC80211_LEDS=3Dy
CONFIG_MAC80211_DEBUGFS=3Dy
# CONFIG_MAC80211_MESSAGE_TRACING is not set
# CONFIG_MAC80211_DEBUG_MENU is not set
CONFIG_MAC80211_STA_HASH_MAX_SIZE=3D0
CONFIG_RFKILL=3Dy
CONFIG_RFKILL_LEDS=3Dy
CONFIG_RFKILL_INPUT=3Dy
# CONFIG_RFKILL_GPIO is not set
CONFIG_NET_9P=3Dy
CONFIG_NET_9P_FD=3Dy
CONFIG_NET_9P_VIRTIO=3Dy
# CONFIG_NET_9P_USBG is not set
CONFIG_NET_9P_RDMA=3Dy
# CONFIG_NET_9P_DEBUG is not set
CONFIG_CAIF=3Dy
CONFIG_CAIF_DEBUG=3Dy
CONFIG_CAIF_NETDEV=3Dy
CONFIG_CAIF_USB=3Dy
CONFIG_CEPH_LIB=3Dy
# CONFIG_CEPH_LIB_PRETTYDEBUG is not set
CONFIG_CEPH_LIB_USE_DNS_RESOLVER=3Dy
CONFIG_NFC=3Dy
CONFIG_NFC_DIGITAL=3Dy
CONFIG_NFC_NCI=3Dy
# CONFIG_NFC_NCI_SPI is not set
CONFIG_NFC_NCI_UART=3Dy
CONFIG_NFC_HCI=3Dy
CONFIG_NFC_SHDLC=3Dy

#
# Near Field Communication (NFC) devices
#
# CONFIG_NFC_TRF7970A is not set
# CONFIG_NFC_MEI_PHY is not set
CONFIG_NFC_SIM=3Dy
CONFIG_NFC_PORT100=3Dy
CONFIG_NFC_VIRTUAL_NCI=3Dy
CONFIG_NFC_FDP=3Dy
# CONFIG_NFC_FDP_I2C is not set
# CONFIG_NFC_PN544_I2C is not set
CONFIG_NFC_PN533=3Dy
CONFIG_NFC_PN533_USB=3Dy
# CONFIG_NFC_PN533_I2C is not set
# CONFIG_NFC_PN532_UART is not set
# CONFIG_NFC_MICROREAD_I2C is not set
CONFIG_NFC_MRVL=3Dy
CONFIG_NFC_MRVL_USB=3Dy
# CONFIG_NFC_MRVL_UART is not set
# CONFIG_NFC_MRVL_I2C is not set
# CONFIG_NFC_ST21NFCA_I2C is not set
# CONFIG_NFC_ST_NCI_I2C is not set
# CONFIG_NFC_ST_NCI_SPI is not set
# CONFIG_NFC_NXP_NCI is not set
# CONFIG_NFC_S3FWRN5_I2C is not set
# CONFIG_NFC_S3FWRN82_UART is not set
# CONFIG_NFC_ST95HF is not set
# end of Near Field Communication (NFC) devices

CONFIG_PSAMPLE=3Dy
CONFIG_NET_IFE=3Dy
CONFIG_LWTUNNEL=3Dy
CONFIG_LWTUNNEL_BPF=3Dy
CONFIG_DST_CACHE=3Dy
CONFIG_GRO_CELLS=3Dy
CONFIG_SOCK_VALIDATE_XMIT=3Dy
CONFIG_NET_SELFTESTS=3Dy
CONFIG_NET_SOCK_MSG=3Dy
CONFIG_NET_DEVLINK=3Dy
CONFIG_PAGE_POOL=3Dy
# CONFIG_PAGE_POOL_STATS is not set
CONFIG_FAILOVER=3Dy
CONFIG_ETHTOOL_NETLINK=3Dy

#
# Device Drivers
#
CONFIG_HAVE_EISA=3Dy
# CONFIG_EISA is not set
CONFIG_HAVE_PCI=3Dy
CONFIG_GENERIC_PCI_IOMAP=3Dy
CONFIG_PCI=3Dy
CONFIG_PCI_DOMAINS=3Dy
CONFIG_PCIEPORTBUS=3Dy
CONFIG_HOTPLUG_PCI_PCIE=3Dy
CONFIG_PCIEAER=3Dy
# CONFIG_PCIEAER_INJECT is not set
# CONFIG_PCIE_ECRC is not set
CONFIG_PCIEASPM=3Dy
CONFIG_PCIEASPM_DEFAULT=3Dy
# CONFIG_PCIEASPM_POWERSAVE is not set
# CONFIG_PCIEASPM_POWER_SUPERSAVE is not set
# CONFIG_PCIEASPM_PERFORMANCE is not set
CONFIG_PCIE_PME=3Dy
# CONFIG_PCIE_DPC is not set
# CONFIG_PCIE_PTM is not set
CONFIG_PCI_MSI=3Dy
CONFIG_PCI_QUIRKS=3Dy
# CONFIG_PCI_DEBUG is not set
# CONFIG_PCI_REALLOC_ENABLE_AUTO is not set
# CONFIG_PCI_STUB is not set
# CONFIG_PCI_PF_STUB is not set
CONFIG_PCI_ATS=3Dy
CONFIG_PCI_ECAM=3Dy
CONFIG_PCI_LOCKLESS_CONFIG=3Dy
CONFIG_PCI_IOV=3Dy
# CONFIG_PCI_NPEM is not set
CONFIG_PCI_PRI=3Dy
CONFIG_PCI_PASID=3Dy
# CONFIG_PCIE_TPH is not set
# CONFIG_PCI_P2PDMA is not set
CONFIG_PCI_LABEL=3Dy
# CONFIG_PCI_DYNAMIC_OF_NODES is not set
# CONFIG_PCIE_BUS_TUNE_OFF is not set
CONFIG_PCIE_BUS_DEFAULT=3Dy
# CONFIG_PCIE_BUS_SAFE is not set
# CONFIG_PCIE_BUS_PERFORMANCE is not set
# CONFIG_PCIE_BUS_PEER2PEER is not set
CONFIG_VGA_ARB=3Dy
CONFIG_VGA_ARB_MAX_GPUS=3D16
CONFIG_HOTPLUG_PCI=3Dy
# CONFIG_HOTPLUG_PCI_ACPI is not set
# CONFIG_HOTPLUG_PCI_CPCI is not set
# CONFIG_HOTPLUG_PCI_OCTEONEP is not set
# CONFIG_HOTPLUG_PCI_SHPC is not set

#
# PCI controller drivers
#
# CONFIG_PCI_FTPCI100 is not set
CONFIG_PCI_HOST_COMMON=3Dy
CONFIG_PCI_HOST_GENERIC=3Dy
# CONFIG_VMD is not set
# CONFIG_PCIE_XILINX is not set

#
# Cadence-based PCIe controllers
#
# CONFIG_PCIE_CADENCE_PLAT_HOST is not set
# CONFIG_PCIE_CADENCE_PLAT_EP is not set
# end of Cadence-based PCIe controllers

#
# DesignWare-based PCIe controllers
#
# CONFIG_PCI_MESON is not set
# CONFIG_PCIE_INTEL_GW is not set
# CONFIG_PCIE_DW_PLAT_HOST is not set
# CONFIG_PCIE_DW_PLAT_EP is not set
# end of DesignWare-based PCIe controllers

#
# Mobiveil-based PCIe controllers
#
# end of Mobiveil-based PCIe controllers

#
# PLDA-based PCIe controllers
#
# CONFIG_PCIE_MICROCHIP_HOST is not set
# end of PLDA-based PCIe controllers
# end of PCI controller drivers

#
# PCI Endpoint
#
CONFIG_PCI_ENDPOINT=3Dy
# CONFIG_PCI_ENDPOINT_CONFIGFS is not set
# CONFIG_PCI_EPF_TEST is not set
# CONFIG_PCI_EPF_NTB is not set
# end of PCI Endpoint

#
# PCI switch controller drivers
#
# CONFIG_PCI_SW_SWITCHTEC is not set
# end of PCI switch controller drivers

# CONFIG_CXL_BUS is not set
CONFIG_PCCARD=3Dy
CONFIG_PCMCIA=3Dy
CONFIG_PCMCIA_LOAD_CIS=3Dy
CONFIG_CARDBUS=3Dy

#
# PC-card bridges
#
CONFIG_YENTA=3Dy
CONFIG_YENTA_O2=3Dy
CONFIG_YENTA_RICOH=3Dy
CONFIG_YENTA_TI=3Dy
CONFIG_YENTA_ENE_TUNE=3Dy
CONFIG_YENTA_TOSHIBA=3Dy
# CONFIG_PD6729 is not set
# CONFIG_I82092 is not set
CONFIG_PCCARD_NONSTATIC=3Dy
# CONFIG_RAPIDIO is not set

#
# Generic Driver Options
#
CONFIG_AUXILIARY_BUS=3Dy
CONFIG_UEVENT_HELPER=3Dy
CONFIG_UEVENT_HELPER_PATH=3D"/sbin/hotplug"
CONFIG_DEVTMPFS=3Dy
CONFIG_DEVTMPFS_MOUNT=3Dy
# CONFIG_DEVTMPFS_SAFE is not set
CONFIG_STANDALONE=3Dy
CONFIG_PREVENT_FIRMWARE_BUILD=3Dy

#
# Firmware loader
#
CONFIG_FW_LOADER=3Dy
# CONFIG_FW_LOADER_DEBUG is not set
CONFIG_FW_LOADER_PAGED_BUF=3Dy
CONFIG_FW_LOADER_SYSFS=3Dy
CONFIG_EXTRA_FIRMWARE=3D""
CONFIG_FW_LOADER_USER_HELPER=3Dy
CONFIG_FW_LOADER_USER_HELPER_FALLBACK=3Dy
CONFIG_FW_LOADER_COMPRESS=3Dy
# CONFIG_FW_LOADER_COMPRESS_XZ is not set
# CONFIG_FW_LOADER_COMPRESS_ZSTD is not set
CONFIG_FW_CACHE=3Dy
# CONFIG_FW_UPLOAD is not set
# end of Firmware loader

CONFIG_WANT_DEV_COREDUMP=3Dy
CONFIG_ALLOW_DEV_COREDUMP=3Dy
CONFIG_DEV_COREDUMP=3Dy
# CONFIG_DEBUG_DRIVER is not set
CONFIG_DEBUG_DEVRES=3Dy
# CONFIG_DEBUG_TEST_DRIVER_REMOVE is not set
# CONFIG_TEST_ASYNC_DRIVER_PROBE is not set
CONFIG_GENERIC_CPU_DEVICES=3Dy
CONFIG_GENERIC_CPU_AUTOPROBE=3Dy
CONFIG_GENERIC_CPU_VULNERABILITIES=3Dy
CONFIG_REGMAP=3Dy
CONFIG_REGMAP_I2C=3Dy
CONFIG_REGMAP_SPI=3Dy
CONFIG_REGMAP_MMIO=3Dy
CONFIG_REGMAP_IRQ=3Dy
CONFIG_DMA_SHARED_BUFFER=3Dy
# CONFIG_DMA_FENCE_TRACE is not set
# CONFIG_FW_DEVLINK_SYNC_STATE_TIMEOUT is not set
# end of Generic Driver Options

#
# Bus devices
#
# CONFIG_MOXTET is not set
CONFIG_MHI_BUS=3Dy
# CONFIG_MHI_BUS_DEBUG is not set
# CONFIG_MHI_BUS_PCI_GENERIC is not set
# CONFIG_MHI_BUS_EP is not set
# end of Bus devices

#
# Cache Drivers
#
# end of Cache Drivers

CONFIG_CONNECTOR=3Dy
CONFIG_PROC_EVENTS=3Dy

#
# Firmware Drivers
#

#
# ARM System Control and Management Interface Protocol
#
# end of ARM System Control and Management Interface Protocol

# CONFIG_EDD is not set
CONFIG_FIRMWARE_MEMMAP=3Dy
CONFIG_DMIID=3Dy
# CONFIG_DMI_SYSFS is not set
CONFIG_DMI_SCAN_MACHINE_NON_EFI_FALLBACK=3Dy
# CONFIG_ISCSI_IBFT is not set
# CONFIG_FW_CFG_SYSFS is not set
CONFIG_SYSFB=3Dy
# CONFIG_SYSFB_SIMPLEFB is not set
CONFIG_GOOGLE_FIRMWARE=3Dy
# CONFIG_GOOGLE_SMI is not set
# CONFIG_GOOGLE_CBMEM is not set
CONFIG_GOOGLE_COREBOOT_TABLE=3Dy
CONFIG_GOOGLE_MEMCONSOLE=3Dy
# CONFIG_GOOGLE_MEMCONSOLE_X86_LEGACY is not set
# CONFIG_GOOGLE_FRAMEBUFFER_COREBOOT is not set
CONFIG_GOOGLE_MEMCONSOLE_COREBOOT=3Dy
CONFIG_GOOGLE_VPD=3Dy
CONFIG_IMX_SCMI_MISC_DRV=3Dy

#
# Qualcomm firmware drivers
#
# end of Qualcomm firmware drivers

#
# Tegra firmware driver
#
# end of Tegra firmware driver
# end of Firmware Drivers

CONFIG_GNSS=3Dy
# CONFIG_GNSS_MTK_SERIAL is not set
# CONFIG_GNSS_SIRF_SERIAL is not set
# CONFIG_GNSS_UBX_SERIAL is not set
CONFIG_GNSS_USB=3Dy
CONFIG_MTD=3Dy
# CONFIG_MTD_TESTS is not set

#
# Partition parsers
#
# CONFIG_MTD_CMDLINE_PARTS is not set
# CONFIG_MTD_OF_PARTS is not set
# CONFIG_MTD_REDBOOT_PARTS is not set
# end of Partition parsers

#
# User Modules And Translation Layers
#
CONFIG_MTD_BLKDEVS=3Dy
CONFIG_MTD_BLOCK=3Dy

#
# Note that in some cases UBI block is preferred. See MTD_UBI_BLOCK.
#
CONFIG_FTL=3Dy
# CONFIG_NFTL is not set
# CONFIG_INFTL is not set
# CONFIG_RFD_FTL is not set
# CONFIG_SSFDC is not set
# CONFIG_SM_FTL is not set
# CONFIG_MTD_OOPS is not set
# CONFIG_MTD_SWAP is not set
# CONFIG_MTD_PARTITIONED_MASTER is not set

#
# RAM/ROM/Flash chip drivers
#
# CONFIG_MTD_CFI is not set
# CONFIG_MTD_JEDECPROBE is not set
CONFIG_MTD_MAP_BANK_WIDTH_1=3Dy
CONFIG_MTD_MAP_BANK_WIDTH_2=3Dy
CONFIG_MTD_MAP_BANK_WIDTH_4=3Dy
CONFIG_MTD_CFI_I1=3Dy
CONFIG_MTD_CFI_I2=3Dy
# CONFIG_MTD_RAM is not set
# CONFIG_MTD_ROM is not set
# CONFIG_MTD_ABSENT is not set
# end of RAM/ROM/Flash chip drivers

#
# Mapping drivers for chip access
#
# CONFIG_MTD_COMPLEX_MAPPINGS is not set
# CONFIG_MTD_PLATRAM is not set
# end of Mapping drivers for chip access

#
# Self-contained MTD device drivers
#
# CONFIG_MTD_PMC551 is not set
# CONFIG_MTD_DATAFLASH is not set
# CONFIG_MTD_MCHP23K256 is not set
# CONFIG_MTD_MCHP48L640 is not set
# CONFIG_MTD_SST25L is not set
CONFIG_MTD_SLRAM=3Dy
CONFIG_MTD_PHRAM=3Dy
CONFIG_MTD_MTDRAM=3Dy
CONFIG_MTDRAM_TOTAL_SIZE=3D128
CONFIG_MTDRAM_ERASE_SIZE=3D4
CONFIG_MTD_BLOCK2MTD=3Dy

#
# Disk-On-Chip Device Drivers
#
# CONFIG_MTD_DOCG3 is not set
# end of Self-contained MTD device drivers

#
# NAND
#
# CONFIG_MTD_ONENAND is not set
# CONFIG_MTD_RAW_NAND is not set
# CONFIG_MTD_SPI_NAND is not set

#
# ECC engine support
#
# CONFIG_MTD_NAND_ECC_SW_HAMMING is not set
# CONFIG_MTD_NAND_ECC_SW_BCH is not set
# CONFIG_MTD_NAND_ECC_MXIC is not set
# end of ECC engine support
# end of NAND

#
# LPDDR & LPDDR2 PCM memory drivers
#
# CONFIG_MTD_LPDDR is not set
# end of LPDDR & LPDDR2 PCM memory drivers

# CONFIG_MTD_SPI_NOR is not set
CONFIG_MTD_UBI=3Dy
CONFIG_MTD_UBI_WL_THRESHOLD=3D4096
CONFIG_MTD_UBI_BEB_LIMIT=3D20
# CONFIG_MTD_UBI_FASTMAP is not set
# CONFIG_MTD_UBI_GLUEBI is not set
# CONFIG_MTD_UBI_BLOCK is not set
# CONFIG_MTD_UBI_FAULT_INJECTION is not set
# CONFIG_MTD_UBI_NVMEM is not set
# CONFIG_MTD_HYPERBUS is not set
CONFIG_DTC=3Dy
CONFIG_OF=3Dy
# CONFIG_OF_UNITTEST is not set
CONFIG_OF_FLATTREE=3Dy
CONFIG_OF_EARLY_FLATTREE=3Dy
CONFIG_OF_KOBJ=3Dy
CONFIG_OF_ADDRESS=3Dy
CONFIG_OF_IRQ=3Dy
CONFIG_OF_RESERVED_MEM=3Dy
# CONFIG_OF_OVERLAY is not set
CONFIG_OF_NUMA=3Dy
CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=3Dy
CONFIG_PARPORT=3Dy
# CONFIG_PARPORT_PC is not set
# CONFIG_PARPORT_1284 is not set
CONFIG_PARPORT_NOT_PC=3Dy
CONFIG_PNP=3Dy
CONFIG_PNP_DEBUG_MESSAGES=3Dy

#
# Protocols
#
CONFIG_PNPACPI=3Dy
CONFIG_BLK_DEV=3Dy
CONFIG_BLK_DEV_NULL_BLK=3Dy
CONFIG_BLK_DEV_NULL_BLK_FAULT_INJECTION=3Dy
# CONFIG_BLK_DEV_FD is not set
CONFIG_CDROM=3Dy
# CONFIG_BLK_DEV_PCIESSD_MTIP32XX is not set
CONFIG_ZRAM=3Dy
# CONFIG_ZRAM_BACKEND_LZ4 is not set
# CONFIG_ZRAM_BACKEND_LZ4HC is not set
# CONFIG_ZRAM_BACKEND_ZSTD is not set
# CONFIG_ZRAM_BACKEND_DEFLATE is not set
# CONFIG_ZRAM_BACKEND_842 is not set
CONFIG_ZRAM_BACKEND_FORCE_LZO=3Dy
CONFIG_ZRAM_BACKEND_LZO=3Dy
# CONFIG_ZRAM_DEF_COMP_LZORLE is not set
CONFIG_ZRAM_DEF_COMP_LZO=3Dy
CONFIG_ZRAM_DEF_COMP=3D"lzo"
# CONFIG_ZRAM_WRITEBACK is not set
# CONFIG_ZRAM_TRACK_ENTRY_ACTIME is not set
# CONFIG_ZRAM_MEMORY_TRACKING is not set
# CONFIG_ZRAM_MULTI_COMP is not set
CONFIG_BLK_DEV_LOOP=3Dy
CONFIG_BLK_DEV_LOOP_MIN_COUNT=3D16
# CONFIG_BLK_DEV_DRBD is not set
CONFIG_BLK_DEV_NBD=3Dy
CONFIG_BLK_DEV_RAM=3Dy
CONFIG_BLK_DEV_RAM_COUNT=3D16
CONFIG_BLK_DEV_RAM_SIZE=3D4096
# CONFIG_CDROM_PKTCDVD is not set
CONFIG_ATA_OVER_ETH=3Dy
CONFIG_VIRTIO_BLK=3Dy
# CONFIG_BLK_DEV_RBD is not set
# CONFIG_BLK_DEV_UBLK is not set
CONFIG_BLK_DEV_RNBD=3Dy
CONFIG_BLK_DEV_RNBD_CLIENT=3Dy

#
# NVME Support
#
CONFIG_NVME_CORE=3Dy
CONFIG_BLK_DEV_NVME=3Dy
CONFIG_NVME_MULTIPATH=3Dy
# CONFIG_NVME_VERBOSE_ERRORS is not set
# CONFIG_NVME_HWMON is not set
CONFIG_NVME_FABRICS=3Dy
CONFIG_NVME_RDMA=3Dy
CONFIG_NVME_FC=3Dy
CONFIG_NVME_TCP=3Dy
# CONFIG_NVME_TCP_TLS is not set
# CONFIG_NVME_HOST_AUTH is not set
CONFIG_NVME_TARGET=3Dy
# CONFIG_NVME_TARGET_DEBUGFS is not set
# CONFIG_NVME_TARGET_PASSTHRU is not set
CONFIG_NVME_TARGET_LOOP=3Dy
CONFIG_NVME_TARGET_RDMA=3Dy
CONFIG_NVME_TARGET_FC=3Dy
CONFIG_NVME_TARGET_FCLOOP=3Dy
CONFIG_NVME_TARGET_TCP=3Dy
# CONFIG_NVME_TARGET_TCP_TLS is not set
# CONFIG_NVME_TARGET_AUTH is not set
# end of NVME Support

#
# Misc devices
#
# CONFIG_AD525X_DPOT is not set
# CONFIG_DUMMY_IRQ is not set
# CONFIG_IBM_ASM is not set
# CONFIG_PHANTOM is not set
# CONFIG_RPMB is not set
# CONFIG_TIFM_CORE is not set
# CONFIG_ICS932S401 is not set
# CONFIG_ENCLOSURE_SERVICES is not set
# CONFIG_HP_ILO is not set
# CONFIG_APDS9802ALS is not set
# CONFIG_ISL29003 is not set
# CONFIG_ISL29020 is not set
# CONFIG_SENSORS_TSL2550 is not set
# CONFIG_SENSORS_BH1770 is not set
# CONFIG_SENSORS_APDS990X is not set
# CONFIG_HMC6352 is not set
# CONFIG_DS1682 is not set
# CONFIG_VMWARE_BALLOON is not set
# CONFIG_LATTICE_ECP3_CONFIG is not set
# CONFIG_SRAM is not set
# CONFIG_DW_XDATA_PCIE is not set
# CONFIG_PCI_ENDPOINT_TEST is not set
# CONFIG_XILINX_SDFEC is not set
CONFIG_MISC_RTSX=3Dy
# CONFIG_HISI_HIKEY_USB is not set
# CONFIG_OPEN_DICE is not set
# CONFIG_VCPU_STALL_DETECTOR is not set
# CONFIG_NSM is not set
# CONFIG_MCHP_LAN966X_PCI is not set
# CONFIG_C2PORT is not set

#
# EEPROM support
#
# CONFIG_EEPROM_AT24 is not set
# CONFIG_EEPROM_AT25 is not set
# CONFIG_EEPROM_MAX6875 is not set
CONFIG_EEPROM_93CX6=3Dy
# CONFIG_EEPROM_93XX46 is not set
# CONFIG_EEPROM_IDT_89HPESX is not set
# CONFIG_EEPROM_EE1004 is not set
# end of EEPROM support

# CONFIG_CB710_CORE is not set
# CONFIG_SENSORS_LIS3_I2C is not set
# CONFIG_ALTERA_STAPL is not set
CONFIG_INTEL_MEI=3Dy
CONFIG_INTEL_MEI_ME=3Dy
# CONFIG_INTEL_MEI_TXE is not set
# CONFIG_INTEL_MEI_GSC is not set
# CONFIG_INTEL_MEI_VSC_HW is not set
# CONFIG_INTEL_MEI_HDCP is not set
# CONFIG_INTEL_MEI_PXP is not set
# CONFIG_INTEL_MEI_GSC_PROXY is not set
CONFIG_VMWARE_VMCI=3Dy
# CONFIG_GENWQE is not set
# CONFIG_ECHO is not set
# CONFIG_BCM_VK is not set
# CONFIG_MISC_ALCOR_PCI is not set
# CONFIG_MISC_RTSX_PCI is not set
CONFIG_MISC_RTSX_USB=3Dy
# CONFIG_UACCE is not set
# CONFIG_PVPANIC is not set
# CONFIG_GP_PCI1XXXX is not set
# CONFIG_KEBA_CP500 is not set
# end of Misc devices

#
# SCSI device support
#
CONFIG_SCSI_MOD=3Dy
CONFIG_RAID_ATTRS=3Dy
CONFIG_SCSI_COMMON=3Dy
CONFIG_SCSI=3Dy
CONFIG_SCSI_DMA=3Dy
CONFIG_SCSI_NETLINK=3Dy
CONFIG_SCSI_PROC_FS=3Dy

#
# SCSI support type (disk, tape, CD-ROM)
#
CONFIG_BLK_DEV_SD=3Dy
CONFIG_CHR_DEV_ST=3Dy
CONFIG_BLK_DEV_SR=3Dy
CONFIG_CHR_DEV_SG=3Dy
CONFIG_BLK_DEV_BSG=3Dy
# CONFIG_CHR_DEV_SCH is not set
CONFIG_SCSI_CONSTANTS=3Dy
CONFIG_SCSI_LOGGING=3Dy
CONFIG_SCSI_SCAN_ASYNC=3Dy

#
# SCSI Transports
#
CONFIG_SCSI_SPI_ATTRS=3Dy
CONFIG_SCSI_FC_ATTRS=3Dy
CONFIG_SCSI_ISCSI_ATTRS=3Dy
CONFIG_SCSI_SAS_ATTRS=3Dy
CONFIG_SCSI_SAS_LIBSAS=3Dy
CONFIG_SCSI_SAS_ATA=3Dy
# CONFIG_SCSI_SAS_HOST_SMP is not set
CONFIG_SCSI_SRP_ATTRS=3Dy
# end of SCSI Transports

CONFIG_SCSI_LOWLEVEL=3Dy
# CONFIG_ISCSI_TCP is not set
# CONFIG_ISCSI_BOOT_SYSFS is not set
# CONFIG_SCSI_CXGB3_ISCSI is not set
# CONFIG_SCSI_CXGB4_ISCSI is not set
# CONFIG_SCSI_BNX2_ISCSI is not set
# CONFIG_BE2ISCSI is not set
# CONFIG_BLK_DEV_3W_XXXX_RAID is not set
CONFIG_SCSI_HPSA=3Dy
# CONFIG_SCSI_3W_9XXX is not set
# CONFIG_SCSI_3W_SAS is not set
# CONFIG_SCSI_ACARD is not set
# CONFIG_SCSI_AACRAID is not set
# CONFIG_SCSI_AIC7XXX is not set
# CONFIG_SCSI_AIC79XX is not set
# CONFIG_SCSI_AIC94XX is not set
# CONFIG_SCSI_MVSAS is not set
# CONFIG_SCSI_MVUMI is not set
# CONFIG_SCSI_ADVANSYS is not set
# CONFIG_SCSI_ARCMSR is not set
# CONFIG_SCSI_ESAS2R is not set
# CONFIG_MEGARAID_NEWGEN is not set
# CONFIG_MEGARAID_LEGACY is not set
# CONFIG_MEGARAID_SAS is not set
# CONFIG_SCSI_MPT3SAS is not set
# CONFIG_SCSI_MPT2SAS is not set
# CONFIG_SCSI_MPI3MR is not set
# CONFIG_SCSI_SMARTPQI is not set
# CONFIG_SCSI_HPTIOP is not set
# CONFIG_SCSI_BUSLOGIC is not set
# CONFIG_SCSI_MYRB is not set
# CONFIG_SCSI_MYRS is not set
# CONFIG_VMWARE_PVSCSI is not set
# CONFIG_LIBFC is not set
# CONFIG_SCSI_SNIC is not set
# CONFIG_SCSI_DMX3191D is not set
# CONFIG_SCSI_FDOMAIN_PCI is not set
# CONFIG_SCSI_ISCI is not set
# CONFIG_SCSI_IPS is not set
# CONFIG_SCSI_INITIO is not set
# CONFIG_SCSI_INIA100 is not set
# CONFIG_SCSI_STEX is not set
# CONFIG_SCSI_SYM53C8XX_2 is not set
# CONFIG_SCSI_IPR is not set
# CONFIG_SCSI_QLOGIC_1280 is not set
# CONFIG_SCSI_QLA_FC is not set
# CONFIG_SCSI_QLA_ISCSI is not set
# CONFIG_SCSI_LPFC is not set
# CONFIG_SCSI_EFCT is not set
# CONFIG_SCSI_DC395x is not set
# CONFIG_SCSI_AM53C974 is not set
# CONFIG_SCSI_WD719X is not set
# CONFIG_SCSI_DEBUG is not set
# CONFIG_SCSI_PMCRAID is not set
# CONFIG_SCSI_PM8001 is not set
# CONFIG_SCSI_BFA_FC is not set
CONFIG_SCSI_VIRTIO=3Dy
# CONFIG_SCSI_CHELSIO_FCOE is not set
# CONFIG_SCSI_LOWLEVEL_PCMCIA is not set
# CONFIG_SCSI_DH is not set
# end of SCSI device support

CONFIG_ATA=3Dy
CONFIG_SATA_HOST=3Dy
CONFIG_PATA_TIMINGS=3Dy
CONFIG_ATA_VERBOSE_ERROR=3Dy
CONFIG_ATA_FORCE=3Dy
CONFIG_ATA_ACPI=3Dy
# CONFIG_SATA_ZPODD is not set
CONFIG_SATA_PMP=3Dy

#
# Controllers with non-SFF native interface
#
CONFIG_SATA_AHCI=3Dy
CONFIG_SATA_MOBILE_LPM_POLICY=3D3
# CONFIG_SATA_AHCI_PLATFORM is not set
# CONFIG_AHCI_DWC is not set
# CONFIG_AHCI_CEVA is not set
# CONFIG_SATA_INIC162X is not set
# CONFIG_SATA_ACARD_AHCI is not set
# CONFIG_SATA_SIL24 is not set
CONFIG_ATA_SFF=3Dy

#
# SFF controllers with custom DMA interface
#
# CONFIG_PDC_ADMA is not set
# CONFIG_SATA_QSTOR is not set
# CONFIG_SATA_SX4 is not set
CONFIG_ATA_BMDMA=3Dy

#
# SATA SFF controllers with BMDMA
#
CONFIG_ATA_PIIX=3Dy
# CONFIG_SATA_DWC is not set
# CONFIG_SATA_MV is not set
# CONFIG_SATA_NV is not set
# CONFIG_SATA_PROMISE is not set
# CONFIG_SATA_SIL is not set
# CONFIG_SATA_SIS is not set
# CONFIG_SATA_SVW is not set
# CONFIG_SATA_ULI is not set
# CONFIG_SATA_VIA is not set
# CONFIG_SATA_VITESSE is not set

#
# PATA SFF controllers with BMDMA
#
# CONFIG_PATA_ALI is not set
CONFIG_PATA_AMD=3Dy
# CONFIG_PATA_ARTOP is not set
# CONFIG_PATA_ATIIXP is not set
# CONFIG_PATA_ATP867X is not set
# CONFIG_PATA_CMD64X is not set
# CONFIG_PATA_CYPRESS is not set
# CONFIG_PATA_EFAR is not set
# CONFIG_PATA_HPT366 is not set
# CONFIG_PATA_HPT37X is not set
# CONFIG_PATA_HPT3X2N is not set
# CONFIG_PATA_HPT3X3 is not set
# CONFIG_PATA_IT8213 is not set
# CONFIG_PATA_IT821X is not set
# CONFIG_PATA_JMICRON is not set
# CONFIG_PATA_MARVELL is not set
# CONFIG_PATA_NETCELL is not set
# CONFIG_PATA_NINJA32 is not set
# CONFIG_PATA_NS87415 is not set
CONFIG_PATA_OLDPIIX=3Dy
# CONFIG_PATA_OPTIDMA is not set
# CONFIG_PATA_PDC2027X is not set
# CONFIG_PATA_PDC_OLD is not set
# CONFIG_PATA_RADISYS is not set
# CONFIG_PATA_RDC is not set
CONFIG_PATA_SCH=3Dy
# CONFIG_PATA_SERVERWORKS is not set
# CONFIG_PATA_SIL680 is not set
# CONFIG_PATA_SIS is not set
# CONFIG_PATA_TOSHIBA is not set
# CONFIG_PATA_TRIFLEX is not set
# CONFIG_PATA_VIA is not set
# CONFIG_PATA_WINBOND is not set

#
# PIO-only SFF controllers
#
# CONFIG_PATA_CMD640_PCI is not set
# CONFIG_PATA_MPIIX is not set
# CONFIG_PATA_NS87410 is not set
# CONFIG_PATA_OPTI is not set
# CONFIG_PATA_PCMCIA is not set
# CONFIG_PATA_OF_PLATFORM is not set
# CONFIG_PATA_RZ1000 is not set

#
# Generic fallback / legacy drivers
#
# CONFIG_PATA_ACPI is not set
CONFIG_ATA_GENERIC=3Dy
# CONFIG_PATA_LEGACY is not set
CONFIG_MD=3Dy
CONFIG_BLK_DEV_MD=3Dy
CONFIG_MD_AUTODETECT=3Dy
CONFIG_MD_BITMAP_FILE=3Dy
CONFIG_MD_RAID0=3Dy
CONFIG_MD_RAID1=3Dy
CONFIG_MD_RAID10=3Dy
CONFIG_MD_RAID456=3Dy
# CONFIG_MD_CLUSTER is not set
CONFIG_BCACHE=3Dy
# CONFIG_BCACHE_DEBUG is not set
# CONFIG_BCACHE_ASYNC_REGISTRATION is not set
CONFIG_BLK_DEV_DM_BUILTIN=3Dy
CONFIG_BLK_DEV_DM=3Dy
# CONFIG_DM_DEBUG is not set
CONFIG_DM_BUFIO=3Dy
# CONFIG_DM_DEBUG_BLOCK_MANAGER_LOCKING is not set
CONFIG_DM_BIO_PRISON=3Dy
CONFIG_DM_PERSISTENT_DATA=3Dy
# CONFIG_DM_UNSTRIPED is not set
CONFIG_DM_CRYPT=3Dy
CONFIG_DM_SNAPSHOT=3Dy
CONFIG_DM_THIN_PROVISIONING=3Dy
CONFIG_DM_CACHE=3Dy
CONFIG_DM_CACHE_SMQ=3Dy
CONFIG_DM_WRITECACHE=3Dy
# CONFIG_DM_EBS is not set
# CONFIG_DM_ERA is not set
CONFIG_DM_CLONE=3Dy
CONFIG_DM_MIRROR=3Dy
# CONFIG_DM_LOG_USERSPACE is not set
CONFIG_DM_RAID=3Dy
CONFIG_DM_ZERO=3Dy
CONFIG_DM_MULTIPATH=3Dy
CONFIG_DM_MULTIPATH_QL=3Dy
CONFIG_DM_MULTIPATH_ST=3Dy
# CONFIG_DM_MULTIPATH_HST is not set
# CONFIG_DM_MULTIPATH_IOA is not set
# CONFIG_DM_DELAY is not set
# CONFIG_DM_DUST is not set
# CONFIG_DM_INIT is not set
CONFIG_DM_UEVENT=3Dy
CONFIG_DM_FLAKEY=3Dy
CONFIG_DM_VERITY=3Dy
# CONFIG_DM_VERITY_VERIFY_ROOTHASH_SIG is not set
CONFIG_DM_VERITY_FEC=3Dy
# CONFIG_DM_SWITCH is not set
# CONFIG_DM_LOG_WRITES is not set
CONFIG_DM_INTEGRITY=3Dy
CONFIG_DM_ZONED=3Dy
CONFIG_DM_AUDIT=3Dy
# CONFIG_DM_VDO is not set
CONFIG_TARGET_CORE=3Dy
# CONFIG_TCM_IBLOCK is not set
# CONFIG_TCM_FILEIO is not set
# CONFIG_TCM_PSCSI is not set
# CONFIG_LOOPBACK_TARGET is not set
# CONFIG_ISCSI_TARGET is not set
# CONFIG_SBP_TARGET is not set
# CONFIG_REMOTE_TARGET is not set
# CONFIG_FUSION is not set

#
# IEEE 1394 (FireWire) support
#
CONFIG_FIREWIRE=3Dy
CONFIG_FIREWIRE_OHCI=3Dy
CONFIG_FIREWIRE_SBP2=3Dy
CONFIG_FIREWIRE_NET=3Dy
# CONFIG_FIREWIRE_NOSY is not set
# end of IEEE 1394 (FireWire) support

# CONFIG_MACINTOSH_DRIVERS is not set
CONFIG_NETDEVICES=3Dy
CONFIG_MII=3Dy
CONFIG_NET_CORE=3Dy
CONFIG_BONDING=3Dy
CONFIG_DUMMY=3Dy
CONFIG_WIREGUARD=3Dy
# CONFIG_WIREGUARD_DEBUG is not set
CONFIG_EQUALIZER=3Dy
CONFIG_NET_FC=3Dy
CONFIG_IFB=3Dy
CONFIG_NET_TEAM=3Dy
CONFIG_NET_TEAM_MODE_BROADCAST=3Dy
CONFIG_NET_TEAM_MODE_ROUNDROBIN=3Dy
CONFIG_NET_TEAM_MODE_RANDOM=3Dy
CONFIG_NET_TEAM_MODE_ACTIVEBACKUP=3Dy
CONFIG_NET_TEAM_MODE_LOADBALANCE=3Dy
CONFIG_MACVLAN=3Dy
CONFIG_MACVTAP=3Dy
CONFIG_IPVLAN_L3S=3Dy
CONFIG_IPVLAN=3Dy
CONFIG_IPVTAP=3Dy
CONFIG_VXLAN=3Dy
CONFIG_GENEVE=3Dy
CONFIG_BAREUDP=3Dy
CONFIG_GTP=3Dy
# CONFIG_PFCP is not set
# CONFIG_AMT is not set
CONFIG_MACSEC=3Dy
CONFIG_NETCONSOLE=3Dy
# CONFIG_NETCONSOLE_DYNAMIC is not set
# CONFIG_NETCONSOLE_EXTENDED_LOG is not set
CONFIG_NETPOLL=3Dy
CONFIG_NET_POLL_CONTROLLER=3Dy
CONFIG_TUN=3Dy
CONFIG_TAP=3Dy
CONFIG_TUN_VNET_CROSS_LE=3Dy
CONFIG_VETH=3Dy
CONFIG_VIRTIO_NET=3Dy
CONFIG_NLMON=3Dy
# CONFIG_NETKIT is not set
CONFIG_NET_VRF=3Dy
CONFIG_VSOCKMON=3Dy
# CONFIG_MHI_NET is not set
# CONFIG_ARCNET is not set
CONFIG_ATM_DRIVERS=3Dy
# CONFIG_ATM_DUMMY is not set
CONFIG_ATM_TCP=3Dy
# CONFIG_ATM_LANAI is not set
# CONFIG_ATM_ENI is not set
# CONFIG_ATM_NICSTAR is not set
# CONFIG_ATM_IDT77252 is not set
# CONFIG_ATM_IA is not set
# CONFIG_ATM_FORE200E is not set
# CONFIG_ATM_HE is not set
# CONFIG_ATM_SOLOS is not set
CONFIG_CAIF_DRIVERS=3Dy
CONFIG_CAIF_TTY=3Dy
CONFIG_CAIF_VIRTIO=3Dy

#
# Distributed Switch Architecture drivers
#
# CONFIG_B53 is not set
# CONFIG_NET_DSA_BCM_SF2 is not set
# CONFIG_NET_DSA_LOOP is not set
# CONFIG_NET_DSA_HIRSCHMANN_HELLCREEK is not set
# CONFIG_NET_DSA_LANTIQ_GSWIP is not set
# CONFIG_NET_DSA_MT7530 is not set
# CONFIG_NET_DSA_MV88E6060 is not set
# CONFIG_NET_DSA_MICROCHIP_KSZ_COMMON is not set
# CONFIG_NET_DSA_MV88E6XXX is not set
# CONFIG_NET_DSA_AR9331 is not set
# CONFIG_NET_DSA_QCA8K is not set
# CONFIG_NET_DSA_SJA1105 is not set
# CONFIG_NET_DSA_XRS700X_I2C is not set
# CONFIG_NET_DSA_XRS700X_MDIO is not set
# CONFIG_NET_DSA_REALTEK is not set
# CONFIG_NET_DSA_SMSC_LAN9303_I2C is not set
# CONFIG_NET_DSA_SMSC_LAN9303_MDIO is not set
# CONFIG_NET_DSA_VITESSE_VSC73XX_SPI is not set
# CONFIG_NET_DSA_VITESSE_VSC73XX_PLATFORM is not set
# end of Distributed Switch Architecture drivers

CONFIG_ETHERNET=3Dy
# CONFIG_NET_VENDOR_3COM is not set
# CONFIG_NET_VENDOR_ADAPTEC is not set
# CONFIG_NET_VENDOR_AGERE is not set
# CONFIG_NET_VENDOR_ALACRITECH is not set
CONFIG_NET_VENDOR_ALTEON=3Dy
# CONFIG_ACENIC is not set
# CONFIG_ALTERA_TSE is not set
CONFIG_NET_VENDOR_AMAZON=3Dy
# CONFIG_ENA_ETHERNET is not set
# CONFIG_NET_VENDOR_AMD is not set
# CONFIG_NET_VENDOR_AQUANTIA is not set
# CONFIG_NET_VENDOR_ARC is not set
CONFIG_NET_VENDOR_ASIX=3Dy
# CONFIG_SPI_AX88796C is not set
# CONFIG_NET_VENDOR_ATHEROS is not set
# CONFIG_CX_ECAT is not set
# CONFIG_NET_VENDOR_BROADCOM is not set
# CONFIG_NET_VENDOR_CADENCE is not set
# CONFIG_NET_VENDOR_CAVIUM is not set
# CONFIG_NET_VENDOR_CHELSIO is not set
CONFIG_NET_VENDOR_CISCO=3Dy
# CONFIG_ENIC is not set
# CONFIG_NET_VENDOR_CORTINA is not set
CONFIG_NET_VENDOR_DAVICOM=3Dy
# CONFIG_DM9051 is not set
# CONFIG_DNET is not set
# CONFIG_NET_VENDOR_DEC is not set
# CONFIG_NET_VENDOR_DLINK is not set
# CONFIG_NET_VENDOR_EMULEX is not set
CONFIG_NET_VENDOR_ENGLEDER=3Dy
# CONFIG_TSNEP is not set
# CONFIG_NET_VENDOR_EZCHIP is not set
# CONFIG_NET_VENDOR_FUJITSU is not set
CONFIG_NET_VENDOR_FUNGIBLE=3Dy
# CONFIG_FUN_ETH is not set
CONFIG_NET_VENDOR_GOOGLE=3Dy
CONFIG_GVE=3Dy
CONFIG_NET_VENDOR_HISILICON=3Dy
# CONFIG_HIBMCGE is not set
# CONFIG_NET_VENDOR_HUAWEI is not set
CONFIG_NET_VENDOR_I825XX=3Dy
CONFIG_NET_VENDOR_INTEL=3Dy
CONFIG_E100=3Dy
CONFIG_E1000=3Dy
CONFIG_E1000E=3Dy
CONFIG_E1000E_HWTS=3Dy
# CONFIG_IGB is not set
# CONFIG_IGBVF is not set
# CONFIG_IXGBE is not set
# CONFIG_IXGBEVF is not set
# CONFIG_I40E is not set
# CONFIG_I40EVF is not set
# CONFIG_ICE is not set
# CONFIG_FM10K is not set
# CONFIG_IGC is not set
# CONFIG_IDPF is not set
# CONFIG_JME is not set
# CONFIG_NET_VENDOR_ADI is not set
CONFIG_NET_VENDOR_LITEX=3Dy
# CONFIG_LITEX_LITEETH is not set
# CONFIG_NET_VENDOR_MARVELL is not set
CONFIG_NET_VENDOR_MELLANOX=3Dy
# CONFIG_MLX4_EN is not set
CONFIG_MLX4_CORE=3Dy
# CONFIG_MLX4_DEBUG is not set
# CONFIG_MLX4_CORE_GEN2 is not set
# CONFIG_MLX5_CORE is not set
# CONFIG_MLXSW_CORE is not set
# CONFIG_MLXFW is not set
CONFIG_NET_VENDOR_META=3Dy
# CONFIG_FBNIC is not set
# CONFIG_NET_VENDOR_MICREL is not set
# CONFIG_NET_VENDOR_MICROCHIP is not set
# CONFIG_NET_VENDOR_MICROSEMI is not set
CONFIG_NET_VENDOR_MICROSOFT=3Dy
# CONFIG_NET_VENDOR_MYRI is not set
# CONFIG_FEALNX is not set
# CONFIG_NET_VENDOR_NI is not set
# CONFIG_NET_VENDOR_NATSEMI is not set
# CONFIG_NET_VENDOR_NETERION is not set
# CONFIG_NET_VENDOR_NETRONOME is not set
# CONFIG_NET_VENDOR_NVIDIA is not set
# CONFIG_NET_VENDOR_OKI is not set
# CONFIG_ETHOC is not set
# CONFIG_OA_TC6 is not set
# CONFIG_NET_VENDOR_PACKET_ENGINES is not set
# CONFIG_NET_VENDOR_PENSANDO is not set
# CONFIG_NET_VENDOR_QLOGIC is not set
# CONFIG_NET_VENDOR_BROCADE is not set
# CONFIG_NET_VENDOR_QUALCOMM is not set
# CONFIG_NET_VENDOR_RDC is not set
# CONFIG_NET_VENDOR_REALTEK is not set
# CONFIG_NET_VENDOR_RENESAS is not set
# CONFIG_NET_VENDOR_ROCKER is not set
# CONFIG_NET_VENDOR_SAMSUNG is not set
# CONFIG_NET_VENDOR_SEEQ is not set
# CONFIG_NET_VENDOR_SILAN is not set
# CONFIG_NET_VENDOR_SIS is not set
# CONFIG_NET_VENDOR_SOLARFLARE is not set
# CONFIG_NET_VENDOR_SMSC is not set
# CONFIG_NET_VENDOR_SOCIONEXT is not set
# CONFIG_NET_VENDOR_STMICRO is not set
# CONFIG_NET_VENDOR_SUN is not set
# CONFIG_NET_VENDOR_SYNOPSYS is not set
# CONFIG_NET_VENDOR_TEHUTI is not set
# CONFIG_NET_VENDOR_TI is not set
CONFIG_NET_VENDOR_VERTEXCOM=3Dy
# CONFIG_MSE102X is not set
# CONFIG_NET_VENDOR_VIA is not set
CONFIG_NET_VENDOR_WANGXUN=3Dy
# CONFIG_NGBE is not set
# CONFIG_TXGBE is not set
# CONFIG_NET_VENDOR_WIZNET is not set
# CONFIG_NET_VENDOR_XILINX is not set
# CONFIG_NET_VENDOR_XIRCOM is not set
CONFIG_FDDI=3Dy
# CONFIG_DEFXX is not set
# CONFIG_SKFP is not set
# CONFIG_HIPPI is not set
CONFIG_PHYLINK=3Dy
CONFIG_PHYLIB=3Dy
CONFIG_SWPHY=3Dy
# CONFIG_LED_TRIGGER_PHY is not set
CONFIG_PHYLIB_LEDS=3Dy
CONFIG_FIXED_PHY=3Dy
# CONFIG_SFP is not set

#
# MII PHY device drivers
#
# CONFIG_AIR_EN8811H_PHY is not set
# CONFIG_AMD_PHY is not set
# CONFIG_ADIN_PHY is not set
# CONFIG_ADIN1100_PHY is not set
# CONFIG_AQUANTIA_PHY is not set
CONFIG_AX88796B_PHY=3Dy
# CONFIG_BROADCOM_PHY is not set
# CONFIG_BCM54140_PHY is not set
# CONFIG_BCM7XXX_PHY is not set
# CONFIG_BCM84881_PHY is not set
# CONFIG_BCM87XX_PHY is not set
# CONFIG_CICADA_PHY is not set
# CONFIG_CORTINA_PHY is not set
# CONFIG_DAVICOM_PHY is not set
# CONFIG_ICPLUS_PHY is not set
# CONFIG_LXT_PHY is not set
# CONFIG_INTEL_XWAY_PHY is not set
# CONFIG_LSI_ET1011C_PHY is not set
# CONFIG_MARVELL_PHY is not set
# CONFIG_MARVELL_10G_PHY is not set
# CONFIG_MARVELL_88Q2XXX_PHY is not set
# CONFIG_MARVELL_88X2222_PHY is not set
# CONFIG_MAXLINEAR_GPHY is not set
# CONFIG_MEDIATEK_GE_PHY is not set
# CONFIG_MICREL_PHY is not set
# CONFIG_MICROCHIP_T1S_PHY is not set
CONFIG_MICROCHIP_PHY=3Dy
# CONFIG_MICROCHIP_T1_PHY is not set
# CONFIG_MICROSEMI_PHY is not set
# CONFIG_MOTORCOMM_PHY is not set
# CONFIG_NATIONAL_PHY is not set
# CONFIG_NXP_CBTX_PHY is not set
# CONFIG_NXP_C45_TJA11XX_PHY is not set
# CONFIG_NXP_TJA11XX_PHY is not set
# CONFIG_NCN26000_PHY is not set
# CONFIG_AT803X_PHY is not set
# CONFIG_QCA83XX_PHY is not set
# CONFIG_QCA808X_PHY is not set
# CONFIG_QCA807X_PHY is not set
# CONFIG_QSEMI_PHY is not set
CONFIG_REALTEK_PHY=3Dy
# CONFIG_RENESAS_PHY is not set
# CONFIG_ROCKCHIP_PHY is not set
CONFIG_SMSC_PHY=3Dy
# CONFIG_STE10XP is not set
# CONFIG_TERANETICS_PHY is not set
# CONFIG_DP83822_PHY is not set
# CONFIG_DP83TC811_PHY is not set
# CONFIG_DP83848_PHY is not set
# CONFIG_DP83867_PHY is not set
# CONFIG_DP83869_PHY is not set
# CONFIG_DP83TD510_PHY is not set
# CONFIG_DP83TG720_PHY is not set
# CONFIG_VITESSE_PHY is not set
# CONFIG_XILINX_GMII2RGMII is not set
# CONFIG_MICREL_KS8995MA is not set
# CONFIG_PSE_CONTROLLER is not set
CONFIG_CAN_DEV=3Dy
CONFIG_CAN_VCAN=3Dy
CONFIG_CAN_VXCAN=3Dy
CONFIG_CAN_NETLINK=3Dy
CONFIG_CAN_CALC_BITTIMING=3Dy
CONFIG_CAN_RX_OFFLOAD=3Dy
# CONFIG_CAN_CAN327 is not set
# CONFIG_CAN_FLEXCAN is not set
# CONFIG_CAN_GRCAN is not set
# CONFIG_CAN_KVASER_PCIEFD is not set
CONFIG_CAN_SLCAN=3Dy
# CONFIG_CAN_C_CAN is not set
# CONFIG_CAN_CC770 is not set
# CONFIG_CAN_CTUCANFD_PCI is not set
# CONFIG_CAN_CTUCANFD_PLATFORM is not set
# CONFIG_CAN_ESD_402_PCI is not set
CONFIG_CAN_IFI_CANFD=3Dy
# CONFIG_CAN_M_CAN is not set
# CONFIG_CAN_PEAK_PCIEFD is not set
# CONFIG_CAN_SJA1000 is not set
# CONFIG_CAN_SOFTING is not set

#
# CAN SPI interfaces
#
# CONFIG_CAN_HI311X is not set
# CONFIG_CAN_MCP251X is not set
# CONFIG_CAN_MCP251XFD is not set
# end of CAN SPI interfaces

#
# CAN USB interfaces
#
CONFIG_CAN_8DEV_USB=3Dy
CONFIG_CAN_EMS_USB=3Dy
CONFIG_CAN_ESD_USB=3Dy
CONFIG_CAN_ETAS_ES58X=3Dy
CONFIG_CAN_F81604=3Dy
CONFIG_CAN_GS_USB=3Dy
CONFIG_CAN_KVASER_USB=3Dy
CONFIG_CAN_MCBA_USB=3Dy
CONFIG_CAN_PEAK_USB=3Dy
CONFIG_CAN_UCAN=3Dy
# end of CAN USB interfaces

# CONFIG_CAN_DEBUG_DEVICES is not set
CONFIG_MDIO_DEVICE=3Dy
CONFIG_MDIO_BUS=3Dy
CONFIG_FWNODE_MDIO=3Dy
CONFIG_OF_MDIO=3Dy
CONFIG_ACPI_MDIO=3Dy
CONFIG_MDIO_DEVRES=3Dy
# CONFIG_MDIO_BITBANG is not set
# CONFIG_MDIO_BCM_UNIMAC is not set
# CONFIG_MDIO_HISI_FEMAC is not set
CONFIG_MDIO_MVUSB=3Dy
# CONFIG_MDIO_MSCC_MIIM is not set
# CONFIG_MDIO_OCTEON is not set
# CONFIG_MDIO_IPQ4019 is not set
# CONFIG_MDIO_IPQ8064 is not set
# CONFIG_MDIO_THUNDER is not set

#
# MDIO Multiplexers
#
# CONFIG_MDIO_BUS_MUX_GPIO is not set
# CONFIG_MDIO_BUS_MUX_MULTIPLEXER is not set
# CONFIG_MDIO_BUS_MUX_MMIOREG is not set

#
# PCS device drivers
#
# CONFIG_PCS_XPCS is not set
# end of PCS device drivers

# CONFIG_PLIP is not set
CONFIG_PPP=3Dy
CONFIG_PPP_BSDCOMP=3Dy
CONFIG_PPP_DEFLATE=3Dy
CONFIG_PPP_FILTER=3Dy
CONFIG_PPP_MPPE=3Dy
CONFIG_PPP_MULTILINK=3Dy
CONFIG_PPPOATM=3Dy
CONFIG_PPPOE=3Dy
CONFIG_PPPOE_HASH_BITS_1=3Dy
# CONFIG_PPPOE_HASH_BITS_2 is not set
# CONFIG_PPPOE_HASH_BITS_4 is not set
# CONFIG_PPPOE_HASH_BITS_8 is not set
CONFIG_PPPOE_HASH_BITS=3D1
CONFIG_PPTP=3Dy
CONFIG_PPPOL2TP=3Dy
CONFIG_PPP_ASYNC=3Dy
CONFIG_PPP_SYNC_TTY=3Dy
CONFIG_SLIP=3Dy
CONFIG_SLHC=3Dy
CONFIG_SLIP_COMPRESSED=3Dy
CONFIG_SLIP_SMART=3Dy
CONFIG_SLIP_MODE_SLIP6=3Dy
CONFIG_USB_NET_DRIVERS=3Dy
CONFIG_USB_CATC=3Dy
CONFIG_USB_KAWETH=3Dy
CONFIG_USB_PEGASUS=3Dy
CONFIG_USB_RTL8150=3Dy
CONFIG_USB_RTL8152=3Dy
CONFIG_USB_LAN78XX=3Dy
CONFIG_USB_USBNET=3Dy
CONFIG_USB_NET_AX8817X=3Dy
CONFIG_USB_NET_AX88179_178A=3Dy
CONFIG_USB_NET_CDCETHER=3Dy
CONFIG_USB_NET_CDC_EEM=3Dy
CONFIG_USB_NET_CDC_NCM=3Dy
CONFIG_USB_NET_HUAWEI_CDC_NCM=3Dy
CONFIG_USB_NET_CDC_MBIM=3Dy
CONFIG_USB_NET_DM9601=3Dy
CONFIG_USB_NET_SR9700=3Dy
CONFIG_USB_NET_SR9800=3Dy
CONFIG_USB_NET_SMSC75XX=3Dy
CONFIG_USB_NET_SMSC95XX=3Dy
CONFIG_USB_NET_GL620A=3Dy
CONFIG_USB_NET_NET1080=3Dy
CONFIG_USB_NET_PLUSB=3Dy
CONFIG_USB_NET_MCS7830=3Dy
CONFIG_USB_NET_RNDIS_HOST=3Dy
CONFIG_USB_NET_CDC_SUBSET_ENABLE=3Dy
CONFIG_USB_NET_CDC_SUBSET=3Dy
CONFIG_USB_ALI_M5632=3Dy
CONFIG_USB_AN2720=3Dy
CONFIG_USB_BELKIN=3Dy
CONFIG_USB_ARMLINUX=3Dy
CONFIG_USB_EPSON2888=3Dy
CONFIG_USB_KC2190=3Dy
CONFIG_USB_NET_ZAURUS=3Dy
CONFIG_USB_NET_CX82310_ETH=3Dy
CONFIG_USB_NET_KALMIA=3Dy
CONFIG_USB_NET_QMI_WWAN=3Dy
CONFIG_USB_HSO=3Dy
CONFIG_USB_NET_INT51X1=3Dy
CONFIG_USB_CDC_PHONET=3Dy
CONFIG_USB_IPHETH=3Dy
CONFIG_USB_SIERRA_NET=3Dy
CONFIG_USB_VL600=3Dy
CONFIG_USB_NET_CH9200=3Dy
CONFIG_USB_NET_AQC111=3Dy
CONFIG_USB_RTL8153_ECM=3Dy
CONFIG_WLAN=3Dy
CONFIG_WLAN_VENDOR_ADMTEK=3Dy
# CONFIG_ADM8211 is not set
CONFIG_ATH_COMMON=3Dy
CONFIG_WLAN_VENDOR_ATH=3Dy
# CONFIG_ATH_DEBUG is not set
# CONFIG_ATH5K is not set
# CONFIG_ATH5K_PCI is not set
CONFIG_ATH9K_HW=3Dy
CONFIG_ATH9K_COMMON=3Dy
CONFIG_ATH9K_COMMON_DEBUG=3Dy
CONFIG_ATH9K_BTCOEX_SUPPORT=3Dy
CONFIG_ATH9K=3Dy
CONFIG_ATH9K_PCI=3Dy
CONFIG_ATH9K_AHB=3Dy
CONFIG_ATH9K_DEBUGFS=3Dy
# CONFIG_ATH9K_STATION_STATISTICS is not set
CONFIG_ATH9K_DYNACK=3Dy
# CONFIG_ATH9K_WOW is not set
CONFIG_ATH9K_RFKILL=3Dy
CONFIG_ATH9K_CHANNEL_CONTEXT=3Dy
CONFIG_ATH9K_PCOEM=3Dy
# CONFIG_ATH9K_PCI_NO_EEPROM is not set
CONFIG_ATH9K_HTC=3Dy
CONFIG_ATH9K_HTC_DEBUGFS=3Dy
# CONFIG_ATH9K_HWRNG is not set
CONFIG_ATH9K_COMMON_SPECTRAL=3Dy
CONFIG_CARL9170=3Dy
CONFIG_CARL9170_LEDS=3Dy
# CONFIG_CARL9170_DEBUGFS is not set
CONFIG_CARL9170_WPC=3Dy
CONFIG_CARL9170_HWRNG=3Dy
CONFIG_ATH6KL=3Dy
# CONFIG_ATH6KL_SDIO is not set
CONFIG_ATH6KL_USB=3Dy
# CONFIG_ATH6KL_DEBUG is not set
# CONFIG_ATH6KL_TRACING is not set
CONFIG_AR5523=3Dy
# CONFIG_WIL6210 is not set
CONFIG_ATH10K=3Dy
CONFIG_ATH10K_CE=3Dy
CONFIG_ATH10K_PCI=3Dy
# CONFIG_ATH10K_AHB is not set
# CONFIG_ATH10K_SDIO is not set
CONFIG_ATH10K_USB=3Dy
# CONFIG_ATH10K_DEBUG is not set
# CONFIG_ATH10K_DEBUGFS is not set
CONFIG_ATH10K_LEDS=3Dy
# CONFIG_ATH10K_TRACING is not set
# CONFIG_WCN36XX is not set
CONFIG_ATH11K=3Dy
# CONFIG_ATH11K_PCI is not set
# CONFIG_ATH11K_DEBUG is not set
# CONFIG_ATH11K_DEBUGFS is not set
# CONFIG_ATH11K_TRACING is not set
# CONFIG_ATH12K is not set
# CONFIG_WLAN_VENDOR_ATMEL is not set
# CONFIG_WLAN_VENDOR_BROADCOM is not set
# CONFIG_WLAN_VENDOR_INTEL is not set
# CONFIG_WLAN_VENDOR_INTERSIL is not set
# CONFIG_WLAN_VENDOR_MARVELL is not set
# CONFIG_WLAN_VENDOR_MEDIATEK is not set
# CONFIG_WLAN_VENDOR_MICROCHIP is not set
CONFIG_WLAN_VENDOR_PURELIFI=3Dy
CONFIG_PLFXLC=3Dy
# CONFIG_WLAN_VENDOR_RALINK is not set
# CONFIG_WLAN_VENDOR_REALTEK is not set
# CONFIG_WLAN_VENDOR_RSI is not set
CONFIG_WLAN_VENDOR_SILABS=3Dy
# CONFIG_WFX is not set
# CONFIG_WLAN_VENDOR_ST is not set
# CONFIG_WLAN_VENDOR_TI is not set
# CONFIG_WLAN_VENDOR_ZYDAS is not set
# CONFIG_WLAN_VENDOR_QUANTENNA is not set
CONFIG_MAC80211_HWSIM=3Dy
CONFIG_VIRT_WIFI=3Dy
CONFIG_WAN=3Dy
CONFIG_HDLC=3Dy
CONFIG_HDLC_RAW=3Dy
CONFIG_HDLC_RAW_ETH=3Dy
CONFIG_HDLC_CISCO=3Dy
CONFIG_HDLC_FR=3Dy
CONFIG_HDLC_PPP=3Dy
CONFIG_HDLC_X25=3Dy
# CONFIG_FRAMER is not set
# CONFIG_PCI200SYN is not set
# CONFIG_WANXL is not set
# CONFIG_PC300TOO is not set
# CONFIG_FARSYNC is not set
CONFIG_LAPBETHER=3Dy
CONFIG_IEEE802154_DRIVERS=3Dy
# CONFIG_IEEE802154_FAKELB is not set
# CONFIG_IEEE802154_AT86RF230 is not set
# CONFIG_IEEE802154_MRF24J40 is not set
# CONFIG_IEEE802154_CC2520 is not set
CONFIG_IEEE802154_ATUSB=3Dy
# CONFIG_IEEE802154_ADF7242 is not set
# CONFIG_IEEE802154_CA8210 is not set
# CONFIG_IEEE802154_MCR20A is not set
CONFIG_IEEE802154_HWSIM=3Dy

#
# Wireless WAN
#
CONFIG_WWAN=3Dy
# CONFIG_WWAN_DEBUGFS is not set
# CONFIG_WWAN_HWSIM is not set
CONFIG_MHI_WWAN_CTRL=3Dy
# CONFIG_MHI_WWAN_MBIM is not set
# CONFIG_IOSM is not set
# CONFIG_MTK_T7XX is not set
# end of Wireless WAN

CONFIG_VMXNET3=3Dy
# CONFIG_FUJITSU_ES is not set
CONFIG_USB4_NET=3Dy
CONFIG_NETDEVSIM=3Dy
CONFIG_NET_FAILOVER=3Dy
CONFIG_ISDN=3Dy
CONFIG_ISDN_CAPI=3Dy
CONFIG_MISDN=3Dy
CONFIG_MISDN_DSP=3Dy
CONFIG_MISDN_L1OIP=3Dy

#
# mISDN hardware drivers
#
# CONFIG_MISDN_HFCPCI is not set
# CONFIG_MISDN_HFCMULTI is not set
CONFIG_MISDN_HFCUSB=3Dy
# CONFIG_MISDN_AVMFRITZ is not set
# CONFIG_MISDN_SPEEDFAX is not set
# CONFIG_MISDN_INFINEON is not set
# CONFIG_MISDN_W6692 is not set
# CONFIG_MISDN_NETJET is not set

#
# Input device support
#
CONFIG_INPUT=3Dy
CONFIG_INPUT_LEDS=3Dy
CONFIG_INPUT_FF_MEMLESS=3Dy
CONFIG_INPUT_SPARSEKMAP=3Dy
# CONFIG_INPUT_MATRIXKMAP is not set
CONFIG_INPUT_VIVALDIFMAP=3Dy

#
# Userland interfaces
#
CONFIG_INPUT_MOUSEDEV=3Dy
CONFIG_INPUT_MOUSEDEV_PSAUX=3Dy
CONFIG_INPUT_MOUSEDEV_SCREEN_X=3D1024
CONFIG_INPUT_MOUSEDEV_SCREEN_Y=3D768
CONFIG_INPUT_JOYDEV=3Dy
CONFIG_INPUT_EVDEV=3Dy
# CONFIG_INPUT_EVBUG is not set

#
# Input Device Drivers
#
CONFIG_INPUT_KEYBOARD=3Dy
# CONFIG_KEYBOARD_ADC is not set
# CONFIG_KEYBOARD_ADP5588 is not set
# CONFIG_KEYBOARD_ADP5589 is not set
CONFIG_KEYBOARD_ATKBD=3Dy
# CONFIG_KEYBOARD_QT1050 is not set
# CONFIG_KEYBOARD_QT1070 is not set
# CONFIG_KEYBOARD_QT2160 is not set
# CONFIG_KEYBOARD_DLINK_DIR685 is not set
# CONFIG_KEYBOARD_LKKBD is not set
# CONFIG_KEYBOARD_GPIO is not set
# CONFIG_KEYBOARD_GPIO_POLLED is not set
# CONFIG_KEYBOARD_TCA6416 is not set
# CONFIG_KEYBOARD_TCA8418 is not set
# CONFIG_KEYBOARD_MATRIX is not set
# CONFIG_KEYBOARD_LM8323 is not set
# CONFIG_KEYBOARD_LM8333 is not set
# CONFIG_KEYBOARD_MAX7359 is not set
# CONFIG_KEYBOARD_MPR121 is not set
# CONFIG_KEYBOARD_NEWTON is not set
# CONFIG_KEYBOARD_OPENCORES is not set
# CONFIG_KEYBOARD_PINEPHONE is not set
# CONFIG_KEYBOARD_SAMSUNG is not set
# CONFIG_KEYBOARD_STOWAWAY is not set
# CONFIG_KEYBOARD_SUNKBD is not set
# CONFIG_KEYBOARD_OMAP4 is not set
# CONFIG_KEYBOARD_TM2_TOUCHKEY is not set
# CONFIG_KEYBOARD_TWL4030 is not set
# CONFIG_KEYBOARD_XTKBD is not set
# CONFIG_KEYBOARD_CAP11XX is not set
# CONFIG_KEYBOARD_BCM is not set
# CONFIG_KEYBOARD_CYPRESS_SF is not set
CONFIG_INPUT_MOUSE=3Dy
CONFIG_MOUSE_PS2=3Dy
CONFIG_MOUSE_PS2_ALPS=3Dy
CONFIG_MOUSE_PS2_BYD=3Dy
CONFIG_MOUSE_PS2_LOGIPS2PP=3Dy
CONFIG_MOUSE_PS2_SYNAPTICS=3Dy
CONFIG_MOUSE_PS2_SYNAPTICS_SMBUS=3Dy
CONFIG_MOUSE_PS2_CYPRESS=3Dy
CONFIG_MOUSE_PS2_LIFEBOOK=3Dy
CONFIG_MOUSE_PS2_TRACKPOINT=3Dy
# CONFIG_MOUSE_PS2_ELANTECH is not set
# CONFIG_MOUSE_PS2_SENTELIC is not set
# CONFIG_MOUSE_PS2_TOUCHKIT is not set
CONFIG_MOUSE_PS2_FOCALTECH=3Dy
# CONFIG_MOUSE_PS2_VMMOUSE is not set
CONFIG_MOUSE_PS2_SMBUS=3Dy
# CONFIG_MOUSE_SERIAL is not set
CONFIG_MOUSE_APPLETOUCH=3Dy
CONFIG_MOUSE_BCM5974=3Dy
# CONFIG_MOUSE_CYAPA is not set
# CONFIG_MOUSE_ELAN_I2C is not set
# CONFIG_MOUSE_VSXXXAA is not set
# CONFIG_MOUSE_GPIO is not set
# CONFIG_MOUSE_SYNAPTICS_I2C is not set
CONFIG_MOUSE_SYNAPTICS_USB=3Dy
CONFIG_INPUT_JOYSTICK=3Dy
# CONFIG_JOYSTICK_ANALOG is not set
# CONFIG_JOYSTICK_A3D is not set
# CONFIG_JOYSTICK_ADC is not set
# CONFIG_JOYSTICK_ADI is not set
# CONFIG_JOYSTICK_COBRA is not set
# CONFIG_JOYSTICK_GF2K is not set
# CONFIG_JOYSTICK_GRIP is not set
# CONFIG_JOYSTICK_GRIP_MP is not set
# CONFIG_JOYSTICK_GUILLEMOT is not set
# CONFIG_JOYSTICK_INTERACT is not set
# CONFIG_JOYSTICK_SIDEWINDER is not set
# CONFIG_JOYSTICK_TMDC is not set
CONFIG_JOYSTICK_IFORCE=3Dy
CONFIG_JOYSTICK_IFORCE_USB=3Dy
# CONFIG_JOYSTICK_IFORCE_232 is not set
# CONFIG_JOYSTICK_WARRIOR is not set
# CONFIG_JOYSTICK_MAGELLAN is not set
# CONFIG_JOYSTICK_SPACEORB is not set
# CONFIG_JOYSTICK_SPACEBALL is not set
# CONFIG_JOYSTICK_STINGER is not set
# CONFIG_JOYSTICK_TWIDJOY is not set
# CONFIG_JOYSTICK_ZHENHUA is not set
# CONFIG_JOYSTICK_DB9 is not set
# CONFIG_JOYSTICK_GAMECON is not set
# CONFIG_JOYSTICK_TURBOGRAFX is not set
# CONFIG_JOYSTICK_AS5011 is not set
# CONFIG_JOYSTICK_JOYDUMP is not set
CONFIG_JOYSTICK_XPAD=3Dy
CONFIG_JOYSTICK_XPAD_FF=3Dy
CONFIG_JOYSTICK_XPAD_LEDS=3Dy
# CONFIG_JOYSTICK_WALKERA0701 is not set
# CONFIG_JOYSTICK_PSXPAD_SPI is not set
CONFIG_JOYSTICK_PXRC=3Dy
# CONFIG_JOYSTICK_QWIIC is not set
# CONFIG_JOYSTICK_FSIA6B is not set
# CONFIG_JOYSTICK_SENSEHAT is not set
# CONFIG_JOYSTICK_SEESAW is not set
CONFIG_INPUT_TABLET=3Dy
CONFIG_TABLET_USB_ACECAD=3Dy
CONFIG_TABLET_USB_AIPTEK=3Dy
CONFIG_TABLET_USB_HANWANG=3Dy
CONFIG_TABLET_USB_KBTAB=3Dy
CONFIG_TABLET_USB_PEGASUS=3Dy
# CONFIG_TABLET_SERIAL_WACOM4 is not set
CONFIG_INPUT_TOUCHSCREEN=3Dy
# CONFIG_TOUCHSCREEN_ADS7846 is not set
# CONFIG_TOUCHSCREEN_AD7877 is not set
# CONFIG_TOUCHSCREEN_AD7879 is not set
# CONFIG_TOUCHSCREEN_ADC is not set
# CONFIG_TOUCHSCREEN_AR1021_I2C is not set
# CONFIG_TOUCHSCREEN_ATMEL_MXT is not set
# CONFIG_TOUCHSCREEN_AUO_PIXCIR is not set
# CONFIG_TOUCHSCREEN_BU21013 is not set
# CONFIG_TOUCHSCREEN_BU21029 is not set
# CONFIG_TOUCHSCREEN_CHIPONE_ICN8318 is not set
# CONFIG_TOUCHSCREEN_CHIPONE_ICN8505 is not set
# CONFIG_TOUCHSCREEN_CY8CTMA140 is not set
# CONFIG_TOUCHSCREEN_CY8CTMG110 is not set
# CONFIG_TOUCHSCREEN_CYTTSP_CORE is not set
# CONFIG_TOUCHSCREEN_CYTTSP5 is not set
# CONFIG_TOUCHSCREEN_DYNAPRO is not set
# CONFIG_TOUCHSCREEN_HAMPSHIRE is not set
# CONFIG_TOUCHSCREEN_EETI is not set
# CONFIG_TOUCHSCREEN_EGALAX is not set
# CONFIG_TOUCHSCREEN_EGALAX_SERIAL is not set
# CONFIG_TOUCHSCREEN_EXC3000 is not set
# CONFIG_TOUCHSCREEN_FUJITSU is not set
# CONFIG_TOUCHSCREEN_GOODIX is not set
# CONFIG_TOUCHSCREEN_GOODIX_BERLIN_I2C is not set
# CONFIG_TOUCHSCREEN_GOODIX_BERLIN_SPI is not set
# CONFIG_TOUCHSCREEN_HIDEEP is not set
# CONFIG_TOUCHSCREEN_HYCON_HY46XX is not set
# CONFIG_TOUCHSCREEN_HYNITRON_CSTXXX is not set
# CONFIG_TOUCHSCREEN_ILI210X is not set
# CONFIG_TOUCHSCREEN_ILITEK is not set
# CONFIG_TOUCHSCREEN_S6SY761 is not set
# CONFIG_TOUCHSCREEN_GUNZE is not set
# CONFIG_TOUCHSCREEN_EKTF2127 is not set
# CONFIG_TOUCHSCREEN_ELAN is not set
# CONFIG_TOUCHSCREEN_ELO is not set
# CONFIG_TOUCHSCREEN_WACOM_W8001 is not set
# CONFIG_TOUCHSCREEN_WACOM_I2C is not set
# CONFIG_TOUCHSCREEN_MAX11801 is not set
# CONFIG_TOUCHSCREEN_MMS114 is not set
# CONFIG_TOUCHSCREEN_MELFAS_MIP4 is not set
# CONFIG_TOUCHSCREEN_MSG2638 is not set
# CONFIG_TOUCHSCREEN_MTOUCH is not set
# CONFIG_TOUCHSCREEN_NOVATEK_NVT_TS is not set
# CONFIG_TOUCHSCREEN_IMAGIS is not set
# CONFIG_TOUCHSCREEN_IMX6UL_TSC is not set
# CONFIG_TOUCHSCREEN_INEXIO is not set
# CONFIG_TOUCHSCREEN_PENMOUNT is not set
# CONFIG_TOUCHSCREEN_EDT_FT5X06 is not set
# CONFIG_TOUCHSCREEN_TOUCHRIGHT is not set
# CONFIG_TOUCHSCREEN_TOUCHWIN is not set
# CONFIG_TOUCHSCREEN_PIXCIR is not set
# CONFIG_TOUCHSCREEN_WDT87XX_I2C is not set
CONFIG_TOUCHSCREEN_USB_COMPOSITE=3Dy
CONFIG_TOUCHSCREEN_USB_EGALAX=3Dy
CONFIG_TOUCHSCREEN_USB_PANJIT=3Dy
CONFIG_TOUCHSCREEN_USB_3M=3Dy
CONFIG_TOUCHSCREEN_USB_ITM=3Dy
CONFIG_TOUCHSCREEN_USB_ETURBO=3Dy
CONFIG_TOUCHSCREEN_USB_GUNZE=3Dy
CONFIG_TOUCHSCREEN_USB_DMC_TSC10=3Dy
CONFIG_TOUCHSCREEN_USB_IRTOUCH=3Dy
CONFIG_TOUCHSCREEN_USB_IDEALTEK=3Dy
CONFIG_TOUCHSCREEN_USB_GENERAL_TOUCH=3Dy
CONFIG_TOUCHSCREEN_USB_GOTOP=3Dy
CONFIG_TOUCHSCREEN_USB_JASTEC=3Dy
CONFIG_TOUCHSCREEN_USB_ELO=3Dy
CONFIG_TOUCHSCREEN_USB_E2I=3Dy
CONFIG_TOUCHSCREEN_USB_ZYTRONIC=3Dy
CONFIG_TOUCHSCREEN_USB_ETT_TC45USB=3Dy
CONFIG_TOUCHSCREEN_USB_NEXIO=3Dy
CONFIG_TOUCHSCREEN_USB_EASYTOUCH=3Dy
# CONFIG_TOUCHSCREEN_TOUCHIT213 is not set
# CONFIG_TOUCHSCREEN_TSC_SERIO is not set
# CONFIG_TOUCHSCREEN_TSC2004 is not set
# CONFIG_TOUCHSCREEN_TSC2005 is not set
# CONFIG_TOUCHSCREEN_TSC2007 is not set
# CONFIG_TOUCHSCREEN_RM_TS is not set
# CONFIG_TOUCHSCREEN_SILEAD is not set
# CONFIG_TOUCHSCREEN_SIS_I2C is not set
# CONFIG_TOUCHSCREEN_ST1232 is not set
# CONFIG_TOUCHSCREEN_STMFTS is not set
CONFIG_TOUCHSCREEN_SUR40=3Dy
# CONFIG_TOUCHSCREEN_SURFACE3_SPI is not set
# CONFIG_TOUCHSCREEN_SX8654 is not set
# CONFIG_TOUCHSCREEN_TPS6507X is not set
# CONFIG_TOUCHSCREEN_ZET6223 is not set
# CONFIG_TOUCHSCREEN_ZFORCE is not set
# CONFIG_TOUCHSCREEN_COLIBRI_VF50 is not set
# CONFIG_TOUCHSCREEN_ROHM_BU21023 is not set
# CONFIG_TOUCHSCREEN_IQS5XX is not set
# CONFIG_TOUCHSCREEN_IQS7211 is not set
# CONFIG_TOUCHSCREEN_ZINITIX is not set
# CONFIG_TOUCHSCREEN_HIMAX_HX83112B is not set
CONFIG_INPUT_MISC=3Dy
# CONFIG_INPUT_AD714X is not set
# CONFIG_INPUT_ATMEL_CAPTOUCH is not set
# CONFIG_INPUT_BMA150 is not set
# CONFIG_INPUT_E3X0_BUTTON is not set
# CONFIG_INPUT_PCSPKR is not set
# CONFIG_INPUT_MMA8450 is not set
# CONFIG_INPUT_APANEL is not set
# CONFIG_INPUT_GPIO_BEEPER is not set
# CONFIG_INPUT_GPIO_DECODER is not set
# CONFIG_INPUT_GPIO_VIBRA is not set
# CONFIG_INPUT_ATLAS_BTNS is not set
CONFIG_INPUT_ATI_REMOTE2=3Dy
CONFIG_INPUT_KEYSPAN_REMOTE=3Dy
# CONFIG_INPUT_KXTJ9 is not set
CONFIG_INPUT_POWERMATE=3Dy
CONFIG_INPUT_YEALINK=3Dy
CONFIG_INPUT_CM109=3Dy
# CONFIG_INPUT_REGULATOR_HAPTIC is not set
# CONFIG_INPUT_RETU_PWRBUTTON is not set
# CONFIG_INPUT_TWL4030_PWRBUTTON is not set
# CONFIG_INPUT_TWL4030_VIBRA is not set
CONFIG_INPUT_UINPUT=3Dy
# CONFIG_INPUT_PCF8574 is not set
# CONFIG_INPUT_GPIO_ROTARY_ENCODER is not set
# CONFIG_INPUT_DA7280_HAPTICS is not set
# CONFIG_INPUT_ADXL34X is not set
# CONFIG_INPUT_IBM_PANEL is not set
CONFIG_INPUT_IMS_PCU=3Dy
# CONFIG_INPUT_IQS269A is not set
# CONFIG_INPUT_IQS626A is not set
# CONFIG_INPUT_IQS7222 is not set
# CONFIG_INPUT_CMA3000 is not set
# CONFIG_INPUT_IDEAPAD_SLIDEBAR is not set
# CONFIG_INPUT_DRV260X_HAPTICS is not set
# CONFIG_INPUT_DRV2665_HAPTICS is not set
# CONFIG_INPUT_DRV2667_HAPTICS is not set
CONFIG_RMI4_CORE=3Dy
# CONFIG_RMI4_I2C is not set
# CONFIG_RMI4_SPI is not set
# CONFIG_RMI4_SMB is not set
CONFIG_RMI4_F03=3Dy
CONFIG_RMI4_F03_SERIO=3Dy
CONFIG_RMI4_2D_SENSOR=3Dy
CONFIG_RMI4_F11=3Dy
CONFIG_RMI4_F12=3Dy
CONFIG_RMI4_F30=3Dy
# CONFIG_RMI4_F34 is not set
CONFIG_RMI4_F3A=3Dy
# CONFIG_RMI4_F54 is not set
# CONFIG_RMI4_F55 is not set

#
# Hardware I/O ports
#
CONFIG_SERIO=3Dy
CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=3Dy
CONFIG_SERIO_I8042=3Dy
CONFIG_SERIO_SERPORT=3Dy
# CONFIG_SERIO_CT82C710 is not set
# CONFIG_SERIO_PARKBD is not set
# CONFIG_SERIO_PCIPS2 is not set
CONFIG_SERIO_LIBPS2=3Dy
# CONFIG_SERIO_RAW is not set
# CONFIG_SERIO_ALTERA_PS2 is not set
# CONFIG_SERIO_PS2MULT is not set
# CONFIG_SERIO_ARC_PS2 is not set
# CONFIG_SERIO_APBPS2 is not set
# CONFIG_SERIO_GPIO_PS2 is not set
CONFIG_USERIO=3Dy
# CONFIG_GAMEPORT is not set
# end of Hardware I/O ports
# end of Input device support

#
# Character devices
#
CONFIG_TTY=3Dy
CONFIG_VT=3Dy
CONFIG_CONSOLE_TRANSLATIONS=3Dy
CONFIG_VT_CONSOLE=3Dy
CONFIG_VT_CONSOLE_SLEEP=3Dy
CONFIG_VT_HW_CONSOLE_BINDING=3Dy
CONFIG_UNIX98_PTYS=3Dy
CONFIG_LEGACY_PTYS=3Dy
CONFIG_LEGACY_PTY_COUNT=3D256
CONFIG_LEGACY_TIOCSTI=3Dy
CONFIG_LDISC_AUTOLOAD=3Dy

#
# Serial drivers
#
CONFIG_SERIAL_EARLYCON=3Dy
CONFIG_SERIAL_8250=3Dy
CONFIG_SERIAL_8250_DEPRECATED_OPTIONS=3Dy
CONFIG_SERIAL_8250_PNP=3Dy
# CONFIG_SERIAL_8250_16550A_VARIANTS is not set
# CONFIG_SERIAL_8250_FINTEK is not set
CONFIG_SERIAL_8250_CONSOLE=3Dy
CONFIG_SERIAL_8250_DMA=3Dy
CONFIG_SERIAL_8250_PCILIB=3Dy
CONFIG_SERIAL_8250_PCI=3Dy
# CONFIG_SERIAL_8250_EXAR is not set
# CONFIG_SERIAL_8250_CS is not set
CONFIG_SERIAL_8250_NR_UARTS=3D32
CONFIG_SERIAL_8250_RUNTIME_UARTS=3D4
CONFIG_SERIAL_8250_EXTENDED=3Dy
CONFIG_SERIAL_8250_MANY_PORTS=3Dy
# CONFIG_SERIAL_8250_PCI1XXXX is not set
CONFIG_SERIAL_8250_SHARE_IRQ=3Dy
CONFIG_SERIAL_8250_DETECT_IRQ=3Dy
CONFIG_SERIAL_8250_RSA=3Dy
CONFIG_SERIAL_8250_DWLIB=3Dy
# CONFIG_SERIAL_8250_DW is not set
# CONFIG_SERIAL_8250_RT288X is not set
CONFIG_SERIAL_8250_LPSS=3Dy
CONFIG_SERIAL_8250_MID=3Dy
CONFIG_SERIAL_8250_PERICOM=3Dy
# CONFIG_SERIAL_OF_PLATFORM is not set

#
# Non-8250 serial port support
#
# CONFIG_SERIAL_MAX3100 is not set
# CONFIG_SERIAL_MAX310X is not set
# CONFIG_SERIAL_UARTLITE is not set
CONFIG_SERIAL_CORE=3Dy
CONFIG_SERIAL_CORE_CONSOLE=3Dy
# CONFIG_SERIAL_JSM is not set
# CONFIG_SERIAL_SIFIVE is not set
# CONFIG_SERIAL_LANTIQ is not set
# CONFIG_SERIAL_SCCNXP is not set
# CONFIG_SERIAL_SC16IS7XX is not set
# CONFIG_SERIAL_ALTERA_JTAGUART is not set
# CONFIG_SERIAL_ALTERA_UART is not set
# CONFIG_SERIAL_XILINX_PS_UART is not set
# CONFIG_SERIAL_ARC is not set
# CONFIG_SERIAL_RP2 is not set
# CONFIG_SERIAL_FSL_LPUART is not set
# CONFIG_SERIAL_FSL_LINFLEXUART is not set
# CONFIG_SERIAL_CONEXANT_DIGICOLOR is not set
# CONFIG_SERIAL_SPRD is not set
# end of Serial drivers

CONFIG_SERIAL_MCTRL_GPIO=3Dy
CONFIG_SERIAL_NONSTANDARD=3Dy
# CONFIG_MOXA_INTELLIO is not set
# CONFIG_MOXA_SMARTIO is not set
CONFIG_N_HDLC=3Dy
# CONFIG_IPWIRELESS is not set
CONFIG_N_GSM=3Dy
CONFIG_NOZOMI=3Dy
CONFIG_NULL_TTY=3Dy
CONFIG_HVC_DRIVER=3Dy
CONFIG_SERIAL_DEV_BUS=3Dy
CONFIG_SERIAL_DEV_CTRL_TTYPORT=3Dy
CONFIG_TTY_PRINTK=3Dy
CONFIG_TTY_PRINTK_LEVEL=3D6
# CONFIG_PRINTER is not set
# CONFIG_PPDEV is not set
CONFIG_VIRTIO_CONSOLE=3Dy
# CONFIG_IPMI_HANDLER is not set
# CONFIG_SSIF_IPMI_BMC is not set
# CONFIG_IPMB_DEVICE_INTERFACE is not set
CONFIG_HW_RANDOM=3Dy
# CONFIG_HW_RANDOM_TIMERIOMEM is not set
# CONFIG_HW_RANDOM_INTEL is not set
# CONFIG_HW_RANDOM_AMD is not set
# CONFIG_HW_RANDOM_BA431 is not set
# CONFIG_HW_RANDOM_VIA is not set
CONFIG_HW_RANDOM_VIRTIO=3Dy
# CONFIG_HW_RANDOM_CCTRNG is not set
# CONFIG_HW_RANDOM_XIPHERA is not set
# CONFIG_APPLICOM is not set
# CONFIG_MWAVE is not set
# CONFIG_DEVMEM is not set
CONFIG_NVRAM=3Dy
# CONFIG_DEVPORT is not set
CONFIG_HPET=3Dy
CONFIG_HPET_MMAP=3Dy
CONFIG_HPET_MMAP_DEFAULT=3Dy
# CONFIG_HANGCHECK_TIMER is not set
CONFIG_TCG_TPM=3Dy
# CONFIG_TCG_TPM2_HMAC is not set
# CONFIG_HW_RANDOM_TPM is not set
CONFIG_TCG_TIS_CORE=3Dy
CONFIG_TCG_TIS=3Dy
# CONFIG_TCG_TIS_SPI is not set
# CONFIG_TCG_TIS_I2C is not set
# CONFIG_TCG_TIS_I2C_CR50 is not set
# CONFIG_TCG_TIS_I2C_ATMEL is not set
# CONFIG_TCG_TIS_I2C_INFINEON is not set
# CONFIG_TCG_TIS_I2C_NUVOTON is not set
# CONFIG_TCG_NSC is not set
# CONFIG_TCG_ATMEL is not set
# CONFIG_TCG_INFINEON is not set
CONFIG_TCG_CRB=3Dy
# CONFIG_TCG_VTPM_PROXY is not set
# CONFIG_TCG_TIS_ST33ZP24_I2C is not set
# CONFIG_TCG_TIS_ST33ZP24_SPI is not set
# CONFIG_TELCLOCK is not set
CONFIG_XILLYBUS_CLASS=3Dy
# CONFIG_XILLYBUS is not set
CONFIG_XILLYUSB=3Dy
# end of Character devices

#
# I2C support
#
CONFIG_I2C=3Dy
CONFIG_ACPI_I2C_OPREGION=3Dy
CONFIG_I2C_BOARDINFO=3Dy
CONFIG_I2C_CHARDEV=3Dy
CONFIG_I2C_MUX=3Dy

#
# Multiplexer I2C Chip support
#
# CONFIG_I2C_ARB_GPIO_CHALLENGE is not set
# CONFIG_I2C_MUX_GPIO is not set
# CONFIG_I2C_MUX_GPMUX is not set
# CONFIG_I2C_MUX_LTC4306 is not set
# CONFIG_I2C_MUX_PCA9541 is not set
# CONFIG_I2C_MUX_PCA954x is not set
CONFIG_I2C_MUX_REG=3Dy
# CONFIG_I2C_MUX_MLXCPLD is not set
# end of Multiplexer I2C Chip support

CONFIG_I2C_HELPER_AUTO=3Dy
CONFIG_I2C_SMBUS=3Dy
CONFIG_I2C_ALGOBIT=3Dy

#
# I2C Hardware Bus support
#

#
# PC SMBus host controller drivers
#
# CONFIG_I2C_ALI1535 is not set
# CONFIG_I2C_ALI1563 is not set
# CONFIG_I2C_ALI15X3 is not set
# CONFIG_I2C_AMD756 is not set
# CONFIG_I2C_AMD8111 is not set
# CONFIG_I2C_AMD_MP2 is not set
CONFIG_I2C_I801=3Dy
# CONFIG_I2C_ISCH is not set
# CONFIG_I2C_ISMT is not set
# CONFIG_I2C_PIIX4 is not set
# CONFIG_I2C_CHT_WC is not set
# CONFIG_I2C_NFORCE2 is not set
# CONFIG_I2C_NVIDIA_GPU is not set
# CONFIG_I2C_SIS5595 is not set
# CONFIG_I2C_SIS630 is not set
# CONFIG_I2C_SIS96X is not set
# CONFIG_I2C_VIA is not set
# CONFIG_I2C_VIAPRO is not set
# CONFIG_I2C_ZHAOXIN is not set

#
# ACPI drivers
#
# CONFIG_I2C_SCMI is not set

#
# I2C system bus drivers (mostly embedded / system-on-chip)
#
# CONFIG_I2C_CBUS_GPIO is not set
CONFIG_I2C_DESIGNWARE_CORE=3Dy
# CONFIG_I2C_DESIGNWARE_SLAVE is not set
CONFIG_I2C_DESIGNWARE_PLATFORM=3Dy
# CONFIG_I2C_DESIGNWARE_BAYTRAIL is not set
# CONFIG_I2C_DESIGNWARE_PCI is not set
# CONFIG_I2C_EMEV2 is not set
# CONFIG_I2C_GPIO is not set
# CONFIG_I2C_OCORES is not set
# CONFIG_I2C_PCA_PLATFORM is not set
# CONFIG_I2C_RK3X is not set
# CONFIG_I2C_SIMTEC is not set
# CONFIG_I2C_XILINX is not set

#
# External I2C/SMBus adapter drivers
#
CONFIG_I2C_DIOLAN_U2C=3Dy
CONFIG_I2C_DLN2=3Dy
CONFIG_I2C_LJCA=3Dy
CONFIG_I2C_CP2615=3Dy
# CONFIG_I2C_PARPORT is not set
# CONFIG_I2C_PCI1XXXX is not set
CONFIG_I2C_ROBOTFUZZ_OSIF=3Dy
# CONFIG_I2C_TAOS_EVM is not set
CONFIG_I2C_TINY_USB=3Dy
CONFIG_I2C_VIPERBOARD=3Dy

#
# Other I2C/SMBus bus drivers
#
# CONFIG_I2C_MLXCPLD is not set
# CONFIG_I2C_VIRTIO is not set
# end of I2C Hardware Bus support

# CONFIG_I2C_STUB is not set
CONFIG_I2C_SLAVE=3Dy
CONFIG_I2C_SLAVE_EEPROM=3Dy
# CONFIG_I2C_SLAVE_TESTUNIT is not set
# CONFIG_I2C_DEBUG_CORE is not set
# CONFIG_I2C_DEBUG_ALGO is not set
# CONFIG_I2C_DEBUG_BUS is not set
# end of I2C support

# CONFIG_I3C is not set
CONFIG_SPI=3Dy
# CONFIG_SPI_DEBUG is not set
CONFIG_SPI_MASTER=3Dy
# CONFIG_SPI_MEM is not set

#
# SPI Master Controller Drivers
#
# CONFIG_SPI_ALTERA is not set
# CONFIG_SPI_AXI_SPI_ENGINE is not set
# CONFIG_SPI_BITBANG is not set
# CONFIG_SPI_BUTTERFLY is not set
# CONFIG_SPI_CADENCE is not set
# CONFIG_SPI_CADENCE_QUADSPI is not set
# CONFIG_SPI_CH341 is not set
# CONFIG_SPI_DESIGNWARE is not set
CONFIG_SPI_DLN2=3Dy
# CONFIG_SPI_GPIO is not set
# CONFIG_SPI_LM70_LLP is not set
# CONFIG_SPI_FSL_SPI is not set
CONFIG_SPI_LJCA=3Dy
# CONFIG_SPI_MICROCHIP_CORE is not set
# CONFIG_SPI_MICROCHIP_CORE_QSPI is not set
# CONFIG_SPI_LANTIQ_SSC is not set
# CONFIG_SPI_OC_TINY is not set
# CONFIG_SPI_PCI1XXXX is not set
# CONFIG_SPI_PXA2XX is not set
# CONFIG_SPI_SC18IS602 is not set
# CONFIG_SPI_SIFIVE is not set
# CONFIG_SPI_MXIC is not set
# CONFIG_SPI_XCOMM is not set
# CONFIG_SPI_XILINX is not set
# CONFIG_SPI_AMD is not set

#
# SPI Multiplexer support
#
# CONFIG_SPI_MUX is not set

#
# SPI Protocol Masters
#
# CONFIG_SPI_SPIDEV is not set
# CONFIG_SPI_LOOPBACK_TEST is not set
# CONFIG_SPI_TLE62X0 is not set
# CONFIG_SPI_SLAVE is not set
CONFIG_SPI_DYNAMIC=3Dy
# CONFIG_SPMI is not set
# CONFIG_HSI is not set
CONFIG_PPS=3Dy
# CONFIG_PPS_DEBUG is not set

#
# PPS clients support
#
# CONFIG_PPS_CLIENT_KTIMER is not set
# CONFIG_PPS_CLIENT_LDISC is not set
# CONFIG_PPS_CLIENT_PARPORT is not set
# CONFIG_PPS_CLIENT_GPIO is not set

#
# PPS generators support
#

#
# PTP clock support
#
CONFIG_PTP_1588_CLOCK=3Dy
CONFIG_PTP_1588_CLOCK_OPTIONAL=3Dy

#
# Enable PHYLIB and NETWORK_PHY_TIMESTAMPING to see the additional clocks.
#
CONFIG_PTP_1588_CLOCK_KVM=3Dy
CONFIG_PTP_1588_CLOCK_VMCLOCK=3Dy
# CONFIG_PTP_1588_CLOCK_IDT82P33 is not set
# CONFIG_PTP_1588_CLOCK_IDTCM is not set
# CONFIG_PTP_1588_CLOCK_FC3W is not set
# CONFIG_PTP_1588_CLOCK_MOCK is not set
# CONFIG_PTP_1588_CLOCK_VMW is not set
# CONFIG_PTP_1588_CLOCK_OCP is not set
# end of PTP clock support

# CONFIG_PINCTRL is not set
CONFIG_GPIOLIB=3Dy
CONFIG_GPIOLIB_FASTPATH_LIMIT=3D512
CONFIG_OF_GPIO=3Dy
CONFIG_GPIO_ACPI=3Dy
CONFIG_GPIOLIB_IRQCHIP=3Dy
# CONFIG_DEBUG_GPIO is not set
# CONFIG_GPIO_SYSFS is not set
# CONFIG_GPIO_CDEV is not set

#
# Memory mapped GPIO drivers
#
# CONFIG_GPIO_74XX_MMIO is not set
# CONFIG_GPIO_ALTERA is not set
# CONFIG_GPIO_AMDPT is not set
# CONFIG_GPIO_CADENCE is not set
# CONFIG_GPIO_DWAPB is not set
# CONFIG_GPIO_FTGPIO010 is not set
# CONFIG_GPIO_GENERIC_PLATFORM is not set
# CONFIG_GPIO_GRANITERAPIDS is not set
# CONFIG_GPIO_GRGPIO is not set
# CONFIG_GPIO_HLWD is not set
# CONFIG_GPIO_ICH is not set
# CONFIG_GPIO_LOGICVC is not set
# CONFIG_GPIO_MB86S7X is not set
# CONFIG_GPIO_POLARFIRE_SOC is not set
# CONFIG_GPIO_SIFIVE is not set
# CONFIG_GPIO_SYSCON is not set
# CONFIG_GPIO_XILINX is not set
# CONFIG_GPIO_AMD_FCH is not set
# end of Memory mapped GPIO drivers

#
# Port-mapped I/O GPIO drivers
#
# CONFIG_GPIO_VX855 is not set
# CONFIG_GPIO_F7188X is not set
# CONFIG_GPIO_IT87 is not set
# CONFIG_GPIO_SCH311X is not set
# CONFIG_GPIO_WINBOND is not set
# CONFIG_GPIO_WS16C48 is not set
# end of Port-mapped I/O GPIO drivers

#
# I2C GPIO expanders
#
# CONFIG_GPIO_ADNP is not set
# CONFIG_GPIO_FXL6408 is not set
# CONFIG_GPIO_DS4520 is not set
# CONFIG_GPIO_GW_PLD is not set
# CONFIG_GPIO_MAX7300 is not set
# CONFIG_GPIO_MAX732X is not set
# CONFIG_GPIO_PCA953X is not set
# CONFIG_GPIO_PCA9570 is not set
# CONFIG_GPIO_PCF857X is not set
# CONFIG_GPIO_TPIC2810 is not set
# end of I2C GPIO expanders

#
# MFD GPIO expanders
#
CONFIG_GPIO_DLN2=3Dy
# CONFIG_GPIO_ELKHARTLAKE is not set
CONFIG_GPIO_LJCA=3Dy
# CONFIG_GPIO_TWL4030 is not set
# CONFIG_GPIO_WHISKEY_COVE is not set
# end of MFD GPIO expanders

#
# PCI GPIO expanders
#
# CONFIG_GPIO_AMD8111 is not set
# CONFIG_GPIO_BT8XX is not set
# CONFIG_GPIO_ML_IOH is not set
# CONFIG_GPIO_PCI_IDIO_16 is not set
# CONFIG_GPIO_PCIE_IDIO_24 is not set
# CONFIG_GPIO_RDC321X is not set
# CONFIG_GPIO_SODAVILLE is not set
# end of PCI GPIO expanders

#
# SPI GPIO expanders
#
# CONFIG_GPIO_74X164 is not set
# CONFIG_GPIO_MAX3191X is not set
# CONFIG_GPIO_MAX7301 is not set
# CONFIG_GPIO_MC33880 is not set
# CONFIG_GPIO_PISOSR is not set
# CONFIG_GPIO_XRA1403 is not set
# end of SPI GPIO expanders

#
# USB GPIO expanders
#
CONFIG_GPIO_VIPERBOARD=3Dy
# CONFIG_GPIO_MPSSE is not set
# end of USB GPIO expanders

#
# Virtual GPIO drivers
#
# CONFIG_GPIO_AGGREGATOR is not set
# CONFIG_GPIO_LATCH is not set
# CONFIG_GPIO_MOCKUP is not set
# CONFIG_GPIO_VIRTIO is not set
# CONFIG_GPIO_SIM is not set
# end of Virtual GPIO drivers

#
# GPIO Debugging utilities
#
# CONFIG_GPIO_SLOPPY_LOGIC_ANALYZER is not set
# CONFIG_GPIO_VIRTUSER is not set
# end of GPIO Debugging utilities

# CONFIG_W1 is not set
# CONFIG_POWER_RESET is not set
# CONFIG_POWER_SEQUENCING is not set
CONFIG_POWER_SUPPLY=3Dy
# CONFIG_POWER_SUPPLY_DEBUG is not set
CONFIG_POWER_SUPPLY_HWMON=3Dy
# CONFIG_GENERIC_ADC_BATTERY is not set
# CONFIG_IP5XXX_POWER is not set
# CONFIG_TEST_POWER is not set
# CONFIG_CHARGER_ADP5061 is not set
# CONFIG_BATTERY_CW2015 is not set
# CONFIG_BATTERY_DS2780 is not set
# CONFIG_BATTERY_DS2781 is not set
# CONFIG_BATTERY_DS2782 is not set
# CONFIG_BATTERY_SAMSUNG_SDI is not set
# CONFIG_BATTERY_SBS is not set
# CONFIG_CHARGER_SBS is not set
# CONFIG_MANAGER_SBS is not set
# CONFIG_BATTERY_BQ27XXX is not set
# CONFIG_BATTERY_MAX17040 is not set
# CONFIG_BATTERY_MAX17042 is not set
# CONFIG_BATTERY_MAX1720X is not set
CONFIG_CHARGER_ISP1704=3Dy
# CONFIG_CHARGER_MAX8903 is not set
# CONFIG_CHARGER_TWL4030 is not set
# CONFIG_CHARGER_TWL6030 is not set
# CONFIG_CHARGER_LP8727 is not set
# CONFIG_CHARGER_GPIO is not set
# CONFIG_CHARGER_MANAGER is not set
# CONFIG_CHARGER_LT3651 is not set
# CONFIG_CHARGER_LTC4162L is not set
# CONFIG_CHARGER_DETECTOR_MAX14656 is not set
# CONFIG_CHARGER_MAX77976 is not set
# CONFIG_CHARGER_MT6360 is not set
# CONFIG_CHARGER_MT6370 is not set
# CONFIG_CHARGER_BQ2415X is not set
CONFIG_CHARGER_BQ24190=3Dy
# CONFIG_CHARGER_BQ24257 is not set
# CONFIG_CHARGER_BQ24735 is not set
# CONFIG_CHARGER_BQ2515X is not set
# CONFIG_CHARGER_BQ25890 is not set
# CONFIG_CHARGER_BQ25980 is not set
# CONFIG_CHARGER_BQ256XX is not set
# CONFIG_CHARGER_SMB347 is not set
# CONFIG_BATTERY_GAUGE_LTC2941 is not set
# CONFIG_BATTERY_GOLDFISH is not set
# CONFIG_BATTERY_RT5033 is not set
# CONFIG_CHARGER_RT9455 is not set
# CONFIG_CHARGER_RT9467 is not set
# CONFIG_CHARGER_RT9471 is not set
# CONFIG_CHARGER_UCS1002 is not set
# CONFIG_CHARGER_BD99954 is not set
# CONFIG_BATTERY_UG3105 is not set
# CONFIG_FUEL_GAUGE_MM8013 is not set
CONFIG_HWMON=3Dy
# CONFIG_HWMON_DEBUG_CHIP is not set

#
# Native drivers
#
# CONFIG_SENSORS_ABITUGURU is not set
# CONFIG_SENSORS_ABITUGURU3 is not set
# CONFIG_SENSORS_AD7314 is not set
# CONFIG_SENSORS_AD7414 is not set
# CONFIG_SENSORS_AD7418 is not set
# CONFIG_SENSORS_ADM1025 is not set
# CONFIG_SENSORS_ADM1026 is not set
# CONFIG_SENSORS_ADM1029 is not set
# CONFIG_SENSORS_ADM1031 is not set
# CONFIG_SENSORS_ADM1177 is not set
# CONFIG_SENSORS_ADM9240 is not set
# CONFIG_SENSORS_ADT7310 is not set
# CONFIG_SENSORS_ADT7410 is not set
# CONFIG_SENSORS_ADT7411 is not set
# CONFIG_SENSORS_ADT7462 is not set
# CONFIG_SENSORS_ADT7470 is not set
# CONFIG_SENSORS_ADT7475 is not set
# CONFIG_SENSORS_AHT10 is not set
CONFIG_SENSORS_AQUACOMPUTER_D5NEXT=3Dy
# CONFIG_SENSORS_AS370 is not set
# CONFIG_SENSORS_ASC7621 is not set
# CONFIG_SENSORS_ASUS_ROG_RYUJIN is not set
# CONFIG_SENSORS_AXI_FAN_CONTROL is not set
# CONFIG_SENSORS_K8TEMP is not set
# CONFIG_SENSORS_K10TEMP is not set
# CONFIG_SENSORS_FAM15H_POWER is not set
# CONFIG_SENSORS_APPLESMC is not set
# CONFIG_SENSORS_ASB100 is not set
# CONFIG_SENSORS_ATXP1 is not set
# CONFIG_SENSORS_CHIPCAP2 is not set
CONFIG_SENSORS_CORSAIR_CPRO=3Dy
CONFIG_SENSORS_CORSAIR_PSU=3Dy
# CONFIG_SENSORS_DRIVETEMP is not set
# CONFIG_SENSORS_DS620 is not set
# CONFIG_SENSORS_DS1621 is not set
# CONFIG_SENSORS_DELL_SMM is not set
# CONFIG_SENSORS_I5K_AMB is not set
# CONFIG_SENSORS_F71805F is not set
# CONFIG_SENSORS_F71882FG is not set
# CONFIG_SENSORS_F75375S is not set
# CONFIG_SENSORS_FSCHMD is not set
# CONFIG_SENSORS_FTSTEUTATES is not set
CONFIG_SENSORS_GIGABYTE_WATERFORCE=3Dy
# CONFIG_SENSORS_GL518SM is not set
# CONFIG_SENSORS_GL520SM is not set
# CONFIG_SENSORS_G760A is not set
# CONFIG_SENSORS_G762 is not set
# CONFIG_SENSORS_GPIO_FAN is not set
# CONFIG_SENSORS_HIH6130 is not set
# CONFIG_SENSORS_HS3001 is not set
# CONFIG_SENSORS_IIO_HWMON is not set
# CONFIG_SENSORS_I5500 is not set
# CONFIG_SENSORS_CORETEMP is not set
# CONFIG_SENSORS_ISL28022 is not set
# CONFIG_SENSORS_IT87 is not set
# CONFIG_SENSORS_JC42 is not set
CONFIG_SENSORS_POWERZ=3Dy
# CONFIG_SENSORS_POWR1220 is not set
# CONFIG_SENSORS_LENOVO_EC is not set
# CONFIG_SENSORS_LINEAGE is not set
# CONFIG_SENSORS_LTC2945 is not set
# CONFIG_SENSORS_LTC2947_I2C is not set
# CONFIG_SENSORS_LTC2947_SPI is not set
# CONFIG_SENSORS_LTC2990 is not set
# CONFIG_SENSORS_LTC2991 is not set
# CONFIG_SENSORS_LTC2992 is not set
# CONFIG_SENSORS_LTC4151 is not set
# CONFIG_SENSORS_LTC4215 is not set
# CONFIG_SENSORS_LTC4222 is not set
# CONFIG_SENSORS_LTC4245 is not set
# CONFIG_SENSORS_LTC4260 is not set
# CONFIG_SENSORS_LTC4261 is not set
# CONFIG_SENSORS_LTC4282 is not set
# CONFIG_SENSORS_MAX1111 is not set
# CONFIG_SENSORS_MAX127 is not set
# CONFIG_SENSORS_MAX16065 is not set
# CONFIG_SENSORS_MAX1619 is not set
# CONFIG_SENSORS_MAX1668 is not set
# CONFIG_SENSORS_MAX197 is not set
# CONFIG_SENSORS_MAX31722 is not set
# CONFIG_SENSORS_MAX31730 is not set
# CONFIG_SENSORS_MAX31760 is not set
# CONFIG_MAX31827 is not set
# CONFIG_SENSORS_MAX6620 is not set
# CONFIG_SENSORS_MAX6621 is not set
# CONFIG_SENSORS_MAX6639 is not set
# CONFIG_SENSORS_MAX6650 is not set
# CONFIG_SENSORS_MAX6697 is not set
# CONFIG_SENSORS_MAX31790 is not set
# CONFIG_SENSORS_MC34VR500 is not set
# CONFIG_SENSORS_MCP3021 is not set
# CONFIG_SENSORS_TC654 is not set
# CONFIG_SENSORS_TPS23861 is not set
# CONFIG_SENSORS_MR75203 is not set
# CONFIG_SENSORS_ADCXX is not set
# CONFIG_SENSORS_LM63 is not set
# CONFIG_SENSORS_LM70 is not set
# CONFIG_SENSORS_LM73 is not set
# CONFIG_SENSORS_LM75 is not set
# CONFIG_SENSORS_LM77 is not set
# CONFIG_SENSORS_LM78 is not set
# CONFIG_SENSORS_LM80 is not set
# CONFIG_SENSORS_LM83 is not set
# CONFIG_SENSORS_LM85 is not set
# CONFIG_SENSORS_LM87 is not set
# CONFIG_SENSORS_LM90 is not set
# CONFIG_SENSORS_LM92 is not set
# CONFIG_SENSORS_LM93 is not set
# CONFIG_SENSORS_LM95234 is not set
# CONFIG_SENSORS_LM95241 is not set
# CONFIG_SENSORS_LM95245 is not set
# CONFIG_SENSORS_PC87360 is not set
# CONFIG_SENSORS_PC87427 is not set
# CONFIG_SENSORS_NTC_THERMISTOR is not set
# CONFIG_SENSORS_NCT6683 is not set
# CONFIG_SENSORS_NCT6775 is not set
# CONFIG_SENSORS_NCT6775_I2C is not set
# CONFIG_SENSORS_NCT7363 is not set
# CONFIG_SENSORS_NCT7802 is not set
# CONFIG_SENSORS_NCT7904 is not set
# CONFIG_SENSORS_NPCM7XX is not set
CONFIG_SENSORS_NZXT_KRAKEN2=3Dy
# CONFIG_SENSORS_NZXT_KRAKEN3 is not set
CONFIG_SENSORS_NZXT_SMART2=3Dy
# CONFIG_SENSORS_OCC_P8_I2C is not set
# CONFIG_SENSORS_OXP is not set
# CONFIG_SENSORS_PCF8591 is not set
# CONFIG_PMBUS is not set
# CONFIG_SENSORS_PT5161L is not set
# CONFIG_SENSORS_SBTSI is not set
# CONFIG_SENSORS_SBRMI is not set
# CONFIG_SENSORS_SHT15 is not set
# CONFIG_SENSORS_SHT21 is not set
# CONFIG_SENSORS_SHT3x is not set
# CONFIG_SENSORS_SHT4x is not set
# CONFIG_SENSORS_SHTC1 is not set
# CONFIG_SENSORS_SIS5595 is not set
# CONFIG_SENSORS_DME1737 is not set
# CONFIG_SENSORS_EMC1403 is not set
# CONFIG_SENSORS_EMC2103 is not set
# CONFIG_SENSORS_EMC2305 is not set
# CONFIG_SENSORS_EMC6W201 is not set
# CONFIG_SENSORS_SMSC47M1 is not set
# CONFIG_SENSORS_SMSC47M192 is not set
# CONFIG_SENSORS_SMSC47B397 is not set
# CONFIG_SENSORS_SCH5627 is not set
# CONFIG_SENSORS_SCH5636 is not set
# CONFIG_SENSORS_STTS751 is not set
# CONFIG_SENSORS_ADC128D818 is not set
# CONFIG_SENSORS_ADS7828 is not set
# CONFIG_SENSORS_ADS7871 is not set
# CONFIG_SENSORS_AMC6821 is not set
# CONFIG_SENSORS_INA209 is not set
# CONFIG_SENSORS_INA2XX is not set
# CONFIG_SENSORS_INA238 is not set
# CONFIG_SENSORS_INA3221 is not set
# CONFIG_SENSORS_SPD5118 is not set
# CONFIG_SENSORS_TC74 is not set
# CONFIG_SENSORS_THMC50 is not set
# CONFIG_SENSORS_TMP102 is not set
# CONFIG_SENSORS_TMP103 is not set
# CONFIG_SENSORS_TMP108 is not set
# CONFIG_SENSORS_TMP401 is not set
# CONFIG_SENSORS_TMP421 is not set
# CONFIG_SENSORS_TMP464 is not set
# CONFIG_SENSORS_TMP513 is not set
# CONFIG_SENSORS_VIA_CPUTEMP is not set
# CONFIG_SENSORS_VIA686A is not set
# CONFIG_SENSORS_VT1211 is not set
# CONFIG_SENSORS_VT8231 is not set
# CONFIG_SENSORS_W83773G is not set
# CONFIG_SENSORS_W83781D is not set
# CONFIG_SENSORS_W83791D is not set
# CONFIG_SENSORS_W83792D is not set
# CONFIG_SENSORS_W83793 is not set
# CONFIG_SENSORS_W83795 is not set
# CONFIG_SENSORS_W83L785TS is not set
# CONFIG_SENSORS_W83L786NG is not set
# CONFIG_SENSORS_W83627HF is not set
# CONFIG_SENSORS_W83627EHF is not set
# CONFIG_SENSORS_XGENE is not set

#
# ACPI drivers
#
# CONFIG_SENSORS_ACPI_POWER is not set
# CONFIG_SENSORS_ATK0110 is not set
# CONFIG_SENSORS_ASUS_WMI is not set
# CONFIG_SENSORS_ASUS_EC is not set
# CONFIG_SENSORS_HP_WMI is not set
CONFIG_THERMAL=3Dy
CONFIG_THERMAL_NETLINK=3Dy
# CONFIG_THERMAL_STATISTICS is not set
# CONFIG_THERMAL_DEBUGFS is not set
# CONFIG_THERMAL_CORE_TESTING is not set
CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS=3D0
CONFIG_THERMAL_HWMON=3Dy
# CONFIG_THERMAL_OF is not set
CONFIG_THERMAL_DEFAULT_GOV_STEP_WISE=3Dy
# CONFIG_THERMAL_DEFAULT_GOV_FAIR_SHARE is not set
# CONFIG_THERMAL_DEFAULT_GOV_USER_SPACE is not set
# CONFIG_THERMAL_GOV_FAIR_SHARE is not set
CONFIG_THERMAL_GOV_STEP_WISE=3Dy
# CONFIG_THERMAL_GOV_BANG_BANG is not set
CONFIG_THERMAL_GOV_USER_SPACE=3Dy
# CONFIG_PCIE_THERMAL is not set
# CONFIG_THERMAL_EMULATION is not set
# CONFIG_THERMAL_MMIO is not set

#
# Intel thermal drivers
#
# CONFIG_INTEL_POWERCLAMP is not set
CONFIG_X86_THERMAL_VECTOR=3Dy
# CONFIG_X86_PKG_TEMP_THERMAL is not set
# CONFIG_INTEL_SOC_DTS_THERMAL is not set

#
# ACPI INT340X thermal drivers
#
# CONFIG_INT340X_THERMAL is not set
# end of ACPI INT340X thermal drivers

# CONFIG_INTEL_BXT_PMIC_THERMAL is not set
# CONFIG_INTEL_PCH_THERMAL is not set
# CONFIG_INTEL_TCC_COOLING is not set
# CONFIG_INTEL_HFI_THERMAL is not set
# end of Intel thermal drivers

# CONFIG_GENERIC_ADC_THERMAL is not set
CONFIG_WATCHDOG=3Dy
# CONFIG_WATCHDOG_CORE is not set
# CONFIG_WATCHDOG_NOWAYOUT is not set
CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED=3Dy
CONFIG_WATCHDOG_OPEN_TIMEOUT=3D0
# CONFIG_WATCHDOG_SYSFS is not set
# CONFIG_WATCHDOG_HRTIMER_PRETIMEOUT is not set

#
# Watchdog Pretimeout Governors
#

#
# Watchdog Device Drivers
#
# CONFIG_SOFT_WATCHDOG is not set
# CONFIG_GPIO_WATCHDOG is not set
# CONFIG_LENOVO_SE10_WDT is not set
# CONFIG_WDAT_WDT is not set
# CONFIG_XILINX_WATCHDOG is not set
# CONFIG_ZIIRAVE_WATCHDOG is not set
# CONFIG_CADENCE_WATCHDOG is not set
# CONFIG_DW_WATCHDOG is not set
# CONFIG_TWL4030_WATCHDOG is not set
# CONFIG_MAX63XX_WATCHDOG is not set
# CONFIG_RETU_WATCHDOG is not set
# CONFIG_ACQUIRE_WDT is not set
# CONFIG_ADVANTECH_WDT is not set
# CONFIG_ADVANTECH_EC_WDT is not set
# CONFIG_ALIM1535_WDT is not set
# CONFIG_ALIM7101_WDT is not set
# CONFIG_EBC_C384_WDT is not set
# CONFIG_EXAR_WDT is not set
# CONFIG_F71808E_WDT is not set
# CONFIG_SP5100_TCO is not set
# CONFIG_SBC_FITPC2_WATCHDOG is not set
# CONFIG_EUROTECH_WDT is not set
# CONFIG_IB700_WDT is not set
# CONFIG_IBMASR is not set
# CONFIG_WAFER_WDT is not set
# CONFIG_I6300ESB_WDT is not set
# CONFIG_IE6XX_WDT is not set
# CONFIG_ITCO_WDT is not set
# CONFIG_IT8712F_WDT is not set
# CONFIG_IT87_WDT is not set
# CONFIG_HP_WATCHDOG is not set
# CONFIG_SC1200_WDT is not set
# CONFIG_PC87413_WDT is not set
# CONFIG_NV_TCO is not set
# CONFIG_60XX_WDT is not set
# CONFIG_SMSC_SCH311X_WDT is not set
# CONFIG_SMSC37B787_WDT is not set
# CONFIG_TQMX86_WDT is not set
# CONFIG_VIA_WDT is not set
# CONFIG_W83627HF_WDT is not set
# CONFIG_W83877F_WDT is not set
# CONFIG_W83977F_WDT is not set
# CONFIG_MACHZ_WDT is not set
# CONFIG_SBC_EPX_C3_WATCHDOG is not set
# CONFIG_INTEL_MEI_WDT is not set
# CONFIG_NI903X_WDT is not set
# CONFIG_NIC7018_WDT is not set
# CONFIG_MEN_A21_WDT is not set

#
# PCI-based Watchdog Cards
#
# CONFIG_PCIPCWATCHDOG is not set
# CONFIG_WDTPCI is not set

#
# USB-based Watchdog Cards
#
CONFIG_USBPCWATCHDOG=3Dy
CONFIG_SSB_POSSIBLE=3Dy
CONFIG_SSB=3Dy
CONFIG_SSB_PCIHOST_POSSIBLE=3Dy
# CONFIG_SSB_PCIHOST is not set
CONFIG_SSB_PCMCIAHOST_POSSIBLE=3Dy
# CONFIG_SSB_PCMCIAHOST is not set
CONFIG_SSB_SDIOHOST_POSSIBLE=3Dy
# CONFIG_SSB_SDIOHOST is not set
# CONFIG_SSB_DRIVER_GPIO is not set
CONFIG_BCMA_POSSIBLE=3Dy
CONFIG_BCMA=3Dy
CONFIG_BCMA_HOST_PCI_POSSIBLE=3Dy
# CONFIG_BCMA_HOST_PCI is not set
# CONFIG_BCMA_HOST_SOC is not set
# CONFIG_BCMA_DRIVER_PCI is not set
# CONFIG_BCMA_DRIVER_GMAC_CMN is not set
# CONFIG_BCMA_DRIVER_GPIO is not set
# CONFIG_BCMA_DEBUG is not set

#
# Multifunction device drivers
#
CONFIG_MFD_CORE=3Dy
# CONFIG_MFD_ADP5585 is not set
# CONFIG_MFD_ACT8945A is not set
# CONFIG_MFD_AS3711 is not set
# CONFIG_MFD_SMPRO is not set
# CONFIG_MFD_AS3722 is not set
# CONFIG_PMIC_ADP5520 is not set
# CONFIG_MFD_AAT2870_CORE is not set
# CONFIG_MFD_ATMEL_FLEXCOM is not set
# CONFIG_MFD_ATMEL_HLCDC is not set
# CONFIG_MFD_BCM590XX is not set
# CONFIG_MFD_BD9571MWV is not set
# CONFIG_MFD_AXP20X_I2C is not set
# CONFIG_MFD_CGBC is not set
# CONFIG_MFD_CS42L43_I2C is not set
# CONFIG_MFD_CS42L43_SDW is not set
# CONFIG_MFD_MADERA is not set
# CONFIG_MFD_MAX5970 is not set
# CONFIG_PMIC_DA903X is not set
# CONFIG_MFD_DA9052_SPI is not set
# CONFIG_MFD_DA9052_I2C is not set
# CONFIG_MFD_DA9055 is not set
# CONFIG_MFD_DA9062 is not set
# CONFIG_MFD_DA9063 is not set
# CONFIG_MFD_DA9150 is not set
CONFIG_MFD_DLN2=3Dy
# CONFIG_MFD_GATEWORKS_GSC is not set
# CONFIG_MFD_MC13XXX_SPI is not set
# CONFIG_MFD_MC13XXX_I2C is not set
# CONFIG_MFD_MP2629 is not set
# CONFIG_MFD_HI6421_PMIC is not set
# CONFIG_MFD_INTEL_QUARK_I2C_GPIO is not set
CONFIG_LPC_ICH=3Dy
# CONFIG_LPC_SCH is not set
# CONFIG_INTEL_SOC_PMIC is not set
CONFIG_INTEL_SOC_PMIC_BXTWC=3Dy
CONFIG_INTEL_SOC_PMIC_CHTWC=3Dy
# CONFIG_INTEL_SOC_PMIC_CHTDC_TI is not set
# CONFIG_MFD_INTEL_LPSS_ACPI is not set
# CONFIG_MFD_INTEL_LPSS_PCI is not set
CONFIG_MFD_INTEL_PMC_BXT=3Dy
# CONFIG_MFD_IQS62X is not set
# CONFIG_MFD_JANZ_CMODIO is not set
# CONFIG_MFD_KEMPLD is not set
# CONFIG_MFD_88PM800 is not set
# CONFIG_MFD_88PM805 is not set
# CONFIG_MFD_88PM860X is not set
# CONFIG_MFD_88PM886_PMIC is not set
# CONFIG_MFD_MAX14577 is not set
# CONFIG_MFD_MAX77541 is not set
# CONFIG_MFD_MAX77620 is not set
# CONFIG_MFD_MAX77650 is not set
# CONFIG_MFD_MAX77686 is not set
# CONFIG_MFD_MAX77693 is not set
# CONFIG_MFD_MAX77714 is not set
# CONFIG_MFD_MAX77843 is not set
# CONFIG_MFD_MAX8907 is not set
# CONFIG_MFD_MAX8925 is not set
# CONFIG_MFD_MAX8997 is not set
# CONFIG_MFD_MAX8998 is not set
CONFIG_MFD_MT6360=3Dy
CONFIG_MFD_MT6370=3Dy
# CONFIG_MFD_MT6397 is not set
# CONFIG_MFD_MENF21BMC is not set
# CONFIG_MFD_OCELOT is not set
# CONFIG_EZX_PCAP is not set
# CONFIG_MFD_CPCAP is not set
CONFIG_MFD_VIPERBOARD=3Dy
# CONFIG_MFD_NTXEC is not set
CONFIG_MFD_RETU=3Dy
# CONFIG_MFD_PCF50633 is not set
# CONFIG_MFD_SY7636A is not set
# CONFIG_MFD_RDC321X is not set
# CONFIG_MFD_RT4831 is not set
# CONFIG_MFD_RT5033 is not set
# CONFIG_MFD_RT5120 is not set
# CONFIG_MFD_RC5T583 is not set
# CONFIG_MFD_RK8XX_I2C is not set
# CONFIG_MFD_RK8XX_SPI is not set
# CONFIG_MFD_RN5T618 is not set
# CONFIG_MFD_SEC_CORE is not set
# CONFIG_MFD_SI476X_CORE is not set
# CONFIG_MFD_SM501 is not set
# CONFIG_MFD_SKY81452 is not set
# CONFIG_MFD_STMPE is not set
CONFIG_MFD_SYSCON=3Dy
# CONFIG_MFD_LP3943 is not set
# CONFIG_MFD_LP8788 is not set
# CONFIG_MFD_TI_LMU is not set
# CONFIG_MFD_PALMAS is not set
# CONFIG_TPS6105X is not set
# CONFIG_TPS65010 is not set
# CONFIG_TPS6507X is not set
# CONFIG_MFD_TPS65086 is not set
# CONFIG_MFD_TPS65090 is not set
# CONFIG_MFD_TPS65217 is not set
# CONFIG_MFD_TI_LP873X is not set
# CONFIG_MFD_TI_LP87565 is not set
# CONFIG_MFD_TPS65218 is not set
# CONFIG_MFD_TPS65219 is not set
# CONFIG_MFD_TPS6586X is not set
# CONFIG_MFD_TPS65910 is not set
# CONFIG_MFD_TPS65912_I2C is not set
# CONFIG_MFD_TPS65912_SPI is not set
# CONFIG_MFD_TPS6594_I2C is not set
# CONFIG_MFD_TPS6594_SPI is not set
CONFIG_TWL4030_CORE=3Dy
# CONFIG_MFD_TWL4030_AUDIO is not set
# CONFIG_TWL6040_CORE is not set
# CONFIG_MFD_WL1273_CORE is not set
# CONFIG_MFD_LM3533 is not set
# CONFIG_MFD_TC3589X is not set
# CONFIG_MFD_TQMX86 is not set
# CONFIG_MFD_VX855 is not set
# CONFIG_MFD_LOCHNAGAR is not set
# CONFIG_MFD_ARIZONA_I2C is not set
# CONFIG_MFD_ARIZONA_SPI is not set
# CONFIG_MFD_WM8400 is not set
# CONFIG_MFD_WM831X_I2C is not set
# CONFIG_MFD_WM831X_SPI is not set
# CONFIG_MFD_WM8350_I2C is not set
# CONFIG_MFD_WM8994 is not set
# CONFIG_MFD_ROHM_BD718XX is not set
# CONFIG_MFD_ROHM_BD71828 is not set
# CONFIG_MFD_ROHM_BD957XMUF is not set
# CONFIG_MFD_ROHM_BD96801 is not set
# CONFIG_MFD_STPMIC1 is not set
# CONFIG_MFD_STMFX is not set
# CONFIG_MFD_ATC260X_I2C is not set
# CONFIG_MFD_QCOM_PM8008 is not set
# CONFIG_MFD_CS40L50_I2C is not set
# CONFIG_MFD_CS40L50_SPI is not set
# CONFIG_RAVE_SP_CORE is not set
# CONFIG_MFD_INTEL_M10_BMC_SPI is not set
# CONFIG_MFD_RSMU_I2C is not set
# CONFIG_MFD_RSMU_SPI is not set
# end of Multifunction device drivers

CONFIG_REGULATOR=3Dy
# CONFIG_REGULATOR_DEBUG is not set
CONFIG_REGULATOR_FIXED_VOLTAGE=3Dy
# CONFIG_REGULATOR_VIRTUAL_CONSUMER is not set
# CONFIG_REGULATOR_USERSPACE_CONSUMER is not set
# CONFIG_REGULATOR_NETLINK_EVENTS is not set
# CONFIG_REGULATOR_88PG86X is not set
# CONFIG_REGULATOR_ACT8865 is not set
# CONFIG_REGULATOR_AD5398 is not set
# CONFIG_REGULATOR_AW37503 is not set
# CONFIG_REGULATOR_DA9121 is not set
# CONFIG_REGULATOR_DA9210 is not set
# CONFIG_REGULATOR_DA9211 is not set
# CONFIG_REGULATOR_FAN53555 is not set
# CONFIG_REGULATOR_FAN53880 is not set
# CONFIG_REGULATOR_GPIO is not set
# CONFIG_REGULATOR_ISL9305 is not set
# CONFIG_REGULATOR_ISL6271A is not set
# CONFIG_REGULATOR_LP3971 is not set
# CONFIG_REGULATOR_LP3972 is not set
# CONFIG_REGULATOR_LP872X is not set
# CONFIG_REGULATOR_LP8755 is not set
# CONFIG_REGULATOR_LTC3589 is not set
# CONFIG_REGULATOR_LTC3676 is not set
# CONFIG_REGULATOR_MAX1586 is not set
# CONFIG_REGULATOR_MAX77503 is not set
# CONFIG_REGULATOR_MAX77857 is not set
# CONFIG_REGULATOR_MAX8649 is not set
# CONFIG_REGULATOR_MAX8660 is not set
# CONFIG_REGULATOR_MAX8893 is not set
# CONFIG_REGULATOR_MAX8952 is not set
# CONFIG_REGULATOR_MAX20086 is not set
# CONFIG_REGULATOR_MAX20411 is not set
# CONFIG_REGULATOR_MAX77826 is not set
# CONFIG_REGULATOR_MCP16502 is not set
# CONFIG_REGULATOR_MP5416 is not set
# CONFIG_REGULATOR_MP8859 is not set
# CONFIG_REGULATOR_MP886X is not set
# CONFIG_REGULATOR_MPQ7920 is not set
# CONFIG_REGULATOR_MT6311 is not set
# CONFIG_REGULATOR_MT6360 is not set
# CONFIG_REGULATOR_MT6370 is not set
# CONFIG_REGULATOR_PCA9450 is not set
# CONFIG_REGULATOR_PF8X00 is not set
# CONFIG_REGULATOR_PFUZE100 is not set
# CONFIG_REGULATOR_PV88060 is not set
# CONFIG_REGULATOR_PV88080 is not set
# CONFIG_REGULATOR_PV88090 is not set
# CONFIG_REGULATOR_RAA215300 is not set
# CONFIG_REGULATOR_RASPBERRYPI_TOUCHSCREEN_ATTINY is not set
# CONFIG_REGULATOR_RT4801 is not set
# CONFIG_REGULATOR_RT4803 is not set
# CONFIG_REGULATOR_RT5190A is not set
# CONFIG_REGULATOR_RT5739 is not set
# CONFIG_REGULATOR_RT5759 is not set
# CONFIG_REGULATOR_RT6160 is not set
# CONFIG_REGULATOR_RT6190 is not set
# CONFIG_REGULATOR_RT6245 is not set
# CONFIG_REGULATOR_RTQ2134 is not set
# CONFIG_REGULATOR_RTMV20 is not set
# CONFIG_REGULATOR_RTQ6752 is not set
# CONFIG_REGULATOR_RTQ2208 is not set
# CONFIG_REGULATOR_SLG51000 is not set
# CONFIG_REGULATOR_SY8106A is not set
# CONFIG_REGULATOR_SY8824X is not set
# CONFIG_REGULATOR_SY8827N is not set
# CONFIG_REGULATOR_TPS51632 is not set
# CONFIG_REGULATOR_TPS62360 is not set
# CONFIG_REGULATOR_TPS6286X is not set
# CONFIG_REGULATOR_TPS6287X is not set
# CONFIG_REGULATOR_TPS65023 is not set
# CONFIG_REGULATOR_TPS6507X is not set
# CONFIG_REGULATOR_TPS65132 is not set
# CONFIG_REGULATOR_TPS6524X is not set
CONFIG_REGULATOR_TWL4030=3Dy
# CONFIG_REGULATOR_VCTRL is not set
CONFIG_RC_CORE=3Dy
# CONFIG_LIRC is not set
# CONFIG_RC_MAP is not set
# CONFIG_RC_DECODERS is not set
CONFIG_RC_DEVICES=3Dy
# CONFIG_IR_ENE is not set
# CONFIG_IR_FINTEK is not set
# CONFIG_IR_GPIO_CIR is not set
# CONFIG_IR_HIX5HD2 is not set
CONFIG_IR_IGORPLUGUSB=3Dy
CONFIG_IR_IGUANA=3Dy
CONFIG_IR_IMON=3Dy
CONFIG_IR_IMON_RAW=3Dy
# CONFIG_IR_ITE_CIR is not set
CONFIG_IR_MCEUSB=3Dy
# CONFIG_IR_NUVOTON is not set
CONFIG_IR_REDRAT3=3Dy
# CONFIG_IR_SERIAL is not set
CONFIG_IR_STREAMZAP=3Dy
CONFIG_IR_TOY=3Dy
CONFIG_IR_TTUSBIR=3Dy
# CONFIG_IR_WINBOND_CIR is not set
CONFIG_RC_ATI_REMOTE=3Dy
# CONFIG_RC_LOOPBACK is not set
CONFIG_RC_XBOX_DVD=3Dy
CONFIG_CEC_CORE=3Dy

#
# CEC support
#
# CONFIG_MEDIA_CEC_RC is not set
CONFIG_MEDIA_CEC_SUPPORT=3Dy
# CONFIG_CEC_CH7322 is not set
# CONFIG_CEC_GPIO is not set
# CONFIG_CEC_SECO is not set
# CONFIG_USB_EXTRON_DA_HD_4K_PLUS_CEC is not set
CONFIG_USB_PULSE8_CEC=3Dy
CONFIG_USB_RAINSHADOW_CEC=3Dy
# end of CEC support

CONFIG_MEDIA_SUPPORT=3Dy
CONFIG_MEDIA_SUPPORT_FILTER=3Dy
# CONFIG_MEDIA_SUBDRV_AUTOSELECT is not set

#
# Media device types
#
CONFIG_MEDIA_CAMERA_SUPPORT=3Dy
CONFIG_MEDIA_ANALOG_TV_SUPPORT=3Dy
CONFIG_MEDIA_DIGITAL_TV_SUPPORT=3Dy
CONFIG_MEDIA_RADIO_SUPPORT=3Dy
CONFIG_MEDIA_SDR_SUPPORT=3Dy
CONFIG_MEDIA_PLATFORM_SUPPORT=3Dy
CONFIG_MEDIA_TEST_SUPPORT=3Dy
# end of Media device types

CONFIG_VIDEO_DEV=3Dy
CONFIG_MEDIA_CONTROLLER=3Dy
CONFIG_DVB_CORE=3Dy

#
# Video4Linux options
#
CONFIG_VIDEO_V4L2_I2C=3Dy
CONFIG_VIDEO_V4L2_SUBDEV_API=3Dy
# CONFIG_VIDEO_ADV_DEBUG is not set
# CONFIG_VIDEO_FIXED_MINOR_RANGES is not set
CONFIG_VIDEO_TUNER=3Dy
CONFIG_V4L2_MEM2MEM_DEV=3Dy
# end of Video4Linux options

#
# Media controller options
#
CONFIG_MEDIA_CONTROLLER_DVB=3Dy
# end of Media controller options

#
# Digital TV options
#
# CONFIG_DVB_MMAP is not set
# CONFIG_DVB_NET is not set
CONFIG_DVB_MAX_ADAPTERS=3D16
# CONFIG_DVB_DYNAMIC_MINORS is not set
# CONFIG_DVB_DEMUX_SECTION_LOSS_LOG is not set
# CONFIG_DVB_ULE_DEBUG is not set
# end of Digital TV options

#
# Media drivers
#

#
# Drivers filtered as selected at 'Filter media drivers'
#

#
# Media drivers
#
CONFIG_MEDIA_USB_SUPPORT=3Dy

#
# Webcam devices
#
CONFIG_USB_GSPCA=3Dy
CONFIG_USB_GSPCA_BENQ=3Dy
CONFIG_USB_GSPCA_CONEX=3Dy
CONFIG_USB_GSPCA_CPIA1=3Dy
CONFIG_USB_GSPCA_DTCS033=3Dy
CONFIG_USB_GSPCA_ETOMS=3Dy
CONFIG_USB_GSPCA_FINEPIX=3Dy
CONFIG_USB_GSPCA_JEILINJ=3Dy
CONFIG_USB_GSPCA_JL2005BCD=3Dy
CONFIG_USB_GSPCA_KINECT=3Dy
CONFIG_USB_GSPCA_KONICA=3Dy
CONFIG_USB_GSPCA_MARS=3Dy
CONFIG_USB_GSPCA_MR97310A=3Dy
CONFIG_USB_GSPCA_NW80X=3Dy
CONFIG_USB_GSPCA_OV519=3Dy
CONFIG_USB_GSPCA_OV534=3Dy
CONFIG_USB_GSPCA_OV534_9=3Dy
CONFIG_USB_GSPCA_PAC207=3Dy
CONFIG_USB_GSPCA_PAC7302=3Dy
CONFIG_USB_GSPCA_PAC7311=3Dy
CONFIG_USB_GSPCA_SE401=3Dy
CONFIG_USB_GSPCA_SN9C2028=3Dy
CONFIG_USB_GSPCA_SN9C20X=3Dy
CONFIG_USB_GSPCA_SONIXB=3Dy
CONFIG_USB_GSPCA_SONIXJ=3Dy
CONFIG_USB_GSPCA_SPCA1528=3Dy
CONFIG_USB_GSPCA_SPCA500=3Dy
CONFIG_USB_GSPCA_SPCA501=3Dy
CONFIG_USB_GSPCA_SPCA505=3Dy
CONFIG_USB_GSPCA_SPCA506=3Dy
CONFIG_USB_GSPCA_SPCA508=3Dy
CONFIG_USB_GSPCA_SPCA561=3Dy
CONFIG_USB_GSPCA_SQ905=3Dy
CONFIG_USB_GSPCA_SQ905C=3Dy
CONFIG_USB_GSPCA_SQ930X=3Dy
CONFIG_USB_GSPCA_STK014=3Dy
CONFIG_USB_GSPCA_STK1135=3Dy
CONFIG_USB_GSPCA_STV0680=3Dy
CONFIG_USB_GSPCA_SUNPLUS=3Dy
CONFIG_USB_GSPCA_T613=3Dy
CONFIG_USB_GSPCA_TOPRO=3Dy
CONFIG_USB_GSPCA_TOUPTEK=3Dy
CONFIG_USB_GSPCA_TV8532=3Dy
CONFIG_USB_GSPCA_VC032X=3Dy
CONFIG_USB_GSPCA_VICAM=3Dy
CONFIG_USB_GSPCA_XIRLINK_CIT=3Dy
CONFIG_USB_GSPCA_ZC3XX=3Dy
CONFIG_USB_GL860=3Dy
CONFIG_USB_M5602=3Dy
CONFIG_USB_STV06XX=3Dy
CONFIG_USB_PWC=3Dy
# CONFIG_USB_PWC_DEBUG is not set
CONFIG_USB_PWC_INPUT_EVDEV=3Dy
CONFIG_USB_S2255=3Dy
CONFIG_VIDEO_USBTV=3Dy
CONFIG_USB_VIDEO_CLASS=3Dy
CONFIG_USB_VIDEO_CLASS_INPUT_EVDEV=3Dy

#
# Analog TV USB devices
#
CONFIG_VIDEO_GO7007=3Dy
CONFIG_VIDEO_GO7007_USB=3Dy
CONFIG_VIDEO_GO7007_LOADER=3Dy
CONFIG_VIDEO_GO7007_USB_S2250_BOARD=3Dy
CONFIG_VIDEO_HDPVR=3Dy
CONFIG_VIDEO_PVRUSB2=3Dy
CONFIG_VIDEO_PVRUSB2_SYSFS=3Dy
CONFIG_VIDEO_PVRUSB2_DVB=3Dy
# CONFIG_VIDEO_PVRUSB2_DEBUGIFC is not set
CONFIG_VIDEO_STK1160=3Dy

#
# Analog/digital TV USB devices
#
CONFIG_VIDEO_AU0828=3Dy
CONFIG_VIDEO_AU0828_V4L2=3Dy
CONFIG_VIDEO_AU0828_RC=3Dy
CONFIG_VIDEO_CX231XX=3Dy
CONFIG_VIDEO_CX231XX_RC=3Dy
CONFIG_VIDEO_CX231XX_ALSA=3Dy
CONFIG_VIDEO_CX231XX_DVB=3Dy

#
# Digital TV USB devices
#
CONFIG_DVB_AS102=3Dy
CONFIG_DVB_B2C2_FLEXCOP_USB=3Dy
# CONFIG_DVB_B2C2_FLEXCOP_USB_DEBUG is not set
CONFIG_DVB_USB_V2=3Dy
CONFIG_DVB_USB_AF9015=3Dy
CONFIG_DVB_USB_AF9035=3Dy
CONFIG_DVB_USB_ANYSEE=3Dy
CONFIG_DVB_USB_AU6610=3Dy
CONFIG_DVB_USB_AZ6007=3Dy
CONFIG_DVB_USB_CE6230=3Dy
CONFIG_DVB_USB_DVBSKY=3Dy
CONFIG_DVB_USB_EC168=3Dy
CONFIG_DVB_USB_GL861=3Dy
CONFIG_DVB_USB_LME2510=3Dy
CONFIG_DVB_USB_MXL111SF=3Dy
CONFIG_DVB_USB_RTL28XXU=3Dy
CONFIG_DVB_USB_ZD1301=3Dy
CONFIG_DVB_USB=3Dy
# CONFIG_DVB_USB_DEBUG is not set
CONFIG_DVB_USB_A800=3Dy
CONFIG_DVB_USB_AF9005=3Dy
CONFIG_DVB_USB_AF9005_REMOTE=3Dy
CONFIG_DVB_USB_AZ6027=3Dy
CONFIG_DVB_USB_CINERGY_T2=3Dy
CONFIG_DVB_USB_CXUSB=3Dy
CONFIG_DVB_USB_CXUSB_ANALOG=3Dy
CONFIG_DVB_USB_DIB0700=3Dy
CONFIG_DVB_USB_DIB3000MC=3Dy
CONFIG_DVB_USB_DIBUSB_MB=3Dy
# CONFIG_DVB_USB_DIBUSB_MB_FAULTY is not set
CONFIG_DVB_USB_DIBUSB_MC=3Dy
CONFIG_DVB_USB_DIGITV=3Dy
CONFIG_DVB_USB_DTT200U=3Dy
CONFIG_DVB_USB_DTV5100=3Dy
CONFIG_DVB_USB_DW2102=3Dy
CONFIG_DVB_USB_GP8PSK=3Dy
CONFIG_DVB_USB_M920X=3Dy
CONFIG_DVB_USB_NOVA_T_USB2=3Dy
CONFIG_DVB_USB_OPERA1=3Dy
CONFIG_DVB_USB_PCTV452E=3Dy
CONFIG_DVB_USB_TECHNISAT_USB2=3Dy
CONFIG_DVB_USB_TTUSB2=3Dy
CONFIG_DVB_USB_UMT_010=3Dy
CONFIG_DVB_USB_VP702X=3Dy
CONFIG_DVB_USB_VP7045=3Dy
CONFIG_SMS_USB_DRV=3Dy
CONFIG_DVB_TTUSB_BUDGET=3Dy
CONFIG_DVB_TTUSB_DEC=3Dy

#
# Webcam, TV (analog/digital) USB devices
#
CONFIG_VIDEO_EM28XX=3Dy
CONFIG_VIDEO_EM28XX_V4L2=3Dy
CONFIG_VIDEO_EM28XX_ALSA=3Dy
CONFIG_VIDEO_EM28XX_DVB=3Dy
CONFIG_VIDEO_EM28XX_RC=3Dy

#
# Software defined radio USB devices
#
CONFIG_USB_AIRSPY=3Dy
CONFIG_USB_HACKRF=3Dy
CONFIG_USB_MSI2500=3Dy
# CONFIG_MEDIA_PCI_SUPPORT is not set
CONFIG_RADIO_ADAPTERS=3Dy
# CONFIG_RADIO_MAXIRADIO is not set
# CONFIG_RADIO_SAA7706H is not set
CONFIG_RADIO_SHARK=3Dy
CONFIG_RADIO_SHARK2=3Dy
CONFIG_RADIO_SI4713=3Dy
CONFIG_RADIO_TEA575X=3Dy
# CONFIG_RADIO_TEA5764 is not set
# CONFIG_RADIO_TEF6862 is not set
# CONFIG_RADIO_WL1273 is not set
CONFIG_USB_DSBR=3Dy
CONFIG_USB_KEENE=3Dy
CONFIG_USB_MA901=3Dy
CONFIG_USB_MR800=3Dy
CONFIG_USB_RAREMONO=3Dy
CONFIG_RADIO_SI470X=3Dy
CONFIG_USB_SI470X=3Dy
# CONFIG_I2C_SI470X is not set
CONFIG_USB_SI4713=3Dy
# CONFIG_PLATFORM_SI4713 is not set
CONFIG_I2C_SI4713=3Dy
# CONFIG_MEDIA_PLATFORM_DRIVERS is not set

#
# MMC/SDIO DVB adapters
#
CONFIG_SMS_SDIO_DRV=3Dy
CONFIG_V4L_TEST_DRIVERS=3Dy
CONFIG_VIDEO_VIM2M=3Dy
CONFIG_VIDEO_VICODEC=3Dy
CONFIG_VIDEO_VIMC=3Dy
CONFIG_VIDEO_VIVID=3Dy
CONFIG_VIDEO_VIVID_CEC=3Dy
CONFIG_VIDEO_VIVID_MAX_DEVS=3D64
# CONFIG_VIDEO_VISL is not set
CONFIG_DVB_TEST_DRIVERS=3Dy
CONFIG_DVB_VIDTV=3Dy

#
# FireWire (IEEE 1394) Adapters
#
# CONFIG_DVB_FIREDTV is not set
CONFIG_MEDIA_COMMON_OPTIONS=3Dy

#
# common driver options
#
CONFIG_CYPRESS_FIRMWARE=3Dy
CONFIG_TTPCI_EEPROM=3Dy
CONFIG_UVC_COMMON=3Dy
CONFIG_VIDEO_CX2341X=3Dy
CONFIG_VIDEO_TVEEPROM=3Dy
CONFIG_DVB_B2C2_FLEXCOP=3Dy
CONFIG_SMS_SIANO_MDTV=3Dy
CONFIG_SMS_SIANO_RC=3Dy
CONFIG_SMS_SIANO_DEBUGFS=3Dy
CONFIG_VIDEO_V4L2_TPG=3Dy
CONFIG_VIDEOBUF2_CORE=3Dy
CONFIG_VIDEOBUF2_V4L2=3Dy
CONFIG_VIDEOBUF2_MEMOPS=3Dy
CONFIG_VIDEOBUF2_DMA_CONTIG=3Dy
CONFIG_VIDEOBUF2_VMALLOC=3Dy
CONFIG_VIDEOBUF2_DMA_SG=3Dy
# end of Media drivers

#
# Media ancillary drivers
#
CONFIG_MEDIA_ATTACH=3Dy
# CONFIG_VIDEO_IR_I2C is not set
# CONFIG_VIDEO_CAMERA_SENSOR is not set

#
# Camera ISPs
#
# CONFIG_VIDEO_THP7312 is not set
# end of Camera ISPs

#
# Lens drivers
#
# CONFIG_VIDEO_AD5820 is not set
# CONFIG_VIDEO_AK7375 is not set
# CONFIG_VIDEO_DW9714 is not set
# CONFIG_VIDEO_DW9719 is not set
# CONFIG_VIDEO_DW9768 is not set
# CONFIG_VIDEO_DW9807_VCM is not set
# end of Lens drivers

#
# Flash devices
#
# CONFIG_VIDEO_ADP1653 is not set
# CONFIG_VIDEO_LM3560 is not set
# CONFIG_VIDEO_LM3646 is not set
# end of Flash devices

#
# Audio decoders, processors and mixers
#
# CONFIG_VIDEO_CS3308 is not set
# CONFIG_VIDEO_CS5345 is not set
CONFIG_VIDEO_CS53L32A=3Dy
CONFIG_VIDEO_MSP3400=3Dy
# CONFIG_VIDEO_SONY_BTF_MPX is not set
# CONFIG_VIDEO_TDA1997X is not set
# CONFIG_VIDEO_TDA7432 is not set
# CONFIG_VIDEO_TDA9840 is not set
# CONFIG_VIDEO_TEA6415C is not set
# CONFIG_VIDEO_TEA6420 is not set
# CONFIG_VIDEO_TLV320AIC23B is not set
# CONFIG_VIDEO_TVAUDIO is not set
# CONFIG_VIDEO_UDA1342 is not set
# CONFIG_VIDEO_VP27SMPX is not set
# CONFIG_VIDEO_WM8739 is not set
CONFIG_VIDEO_WM8775=3Dy
# end of Audio decoders, processors and mixers

#
# RDS decoders
#
# CONFIG_VIDEO_SAA6588 is not set
# end of RDS decoders

#
# Video decoders
#
# CONFIG_VIDEO_ADV7180 is not set
# CONFIG_VIDEO_ADV7183 is not set
# CONFIG_VIDEO_ADV748X is not set
# CONFIG_VIDEO_ADV7604 is not set
# CONFIG_VIDEO_ADV7842 is not set
# CONFIG_VIDEO_BT819 is not set
# CONFIG_VIDEO_BT856 is not set
# CONFIG_VIDEO_BT866 is not set
# CONFIG_VIDEO_ISL7998X is not set
# CONFIG_VIDEO_KS0127 is not set
# CONFIG_VIDEO_MAX9286 is not set
# CONFIG_VIDEO_ML86V7667 is not set
# CONFIG_VIDEO_SAA7110 is not set
CONFIG_VIDEO_SAA711X=3Dy
# CONFIG_VIDEO_TC358743 is not set
# CONFIG_VIDEO_TC358746 is not set
# CONFIG_VIDEO_TVP514X is not set
# CONFIG_VIDEO_TVP5150 is not set
# CONFIG_VIDEO_TVP7002 is not set
# CONFIG_VIDEO_TW2804 is not set
# CONFIG_VIDEO_TW9900 is not set
# CONFIG_VIDEO_TW9903 is not set
# CONFIG_VIDEO_TW9906 is not set
# CONFIG_VIDEO_TW9910 is not set
# CONFIG_VIDEO_VPX3220 is not set

#
# Video and audio decoders
#
# CONFIG_VIDEO_SAA717X is not set
CONFIG_VIDEO_CX25840=3Dy
# end of Video decoders

#
# Video encoders
#
# CONFIG_VIDEO_ADV7170 is not set
# CONFIG_VIDEO_ADV7175 is not set
# CONFIG_VIDEO_ADV7343 is not set
# CONFIG_VIDEO_ADV7393 is not set
# CONFIG_VIDEO_ADV7511 is not set
# CONFIG_VIDEO_AK881X is not set
# CONFIG_VIDEO_SAA7127 is not set
# CONFIG_VIDEO_SAA7185 is not set
# CONFIG_VIDEO_THS8200 is not set
# end of Video encoders

#
# Video improvement chips
#
# CONFIG_VIDEO_UPD64031A is not set
# CONFIG_VIDEO_UPD64083 is not set
# end of Video improvement chips

#
# Audio/Video compression chips
#
# CONFIG_VIDEO_SAA6752HS is not set
# end of Audio/Video compression chips

#
# SDR tuner chips
#
# CONFIG_SDR_MAX2175 is not set
# end of SDR tuner chips

#
# Miscellaneous helper chips
#
# CONFIG_VIDEO_I2C is not set
# CONFIG_VIDEO_M52790 is not set
# CONFIG_VIDEO_ST_MIPID02 is not set
# CONFIG_VIDEO_THS7303 is not set
# end of Miscellaneous helper chips

#
# Video serializers and deserializers
#
# CONFIG_VIDEO_DS90UB913 is not set
# CONFIG_VIDEO_DS90UB953 is not set
# CONFIG_VIDEO_DS90UB960 is not set
# CONFIG_VIDEO_MAX96714 is not set
# CONFIG_VIDEO_MAX96717 is not set
# end of Video serializers and deserializers

#
# Media SPI Adapters
#
# CONFIG_CXD2880_SPI_DRV is not set
# CONFIG_VIDEO_GS1662 is not set
# end of Media SPI Adapters

CONFIG_MEDIA_TUNER=3Dy

#
# Customize TV tuners
#
# CONFIG_MEDIA_TUNER_E4000 is not set
# CONFIG_MEDIA_TUNER_FC0011 is not set
# CONFIG_MEDIA_TUNER_FC0012 is not set
# CONFIG_MEDIA_TUNER_FC0013 is not set
# CONFIG_MEDIA_TUNER_FC2580 is not set
# CONFIG_MEDIA_TUNER_IT913X is not set
# CONFIG_MEDIA_TUNER_M88RS6000T is not set
# CONFIG_MEDIA_TUNER_MAX2165 is not set
# CONFIG_MEDIA_TUNER_MC44S803 is not set
CONFIG_MEDIA_TUNER_MSI001=3Dy
# CONFIG_MEDIA_TUNER_MT2060 is not set
# CONFIG_MEDIA_TUNER_MT2063 is not set
# CONFIG_MEDIA_TUNER_MT20XX is not set
# CONFIG_MEDIA_TUNER_MT2131 is not set
# CONFIG_MEDIA_TUNER_MT2266 is not set
# CONFIG_MEDIA_TUNER_MXL301RF is not set
# CONFIG_MEDIA_TUNER_MXL5005S is not set
# CONFIG_MEDIA_TUNER_MXL5007T is not set
# CONFIG_MEDIA_TUNER_QM1D1B0004 is not set
# CONFIG_MEDIA_TUNER_QM1D1C0042 is not set
# CONFIG_MEDIA_TUNER_QT1010 is not set
# CONFIG_MEDIA_TUNER_R820T is not set
# CONFIG_MEDIA_TUNER_SI2157 is not set
# CONFIG_MEDIA_TUNER_SIMPLE is not set
# CONFIG_MEDIA_TUNER_TDA18212 is not set
# CONFIG_MEDIA_TUNER_TDA18218 is not set
# CONFIG_MEDIA_TUNER_TDA18250 is not set
# CONFIG_MEDIA_TUNER_TDA18271 is not set
# CONFIG_MEDIA_TUNER_TDA827X is not set
# CONFIG_MEDIA_TUNER_TDA8290 is not set
# CONFIG_MEDIA_TUNER_TDA9887 is not set
# CONFIG_MEDIA_TUNER_TEA5761 is not set
# CONFIG_MEDIA_TUNER_TEA5767 is not set
# CONFIG_MEDIA_TUNER_TUA9001 is not set
# CONFIG_MEDIA_TUNER_XC2028 is not set
# CONFIG_MEDIA_TUNER_XC4000 is not set
# CONFIG_MEDIA_TUNER_XC5000 is not set
# end of Customize TV tuners

#
# Customise DVB Frontends
#

#
# Multistandard (satellite) frontends
#
# CONFIG_DVB_M88DS3103 is not set
# CONFIG_DVB_MXL5XX is not set
# CONFIG_DVB_STB0899 is not set
# CONFIG_DVB_STB6100 is not set
# CONFIG_DVB_STV090x is not set
# CONFIG_DVB_STV0910 is not set
# CONFIG_DVB_STV6110x is not set
# CONFIG_DVB_STV6111 is not set

#
# Multistandard (cable + terrestrial) frontends
#
# CONFIG_DVB_DRXK is not set
# CONFIG_DVB_MN88472 is not set
# CONFIG_DVB_MN88473 is not set
# CONFIG_DVB_SI2165 is not set
# CONFIG_DVB_TDA18271C2DD is not set

#
# DVB-S (satellite) frontends
#
# CONFIG_DVB_CX24110 is not set
# CONFIG_DVB_CX24116 is not set
# CONFIG_DVB_CX24117 is not set
# CONFIG_DVB_CX24120 is not set
# CONFIG_DVB_CX24123 is not set
# CONFIG_DVB_DS3000 is not set
# CONFIG_DVB_MB86A16 is not set
# CONFIG_DVB_MT312 is not set
# CONFIG_DVB_S5H1420 is not set
# CONFIG_DVB_SI21XX is not set
# CONFIG_DVB_STB6000 is not set
# CONFIG_DVB_STV0288 is not set
# CONFIG_DVB_STV0299 is not set
# CONFIG_DVB_STV0900 is not set
# CONFIG_DVB_STV6110 is not set
# CONFIG_DVB_TDA10071 is not set
# CONFIG_DVB_TDA10086 is not set
# CONFIG_DVB_TDA8083 is not set
# CONFIG_DVB_TDA8261 is not set
# CONFIG_DVB_TDA826X is not set
# CONFIG_DVB_TS2020 is not set
# CONFIG_DVB_TUA6100 is not set
# CONFIG_DVB_TUNER_CX24113 is not set
# CONFIG_DVB_TUNER_ITD1000 is not set
# CONFIG_DVB_VES1X93 is not set
# CONFIG_DVB_ZL10036 is not set
# CONFIG_DVB_ZL10039 is not set

#
# DVB-T (terrestrial) frontends
#
CONFIG_DVB_AF9013=3Dy
CONFIG_DVB_AS102_FE=3Dy
# CONFIG_DVB_CX22700 is not set
# CONFIG_DVB_CX22702 is not set
# CONFIG_DVB_CXD2820R is not set
# CONFIG_DVB_CXD2841ER is not set
CONFIG_DVB_DIB3000MB=3Dy
CONFIG_DVB_DIB3000MC=3Dy
# CONFIG_DVB_DIB7000M is not set
# CONFIG_DVB_DIB7000P is not set
# CONFIG_DVB_DIB9000 is not set
# CONFIG_DVB_DRXD is not set
CONFIG_DVB_EC100=3Dy
CONFIG_DVB_GP8PSK_FE=3Dy
# CONFIG_DVB_L64781 is not set
# CONFIG_DVB_MT352 is not set
# CONFIG_DVB_NXT6000 is not set
CONFIG_DVB_RTL2830=3Dy
CONFIG_DVB_RTL2832=3Dy
CONFIG_DVB_RTL2832_SDR=3Dy
# CONFIG_DVB_S5H1432 is not set
# CONFIG_DVB_SI2168 is not set
# CONFIG_DVB_SP887X is not set
# CONFIG_DVB_STV0367 is not set
# CONFIG_DVB_TDA10048 is not set
# CONFIG_DVB_TDA1004X is not set
# CONFIG_DVB_ZD1301_DEMOD is not set
CONFIG_DVB_ZL10353=3Dy
# CONFIG_DVB_CXD2880 is not set

#
# DVB-C (cable) frontends
#
# CONFIG_DVB_STV0297 is not set
# CONFIG_DVB_TDA10021 is not set
# CONFIG_DVB_TDA10023 is not set
# CONFIG_DVB_VES1820 is not set

#
# ATSC (North American/Korean Terrestrial/Cable DTV) frontends
#
# CONFIG_DVB_AU8522_DTV is not set
# CONFIG_DVB_AU8522_V4L is not set
# CONFIG_DVB_BCM3510 is not set
# CONFIG_DVB_LG2160 is not set
# CONFIG_DVB_LGDT3305 is not set
# CONFIG_DVB_LGDT3306A is not set
# CONFIG_DVB_LGDT330X is not set
# CONFIG_DVB_MXL692 is not set
# CONFIG_DVB_NXT200X is not set
# CONFIG_DVB_OR51132 is not set
# CONFIG_DVB_OR51211 is not set
# CONFIG_DVB_S5H1409 is not set
# CONFIG_DVB_S5H1411 is not set

#
# ISDB-T (terrestrial) frontends
#
# CONFIG_DVB_DIB8000 is not set
# CONFIG_DVB_MB86A20S is not set
# CONFIG_DVB_S921 is not set

#
# ISDB-S (satellite) & ISDB-T (terrestrial) frontends
#
# CONFIG_DVB_MN88443X is not set
# CONFIG_DVB_TC90522 is not set

#
# Digital terrestrial only tuners/PLL
#
# CONFIG_DVB_PLL is not set
# CONFIG_DVB_TUNER_DIB0070 is not set
# CONFIG_DVB_TUNER_DIB0090 is not set

#
# SEC control devices for DVB-S
#
# CONFIG_DVB_A8293 is not set
CONFIG_DVB_AF9033=3Dy
# CONFIG_DVB_ASCOT2E is not set
# CONFIG_DVB_ATBM8830 is not set
# CONFIG_DVB_HELENE is not set
# CONFIG_DVB_HORUS3A is not set
# CONFIG_DVB_ISL6405 is not set
# CONFIG_DVB_ISL6421 is not set
# CONFIG_DVB_ISL6423 is not set
# CONFIG_DVB_IX2505V is not set
# CONFIG_DVB_LGS8GL5 is not set
# CONFIG_DVB_LGS8GXX is not set
# CONFIG_DVB_LNBH25 is not set
# CONFIG_DVB_LNBH29 is not set
# CONFIG_DVB_LNBP21 is not set
# CONFIG_DVB_LNBP22 is not set
# CONFIG_DVB_M88RS2000 is not set
# CONFIG_DVB_TDA665x is not set
# CONFIG_DVB_DRX39XYJ is not set

#
# Common Interface (EN50221) controller drivers
#
# CONFIG_DVB_CXD2099 is not set
# CONFIG_DVB_SP2 is not set
# end of Customise DVB Frontends

#
# Tools to develop new frontends
#
# CONFIG_DVB_DUMMY_FE is not set
# end of Media ancillary drivers

#
# Graphics support
#
CONFIG_APERTURE_HELPERS=3Dy
CONFIG_SCREEN_INFO=3Dy
CONFIG_VIDEO=3Dy
# CONFIG_AUXDISPLAY is not set
# CONFIG_PANEL is not set
CONFIG_AGP=3Dy
CONFIG_AGP_AMD64=3Dy
CONFIG_AGP_INTEL=3Dy
# CONFIG_AGP_SIS is not set
# CONFIG_AGP_VIA is not set
CONFIG_INTEL_GTT=3Dy
# CONFIG_VGA_SWITCHEROO is not set
CONFIG_DRM=3Dy
CONFIG_DRM_MIPI_DSI=3Dy
CONFIG_DRM_DEBUG_MM=3Dy
CONFIG_DRM_KMS_HELPER=3Dy
# CONFIG_DRM_PANIC is not set
# CONFIG_DRM_DEBUG_DP_MST_TOPOLOGY_REFS is not set
# CONFIG_DRM_DEBUG_MODESET_LOCK is not set
CONFIG_DRM_CLIENT=3Dy
CONFIG_DRM_CLIENT_LIB=3Dy
CONFIG_DRM_CLIENT_SELECTION=3Dy
CONFIG_DRM_CLIENT_SETUP=3Dy

#
# Supported DRM clients
#
CONFIG_DRM_FBDEV_EMULATION=3Dy
CONFIG_DRM_FBDEV_OVERALLOC=3D100
# CONFIG_DRM_FBDEV_LEAK_PHYS_SMEM is not set
# end of Supported DRM clients

# CONFIG_DRM_LOAD_EDID_FIRMWARE is not set
CONFIG_DRM_DISPLAY_DP_AUX_BUS=3Dy
CONFIG_DRM_DISPLAY_HELPER=3Dy
# CONFIG_DRM_DISPLAY_DP_AUX_CEC is not set
# CONFIG_DRM_DISPLAY_DP_AUX_CHARDEV is not set
CONFIG_DRM_DISPLAY_DP_HELPER=3Dy
CONFIG_DRM_DISPLAY_DSC_HELPER=3Dy
CONFIG_DRM_DISPLAY_HDCP_HELPER=3Dy
CONFIG_DRM_DISPLAY_HDMI_HELPER=3Dy
CONFIG_DRM_TTM=3Dy
CONFIG_DRM_BUDDY=3Dy
CONFIG_DRM_TTM_HELPER=3Dy
CONFIG_DRM_GEM_SHMEM_HELPER=3Dy

#
# I2C encoder or helper chips
#
# CONFIG_DRM_I2C_CH7006 is not set
# CONFIG_DRM_I2C_SIL164 is not set
# CONFIG_DRM_I2C_NXP_TDA998X is not set
# CONFIG_DRM_I2C_NXP_TDA9950 is not set
# end of I2C encoder or helper chips

#
# ARM devices
#
# CONFIG_DRM_KOMEDA is not set
# end of ARM devices

# CONFIG_DRM_RADEON is not set
# CONFIG_DRM_AMDGPU is not set
# CONFIG_DRM_NOUVEAU is not set
CONFIG_DRM_I915=3Dy
CONFIG_DRM_I915_FORCE_PROBE=3D""
CONFIG_DRM_I915_CAPTURE_ERROR=3Dy
CONFIG_DRM_I915_COMPRESS_ERROR=3Dy
CONFIG_DRM_I915_USERPTR=3Dy
# CONFIG_DRM_I915_GVT_KVMGT is not set
# CONFIG_DRM_I915_DP_TUNNEL is not set

#
# drm/i915 Debugging
#
# CONFIG_DRM_I915_WERROR is not set
# CONFIG_DRM_I915_REPLAY_GPU_HANGS_API is not set
# CONFIG_DRM_I915_DEBUG is not set
# CONFIG_DRM_I915_DEBUG_MMIO is not set
# CONFIG_DRM_I915_SW_FENCE_DEBUG_OBJECTS is not set
# CONFIG_DRM_I915_SW_FENCE_CHECK_DAG is not set
# CONFIG_DRM_I915_DEBUG_GUC is not set
# CONFIG_DRM_I915_SELFTEST is not set
# CONFIG_DRM_I915_LOW_LEVEL_TRACEPOINTS is not set
# CONFIG_DRM_I915_DEBUG_VBLANK_EVADE is not set
# CONFIG_DRM_I915_DEBUG_RUNTIME_PM is not set
# CONFIG_DRM_I915_DEBUG_WAKEREF is not set
# end of drm/i915 Debugging

#
# drm/i915 Profile Guided Optimisation
#
CONFIG_DRM_I915_REQUEST_TIMEOUT=3D20000
CONFIG_DRM_I915_FENCE_TIMEOUT=3D10000
CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND=3D250
CONFIG_DRM_I915_HEARTBEAT_INTERVAL=3D2500
CONFIG_DRM_I915_PREEMPT_TIMEOUT=3D640
CONFIG_DRM_I915_PREEMPT_TIMEOUT_COMPUTE=3D7500
CONFIG_DRM_I915_MAX_REQUEST_BUSYWAIT=3D8000
CONFIG_DRM_I915_STOP_TIMEOUT=3D100
CONFIG_DRM_I915_TIMESLICE_DURATION=3D1
# end of drm/i915 Profile Guided Optimisation

# CONFIG_DRM_XE is not set
CONFIG_DRM_VGEM=3Dy
CONFIG_DRM_VKMS=3Dy
CONFIG_DRM_VMWGFX=3Dy
# CONFIG_DRM_VMWGFX_MKSSTATS is not set
# CONFIG_DRM_GMA500 is not set
CONFIG_DRM_UDL=3Dy
# CONFIG_DRM_AST is not set
# CONFIG_DRM_MGAG200 is not set
# CONFIG_DRM_QXL is not set
CONFIG_DRM_VIRTIO_GPU=3Dy
CONFIG_DRM_VIRTIO_GPU_KMS=3Dy
CONFIG_DRM_PANEL=3Dy

#
# Display Panels
#
# CONFIG_DRM_PANEL_ABT_Y030XX067A is not set
# CONFIG_DRM_PANEL_ARM_VERSATILE is not set
# CONFIG_DRM_PANEL_ASUS_Z00T_TM5P5_NT35596 is not set
# CONFIG_DRM_PANEL_AUO_A030JTN01 is not set
# CONFIG_DRM_PANEL_BOE_BF060Y8M_AJ0 is not set
# CONFIG_DRM_PANEL_BOE_HIMAX8279D is not set
# CONFIG_DRM_PANEL_BOE_TH101MB31UIG002_28A is not set
# CONFIG_DRM_PANEL_BOE_TV101WUM_NL6 is not set
# CONFIG_DRM_PANEL_BOE_TV101WUM_LL2 is not set
# CONFIG_DRM_PANEL_EBBG_FT8719 is not set
# CONFIG_DRM_PANEL_ELIDA_KD35T133 is not set
# CONFIG_DRM_PANEL_FEIXIN_K101_IM2BA02 is not set
# CONFIG_DRM_PANEL_FEIYANG_FY07024DI26A30D is not set
# CONFIG_DRM_PANEL_DSI_CM is not set
# CONFIG_DRM_PANEL_LVDS is not set
# CONFIG_DRM_PANEL_HIMAX_HX83102 is not set
# CONFIG_DRM_PANEL_HIMAX_HX83112A is not set
# CONFIG_DRM_PANEL_HIMAX_HX8394 is not set
# CONFIG_DRM_PANEL_ILITEK_IL9322 is not set
# CONFIG_DRM_PANEL_ILITEK_ILI9341 is not set
# CONFIG_DRM_PANEL_ILITEK_ILI9805 is not set
# CONFIG_DRM_PANEL_ILITEK_ILI9806E is not set
# CONFIG_DRM_PANEL_ILITEK_ILI9881C is not set
# CONFIG_DRM_PANEL_ILITEK_ILI9882T is not set
# CONFIG_DRM_PANEL_INNOLUX_EJ030NA is not set
# CONFIG_DRM_PANEL_INNOLUX_P079ZCA is not set
# CONFIG_DRM_PANEL_JADARD_JD9365DA_H3 is not set
# CONFIG_DRM_PANEL_JDI_LPM102A188A is not set
# CONFIG_DRM_PANEL_JDI_LT070ME05000 is not set
# CONFIG_DRM_PANEL_JDI_R63452 is not set
# CONFIG_DRM_PANEL_KHADAS_TS050 is not set
# CONFIG_DRM_PANEL_KINGDISPLAY_KD097D04 is not set
# CONFIG_DRM_PANEL_LEADTEK_LTK050H3146W is not set
# CONFIG_DRM_PANEL_LEADTEK_LTK500HD1829 is not set
# CONFIG_DRM_PANEL_LINCOLNTECH_LCD197 is not set
# CONFIG_DRM_PANEL_LG_LB035Q02 is not set
# CONFIG_DRM_PANEL_LG_LG4573 is not set
# CONFIG_DRM_PANEL_LG_SW43408 is not set
# CONFIG_DRM_PANEL_MAGNACHIP_D53E6EA8966 is not set
# CONFIG_DRM_PANEL_MANTIX_MLAF057WE51 is not set
# CONFIG_DRM_PANEL_NEC_NL8048HL11 is not set
# CONFIG_DRM_PANEL_NEWVISION_NV3051D is not set
# CONFIG_DRM_PANEL_NEWVISION_NV3052C is not set
# CONFIG_DRM_PANEL_NOVATEK_NT35510 is not set
# CONFIG_DRM_PANEL_NOVATEK_NT35560 is not set
# CONFIG_DRM_PANEL_NOVATEK_NT35950 is not set
# CONFIG_DRM_PANEL_NOVATEK_NT36523 is not set
# CONFIG_DRM_PANEL_NOVATEK_NT36672A is not set
# CONFIG_DRM_PANEL_NOVATEK_NT36672E is not set
# CONFIG_DRM_PANEL_NOVATEK_NT39016 is not set
# CONFIG_DRM_PANEL_OLIMEX_LCD_OLINUXINO is not set
# CONFIG_DRM_PANEL_ORISETECH_OTA5601A is not set
# CONFIG_DRM_PANEL_ORISETECH_OTM8009A is not set
# CONFIG_DRM_PANEL_OSD_OSD101T2587_53TS is not set
# CONFIG_DRM_PANEL_PANASONIC_VVX10F034N00 is not set
# CONFIG_DRM_PANEL_RASPBERRYPI_TOUCHSCREEN is not set
# CONFIG_DRM_PANEL_RAYDIUM_RM67191 is not set
# CONFIG_DRM_PANEL_RAYDIUM_RM68200 is not set
# CONFIG_DRM_PANEL_RAYDIUM_RM692E5 is not set
# CONFIG_DRM_PANEL_RAYDIUM_RM69380 is not set
# CONFIG_DRM_PANEL_RONBO_RB070D30 is not set
# CONFIG_DRM_PANEL_SAMSUNG_AMS581VF01 is not set
# CONFIG_DRM_PANEL_SAMSUNG_AMS639RQ08 is not set
# CONFIG_DRM_PANEL_SAMSUNG_S6E88A0_AMS427AP24 is not set
# CONFIG_DRM_PANEL_SAMSUNG_S6E88A0_AMS452EF01 is not set
# CONFIG_DRM_PANEL_SAMSUNG_ATNA33XC20 is not set
# CONFIG_DRM_PANEL_SAMSUNG_DB7430 is not set
# CONFIG_DRM_PANEL_SAMSUNG_LD9040 is not set
# CONFIG_DRM_PANEL_SAMSUNG_S6E3FA7 is not set
# CONFIG_DRM_PANEL_SAMSUNG_S6D16D0 is not set
# CONFIG_DRM_PANEL_SAMSUNG_S6D27A1 is not set
# CONFIG_DRM_PANEL_SAMSUNG_S6D7AA0 is not set
# CONFIG_DRM_PANEL_SAMSUNG_S6E3HA2 is not set
# CONFIG_DRM_PANEL_SAMSUNG_S6E3HA8 is not set
# CONFIG_DRM_PANEL_SAMSUNG_S6E63J0X03 is not set
# CONFIG_DRM_PANEL_SAMSUNG_S6E63M0 is not set
# CONFIG_DRM_PANEL_SAMSUNG_S6E8AA0 is not set
# CONFIG_DRM_PANEL_SAMSUNG_SOFEF00 is not set
# CONFIG_DRM_PANEL_SEIKO_43WVF1G is not set
# CONFIG_DRM_PANEL_SHARP_LQ101R1SX01 is not set
# CONFIG_DRM_PANEL_SHARP_LS037V7DW01 is not set
# CONFIG_DRM_PANEL_SHARP_LS043T1LE01 is not set
# CONFIG_DRM_PANEL_SHARP_LS060T1SX01 is not set
# CONFIG_DRM_PANEL_SITRONIX_ST7701 is not set
# CONFIG_DRM_PANEL_SITRONIX_ST7703 is not set
# CONFIG_DRM_PANEL_SITRONIX_ST7789V is not set
# CONFIG_DRM_PANEL_SONY_ACX565AKM is not set
# CONFIG_DRM_PANEL_SONY_TD4353_JDI is not set
# CONFIG_DRM_PANEL_SONY_TULIP_TRULY_NT35521 is not set
# CONFIG_DRM_PANEL_STARTEK_KD070FHFID015 is not set
CONFIG_DRM_PANEL_EDP=3Dy
# CONFIG_DRM_PANEL_SIMPLE is not set
# CONFIG_DRM_PANEL_SYNAPTICS_R63353 is not set
# CONFIG_DRM_PANEL_TDO_TL070WSH30 is not set
# CONFIG_DRM_PANEL_TPO_TD028TTEC1 is not set
# CONFIG_DRM_PANEL_TPO_TD043MTEA1 is not set
# CONFIG_DRM_PANEL_TPO_TPG110 is not set
# CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA is not set
# CONFIG_DRM_PANEL_VISIONOX_R66451 is not set
# CONFIG_DRM_PANEL_VISIONOX_RM69299 is not set
# CONFIG_DRM_PANEL_VISIONOX_VTDR6130 is not set
# CONFIG_DRM_PANEL_WIDECHIPS_WS2401 is not set
# CONFIG_DRM_PANEL_XINPENG_XPP055C272 is not set
# end of Display Panels

CONFIG_DRM_BRIDGE=3Dy
CONFIG_DRM_PANEL_BRIDGE=3Dy
CONFIG_DRM_AUX_BRIDGE=3Dy

#
# Display Interface Bridges
#
# CONFIG_DRM_CHIPONE_ICN6211 is not set
# CONFIG_DRM_CHRONTEL_CH7033 is not set
# CONFIG_DRM_DISPLAY_CONNECTOR is not set
# CONFIG_DRM_ITE_IT6263 is not set
# CONFIG_DRM_ITE_IT6505 is not set
# CONFIG_DRM_LONTIUM_LT8912B is not set
# CONFIG_DRM_LONTIUM_LT9211 is not set
# CONFIG_DRM_LONTIUM_LT9611 is not set
# CONFIG_DRM_LONTIUM_LT9611UXC is not set
# CONFIG_DRM_ITE_IT66121 is not set
# CONFIG_DRM_LVDS_CODEC is not set
# CONFIG_DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW is not set
# CONFIG_DRM_NWL_MIPI_DSI is not set
# CONFIG_DRM_NXP_PTN3460 is not set
# CONFIG_DRM_PARADE_PS8622 is not set
# CONFIG_DRM_PARADE_PS8640 is not set
# CONFIG_DRM_SAMSUNG_DSIM is not set
# CONFIG_DRM_SIL_SII8620 is not set
# CONFIG_DRM_SII902X is not set
# CONFIG_DRM_SII9234 is not set
# CONFIG_DRM_SIMPLE_BRIDGE is not set
# CONFIG_DRM_THINE_THC63LVD1024 is not set
# CONFIG_DRM_TOSHIBA_TC358762 is not set
# CONFIG_DRM_TOSHIBA_TC358764 is not set
# CONFIG_DRM_TOSHIBA_TC358767 is not set
# CONFIG_DRM_TOSHIBA_TC358768 is not set
# CONFIG_DRM_TOSHIBA_TC358775 is not set
# CONFIG_DRM_TI_DLPC3433 is not set
# CONFIG_DRM_TI_TDP158 is not set
# CONFIG_DRM_TI_TFP410 is not set
# CONFIG_DRM_TI_SN65DSI83 is not set
# CONFIG_DRM_TI_SN65DSI86 is not set
# CONFIG_DRM_TI_TPD12S015 is not set
# CONFIG_DRM_ANALOGIX_ANX6345 is not set
# CONFIG_DRM_ANALOGIX_ANX78XX is not set
# CONFIG_DRM_ANALOGIX_ANX7625 is not set
# CONFIG_DRM_I2C_ADV7511 is not set
# CONFIG_DRM_CDNS_DSI is not set
# CONFIG_DRM_CDNS_MHDP8546 is not set
# end of Display Interface Bridges

# CONFIG_DRM_ETNAVIV is not set
# CONFIG_DRM_LOGICVC is not set
# CONFIG_DRM_ARCPGU is not set
CONFIG_DRM_BOCHS=3Dy
CONFIG_DRM_CIRRUS_QEMU=3Dy
CONFIG_DRM_GM12U320=3Dy
# CONFIG_DRM_PANEL_MIPI_DBI is not set
CONFIG_DRM_SIMPLEDRM=3Dy
# CONFIG_TINYDRM_HX8357D is not set
# CONFIG_TINYDRM_ILI9163 is not set
# CONFIG_TINYDRM_ILI9225 is not set
# CONFIG_TINYDRM_ILI9341 is not set
# CONFIG_TINYDRM_ILI9486 is not set
# CONFIG_TINYDRM_MI0283QT is not set
# CONFIG_TINYDRM_REPAPER is not set
# CONFIG_TINYDRM_SHARP_MEMORY is not set
# CONFIG_TINYDRM_ST7586 is not set
# CONFIG_TINYDRM_ST7735R is not set
# CONFIG_DRM_VBOXVIDEO is not set
CONFIG_DRM_GUD=3Dy
# CONFIG_DRM_SSD130X is not set
# CONFIG_DRM_WERROR is not set
CONFIG_DRM_PANEL_ORIENTATION_QUIRKS=3Dy

#
# Frame buffer Devices
#
CONFIG_FB=3Dy
# CONFIG_FB_CIRRUS is not set
# CONFIG_FB_PM2 is not set
# CONFIG_FB_CYBER2000 is not set
# CONFIG_FB_ARC is not set
# CONFIG_FB_ASILIANT is not set
# CONFIG_FB_IMSTT is not set
CONFIG_FB_VGA16=3Dy
# CONFIG_FB_UVESA is not set
CONFIG_FB_VESA=3Dy
# CONFIG_FB_N411 is not set
# CONFIG_FB_HGA is not set
# CONFIG_FB_OPENCORES is not set
# CONFIG_FB_S1D13XXX is not set
# CONFIG_FB_NVIDIA is not set
# CONFIG_FB_RIVA is not set
# CONFIG_FB_I740 is not set
# CONFIG_FB_MATROX is not set
# CONFIG_FB_RADEON is not set
# CONFIG_FB_ATY128 is not set
# CONFIG_FB_ATY is not set
# CONFIG_FB_S3 is not set
# CONFIG_FB_SAVAGE is not set
# CONFIG_FB_SIS is not set
# CONFIG_FB_VIA is not set
# CONFIG_FB_NEOMAGIC is not set
# CONFIG_FB_KYRO is not set
# CONFIG_FB_3DFX is not set
# CONFIG_FB_VOODOO1 is not set
# CONFIG_FB_VT8623 is not set
# CONFIG_FB_TRIDENT is not set
# CONFIG_FB_ARK is not set
# CONFIG_FB_PM3 is not set
# CONFIG_FB_CARMINE is not set
# CONFIG_FB_SMSCUFX is not set
# CONFIG_FB_UDL is not set
# CONFIG_FB_IBM_GXT4500 is not set
CONFIG_FB_VIRTUAL=3Dy
# CONFIG_FB_METRONOME is not set
# CONFIG_FB_MB862XX is not set
# CONFIG_FB_SSD1307 is not set
# CONFIG_FB_SM712 is not set
CONFIG_FB_CORE=3Dy
CONFIG_FB_NOTIFY=3Dy
# CONFIG_FIRMWARE_EDID is not set
CONFIG_FB_DEVICE=3Dy
CONFIG_FB_CFB_FILLRECT=3Dy
CONFIG_FB_CFB_COPYAREA=3Dy
CONFIG_FB_CFB_IMAGEBLIT=3Dy
CONFIG_FB_SYS_FILLRECT=3Dy
CONFIG_FB_SYS_COPYAREA=3Dy
CONFIG_FB_SYS_IMAGEBLIT=3Dy
# CONFIG_FB_FOREIGN_ENDIAN is not set
CONFIG_FB_SYSMEM_FOPS=3Dy
CONFIG_FB_DEFERRED_IO=3Dy
CONFIG_FB_IOMEM_FOPS=3Dy
CONFIG_FB_IOMEM_HELPERS=3Dy
CONFIG_FB_SYSMEM_HELPERS=3Dy
CONFIG_FB_SYSMEM_HELPERS_DEFERRED=3Dy
# CONFIG_FB_MODE_HELPERS is not set
CONFIG_FB_TILEBLITTING=3Dy
# end of Frame buffer Devices

#
# Backlight & LCD device support
#
CONFIG_LCD_CLASS_DEVICE=3Dy
# CONFIG_LCD_L4F00242T03 is not set
# CONFIG_LCD_LMS283GF05 is not set
# CONFIG_LCD_LTV350QV is not set
# CONFIG_LCD_ILI922X is not set
# CONFIG_LCD_ILI9320 is not set
# CONFIG_LCD_TDO24M is not set
# CONFIG_LCD_VGG2432A4 is not set
# CONFIG_LCD_PLATFORM is not set
# CONFIG_LCD_AMS369FG06 is not set
# CONFIG_LCD_LMS501KF03 is not set
# CONFIG_LCD_HX8357 is not set
# CONFIG_LCD_OTM3225A is not set
CONFIG_BACKLIGHT_CLASS_DEVICE=3Dy
# CONFIG_BACKLIGHT_KTD253 is not set
# CONFIG_BACKLIGHT_KTD2801 is not set
# CONFIG_BACKLIGHT_KTZ8866 is not set
# CONFIG_BACKLIGHT_MT6370 is not set
# CONFIG_BACKLIGHT_APPLE is not set
# CONFIG_BACKLIGHT_QCOM_WLED is not set
# CONFIG_BACKLIGHT_SAHARA is not set
# CONFIG_BACKLIGHT_ADP8860 is not set
# CONFIG_BACKLIGHT_ADP8870 is not set
# CONFIG_BACKLIGHT_LM3509 is not set
# CONFIG_BACKLIGHT_LM3639 is not set
# CONFIG_BACKLIGHT_PANDORA is not set
# CONFIG_BACKLIGHT_GPIO is not set
# CONFIG_BACKLIGHT_LV5207LP is not set
# CONFIG_BACKLIGHT_BD6107 is not set
# CONFIG_BACKLIGHT_ARCXCNN is not set
# CONFIG_BACKLIGHT_LED is not set
# end of Backlight & LCD device support

CONFIG_VGASTATE=3Dy
CONFIG_VIDEOMODE_HELPERS=3Dy
CONFIG_HDMI=3Dy

#
# Console display driver support
#
CONFIG_VGA_CONSOLE=3Dy
CONFIG_DUMMY_CONSOLE=3Dy
CONFIG_DUMMY_CONSOLE_COLUMNS=3D80
CONFIG_DUMMY_CONSOLE_ROWS=3D25
CONFIG_FRAMEBUFFER_CONSOLE=3Dy
# CONFIG_FRAMEBUFFER_CONSOLE_LEGACY_ACCELERATION is not set
CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY=3Dy
CONFIG_FRAMEBUFFER_CONSOLE_ROTATION=3Dy
# CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER is not set
# end of Console display driver support

CONFIG_LOGO=3Dy
CONFIG_LOGO_LINUX_MONO=3Dy
CONFIG_LOGO_LINUX_VGA16=3Dy
# CONFIG_LOGO_LINUX_CLUT224 is not set
# end of Graphics support

# CONFIG_DRM_ACCEL is not set
CONFIG_SOUND=3Dy
CONFIG_SOUND_OSS_CORE=3Dy
CONFIG_SOUND_OSS_CORE_PRECLAIM=3Dy
CONFIG_SND=3Dy
CONFIG_SND_TIMER=3Dy
CONFIG_SND_PCM=3Dy
CONFIG_SND_HWDEP=3Dy
CONFIG_SND_SEQ_DEVICE=3Dy
CONFIG_SND_RAWMIDI=3Dy
CONFIG_SND_UMP=3Dy
CONFIG_SND_UMP_LEGACY_RAWMIDI=3Dy
CONFIG_SND_JACK=3Dy
CONFIG_SND_JACK_INPUT_DEV=3Dy
CONFIG_SND_OSSEMUL=3Dy
CONFIG_SND_MIXER_OSS=3Dy
CONFIG_SND_PCM_OSS=3Dy
CONFIG_SND_PCM_OSS_PLUGINS=3Dy
CONFIG_SND_PCM_TIMER=3Dy
CONFIG_SND_HRTIMER=3Dy
CONFIG_SND_DYNAMIC_MINORS=3Dy
CONFIG_SND_MAX_CARDS=3D32
CONFIG_SND_SUPPORT_OLD_API=3Dy
CONFIG_SND_PROC_FS=3Dy
CONFIG_SND_VERBOSE_PROCFS=3Dy
CONFIG_SND_CTL_FAST_LOOKUP=3Dy
CONFIG_SND_DEBUG=3Dy
# CONFIG_SND_DEBUG_VERBOSE is not set
CONFIG_SND_PCM_XRUN_DEBUG=3Dy
# CONFIG_SND_CTL_INPUT_VALIDATION is not set
# CONFIG_SND_CTL_DEBUG is not set
# CONFIG_SND_JACK_INJECTION_DEBUG is not set
# CONFIG_SND_UTIMER is not set
CONFIG_SND_VMASTER=3Dy
CONFIG_SND_DMA_SGBUF=3Dy
CONFIG_SND_CTL_LED=3Dy
CONFIG_SND_SEQUENCER=3Dy
CONFIG_SND_SEQ_DUMMY=3Dy
CONFIG_SND_SEQUENCER_OSS=3Dy
CONFIG_SND_SEQ_HRTIMER_DEFAULT=3Dy
CONFIG_SND_SEQ_MIDI_EVENT=3Dy
CONFIG_SND_SEQ_MIDI=3Dy
CONFIG_SND_SEQ_VIRMIDI=3Dy
# CONFIG_SND_SEQ_UMP is not set
CONFIG_SND_SEQ_UMP_CLIENT=3Dy
CONFIG_SND_DRIVERS=3Dy
# CONFIG_SND_PCSP is not set
CONFIG_SND_DUMMY=3Dy
CONFIG_SND_ALOOP=3Dy
# CONFIG_SND_PCMTEST is not set
CONFIG_SND_VIRMIDI=3Dy
# CONFIG_SND_MTPAV is not set
# CONFIG_SND_MTS64 is not set
# CONFIG_SND_SERIAL_U16550 is not set
# CONFIG_SND_SERIAL_GENERIC is not set
# CONFIG_SND_MPU401 is not set
# CONFIG_SND_PORTMAN2X4 is not set
CONFIG_SND_PCI=3Dy
# CONFIG_SND_AD1889 is not set
# CONFIG_SND_ALS300 is not set
# CONFIG_SND_ALS4000 is not set
# CONFIG_SND_ALI5451 is not set
# CONFIG_SND_ASIHPI is not set
# CONFIG_SND_ATIIXP is not set
# CONFIG_SND_ATIIXP_MODEM is not set
# CONFIG_SND_AU8810 is not set
# CONFIG_SND_AU8820 is not set
# CONFIG_SND_AU8830 is not set
# CONFIG_SND_AW2 is not set
# CONFIG_SND_AZT3328 is not set
# CONFIG_SND_BT87X is not set
# CONFIG_SND_CA0106 is not set
# CONFIG_SND_CMIPCI is not set
# CONFIG_SND_OXYGEN is not set
# CONFIG_SND_CS4281 is not set
# CONFIG_SND_CS46XX is not set
# CONFIG_SND_CTXFI is not set
# CONFIG_SND_DARLA20 is not set
# CONFIG_SND_GINA20 is not set
# CONFIG_SND_LAYLA20 is not set
# CONFIG_SND_DARLA24 is not set
# CONFIG_SND_GINA24 is not set
# CONFIG_SND_LAYLA24 is not set
# CONFIG_SND_MONA is not set
# CONFIG_SND_MIA is not set
# CONFIG_SND_ECHO3G is not set
# CONFIG_SND_INDIGO is not set
# CONFIG_SND_INDIGOIO is not set
# CONFIG_SND_INDIGODJ is not set
# CONFIG_SND_INDIGOIOX is not set
# CONFIG_SND_INDIGODJX is not set
# CONFIG_SND_EMU10K1 is not set
# CONFIG_SND_EMU10K1X is not set
# CONFIG_SND_ENS1370 is not set
# CONFIG_SND_ENS1371 is not set
# CONFIG_SND_ES1938 is not set
# CONFIG_SND_ES1968 is not set
# CONFIG_SND_FM801 is not set
# CONFIG_SND_HDSP is not set
# CONFIG_SND_HDSPM is not set
# CONFIG_SND_ICE1712 is not set
# CONFIG_SND_ICE1724 is not set
# CONFIG_SND_INTEL8X0 is not set
# CONFIG_SND_INTEL8X0M is not set
# CONFIG_SND_KORG1212 is not set
# CONFIG_SND_LOLA is not set
# CONFIG_SND_LX6464ES is not set
# CONFIG_SND_MAESTRO3 is not set
# CONFIG_SND_MIXART is not set
# CONFIG_SND_NM256 is not set
# CONFIG_SND_PCXHR is not set
# CONFIG_SND_RIPTIDE is not set
# CONFIG_SND_RME32 is not set
# CONFIG_SND_RME96 is not set
# CONFIG_SND_RME9652 is not set
# CONFIG_SND_SE6X is not set
# CONFIG_SND_SONICVIBES is not set
# CONFIG_SND_TRIDENT is not set
# CONFIG_SND_VIA82XX is not set
# CONFIG_SND_VIA82XX_MODEM is not set
# CONFIG_SND_VIRTUOSO is not set
# CONFIG_SND_VX222 is not set
# CONFIG_SND_YMFPCI is not set

#
# HD-Audio
#
CONFIG_SND_HDA=3Dy
CONFIG_SND_HDA_GENERIC_LEDS=3Dy
CONFIG_SND_HDA_INTEL=3Dy
CONFIG_SND_HDA_HWDEP=3Dy
CONFIG_SND_HDA_RECONFIG=3Dy
CONFIG_SND_HDA_INPUT_BEEP=3Dy
CONFIG_SND_HDA_INPUT_BEEP_MODE=3D1
CONFIG_SND_HDA_PATCH_LOADER=3Dy
CONFIG_SND_HDA_SCODEC_COMPONENT=3Dy
# CONFIG_SND_HDA_SCODEC_CS35L56_I2C is not set
# CONFIG_SND_HDA_SCODEC_CS35L56_SPI is not set
CONFIG_SND_HDA_CODEC_REALTEK=3Dy
CONFIG_SND_HDA_CODEC_ANALOG=3Dy
CONFIG_SND_HDA_CODEC_SIGMATEL=3Dy
CONFIG_SND_HDA_CODEC_VIA=3Dy
CONFIG_SND_HDA_CODEC_HDMI=3Dy
CONFIG_SND_HDA_CODEC_CIRRUS=3Dy
# CONFIG_SND_HDA_CODEC_CS8409 is not set
CONFIG_SND_HDA_CODEC_CONEXANT=3Dy
# CONFIG_SND_HDA_CODEC_SENARYTECH is not set
CONFIG_SND_HDA_CODEC_CA0110=3Dy
CONFIG_SND_HDA_CODEC_CA0132=3Dy
# CONFIG_SND_HDA_CODEC_CA0132_DSP is not set
CONFIG_SND_HDA_CODEC_CMEDIA=3Dy
CONFIG_SND_HDA_CODEC_SI3054=3Dy
CONFIG_SND_HDA_GENERIC=3Dy
CONFIG_SND_HDA_POWER_SAVE_DEFAULT=3D0
# CONFIG_SND_HDA_INTEL_HDMI_SILENT_STREAM is not set
# CONFIG_SND_HDA_CTL_DEV_ID is not set
# end of HD-Audio

CONFIG_SND_HDA_CORE=3Dy
CONFIG_SND_HDA_COMPONENT=3Dy
CONFIG_SND_HDA_I915=3Dy
CONFIG_SND_HDA_PREALLOC_SIZE=3D0
CONFIG_SND_INTEL_NHLT=3Dy
CONFIG_SND_INTEL_DSP_CONFIG=3Dy
CONFIG_SND_INTEL_SOUNDWIRE_ACPI=3Dy
# CONFIG_SND_SPI is not set
CONFIG_SND_USB=3Dy
CONFIG_SND_USB_AUDIO=3Dy
CONFIG_SND_USB_AUDIO_MIDI_V2=3Dy
CONFIG_SND_USB_AUDIO_USE_MEDIA_CONTROLLER=3Dy
CONFIG_SND_USB_UA101=3Dy
CONFIG_SND_USB_USX2Y=3Dy
CONFIG_SND_USB_CAIAQ=3Dy
CONFIG_SND_USB_CAIAQ_INPUT=3Dy
CONFIG_SND_USB_US122L=3Dy
CONFIG_SND_USB_6FIRE=3Dy
CONFIG_SND_USB_HIFACE=3Dy
CONFIG_SND_BCD2000=3Dy
CONFIG_SND_USB_LINE6=3Dy
CONFIG_SND_USB_POD=3Dy
CONFIG_SND_USB_PODHD=3Dy
CONFIG_SND_USB_TONEPORT=3Dy
CONFIG_SND_USB_VARIAX=3Dy
# CONFIG_SND_FIREWIRE is not set
CONFIG_SND_PCMCIA=3Dy
# CONFIG_SND_VXPOCKET is not set
# CONFIG_SND_PDAUDIOCF is not set
CONFIG_SND_SOC=3Dy
# CONFIG_SND_SOC_ADI is not set
# CONFIG_SND_SOC_AMD_ACP is not set
# CONFIG_SND_SOC_AMD_ACP3x is not set
# CONFIG_SND_SOC_AMD_RENOIR is not set
# CONFIG_SND_SOC_AMD_ACP5x is not set
# CONFIG_SND_SOC_AMD_ACP6x is not set
# CONFIG_SND_AMD_ACP_CONFIG is not set
# CONFIG_SND_SOC_AMD_ACP_COMMON is not set
# CONFIG_SND_SOC_AMD_RPL_ACP6x is not set
# CONFIG_SND_ATMEL_SOC is not set
# CONFIG_SND_BCM63XX_I2S_WHISTLER is not set
# CONFIG_SND_DESIGNWARE_I2S is not set

#
# SoC Audio for Freescale CPUs
#

#
# Common SoC Audio options for Freescale CPUs:
#
# CONFIG_SND_SOC_FSL_ASRC is not set
# CONFIG_SND_SOC_FSL_SAI is not set
# CONFIG_SND_SOC_FSL_AUDMIX is not set
# CONFIG_SND_SOC_FSL_SSI is not set
# CONFIG_SND_SOC_FSL_SPDIF is not set
# CONFIG_SND_SOC_FSL_ESAI is not set
# CONFIG_SND_SOC_FSL_MICFIL is not set
# CONFIG_SND_SOC_FSL_XCVR is not set
# CONFIG_SND_SOC_IMX_AUDMUX is not set
# end of SoC Audio for Freescale CPUs

# CONFIG_SND_SOC_CHV3_I2S is not set
# CONFIG_SND_I2S_HI6210_I2S is not set

#
# SoC Audio for Loongson CPUs
#
# end of SoC Audio for Loongson CPUs

# CONFIG_SND_SOC_IMG is not set
# CONFIG_SND_SOC_INTEL_SST_TOPLEVEL is not set
# CONFIG_SND_SOC_INTEL_AVS is not set
# CONFIG_SND_SOC_MTK_BTCVSD is not set
CONFIG_SND_SOC_SDCA_OPTIONAL=3Dy
# CONFIG_SND_SOC_SOF_TOPLEVEL is not set

#
# STMicroelectronics STM32 SOC audio support
#
# end of STMicroelectronics STM32 SOC audio support

# CONFIG_SND_SOC_XILINX_I2S is not set
# CONFIG_SND_SOC_XILINX_AUDIO_FORMATTER is not set
# CONFIG_SND_SOC_XILINX_SPDIF is not set
# CONFIG_SND_SOC_XTFPGA_I2S is not set
CONFIG_SND_SOC_I2C_AND_SPI=3Dy

#
# CODEC drivers
#
# CONFIG_SND_SOC_AC97_CODEC is not set
# CONFIG_SND_SOC_ADAU1372_I2C is not set
# CONFIG_SND_SOC_ADAU1372_SPI is not set
# CONFIG_SND_SOC_ADAU1373 is not set
# CONFIG_SND_SOC_ADAU1701 is not set
# CONFIG_SND_SOC_ADAU1761_I2C is not set
# CONFIG_SND_SOC_ADAU1761_SPI is not set
# CONFIG_SND_SOC_ADAU7002 is not set
# CONFIG_SND_SOC_ADAU7118_HW is not set
# CONFIG_SND_SOC_ADAU7118_I2C is not set
# CONFIG_SND_SOC_AK4104 is not set
# CONFIG_SND_SOC_AK4118 is not set
# CONFIG_SND_SOC_AK4375 is not set
# CONFIG_SND_SOC_AK4458 is not set
# CONFIG_SND_SOC_AK4554 is not set
# CONFIG_SND_SOC_AK4613 is not set
# CONFIG_SND_SOC_AK4619 is not set
# CONFIG_SND_SOC_AK4642 is not set
# CONFIG_SND_SOC_AK5386 is not set
# CONFIG_SND_SOC_AK5558 is not set
# CONFIG_SND_SOC_ALC5623 is not set
# CONFIG_SND_SOC_AUDIO_IIO_AUX is not set
# CONFIG_SND_SOC_AW8738 is not set
# CONFIG_SND_SOC_AW88395 is not set
# CONFIG_SND_SOC_AW88261 is not set
# CONFIG_SND_SOC_AW88081 is not set
# CONFIG_SND_SOC_AW87390 is not set
# CONFIG_SND_SOC_AW88399 is not set
# CONFIG_SND_SOC_BD28623 is not set
# CONFIG_SND_SOC_BT_SCO is not set
# CONFIG_SND_SOC_CHV3_CODEC is not set
# CONFIG_SND_SOC_CS35L32 is not set
# CONFIG_SND_SOC_CS35L33 is not set
# CONFIG_SND_SOC_CS35L34 is not set
# CONFIG_SND_SOC_CS35L35 is not set
# CONFIG_SND_SOC_CS35L36 is not set
# CONFIG_SND_SOC_CS35L41_SPI is not set
# CONFIG_SND_SOC_CS35L41_I2C is not set
# CONFIG_SND_SOC_CS35L45_SPI is not set
# CONFIG_SND_SOC_CS35L45_I2C is not set
# CONFIG_SND_SOC_CS35L56_I2C is not set
# CONFIG_SND_SOC_CS35L56_SPI is not set
# CONFIG_SND_SOC_CS35L56_SDW is not set
# CONFIG_SND_SOC_CS42L42 is not set
# CONFIG_SND_SOC_CS42L42_SDW is not set
# CONFIG_SND_SOC_CS42L51_I2C is not set
# CONFIG_SND_SOC_CS42L52 is not set
# CONFIG_SND_SOC_CS42L56 is not set
# CONFIG_SND_SOC_CS42L73 is not set
# CONFIG_SND_SOC_CS42L83 is not set
# CONFIG_SND_SOC_CS42L84 is not set
# CONFIG_SND_SOC_CS4234 is not set
# CONFIG_SND_SOC_CS4265 is not set
# CONFIG_SND_SOC_CS4270 is not set
# CONFIG_SND_SOC_CS4271_I2C is not set
# CONFIG_SND_SOC_CS4271_SPI is not set
# CONFIG_SND_SOC_CS42XX8_I2C is not set
# CONFIG_SND_SOC_CS43130 is not set
# CONFIG_SND_SOC_CS4341 is not set
# CONFIG_SND_SOC_CS4349 is not set
# CONFIG_SND_SOC_CS53L30 is not set
# CONFIG_SND_SOC_CS530X_I2C is not set
# CONFIG_SND_SOC_CX2072X is not set
# CONFIG_SND_SOC_DA7213 is not set
# CONFIG_SND_SOC_DMIC is not set
# CONFIG_SND_SOC_ES7134 is not set
# CONFIG_SND_SOC_ES7241 is not set
# CONFIG_SND_SOC_ES8311 is not set
# CONFIG_SND_SOC_ES8316 is not set
# CONFIG_SND_SOC_ES8323 is not set
# CONFIG_SND_SOC_ES8326 is not set
# CONFIG_SND_SOC_ES8328_I2C is not set
# CONFIG_SND_SOC_ES8328_SPI is not set
# CONFIG_SND_SOC_GTM601 is not set
# CONFIG_SND_SOC_HDA is not set
# CONFIG_SND_SOC_ICS43432 is not set
# CONFIG_SND_SOC_IDT821034 is not set
# CONFIG_SND_SOC_MAX98088 is not set
# CONFIG_SND_SOC_MAX98090 is not set
# CONFIG_SND_SOC_MAX98357A is not set
# CONFIG_SND_SOC_MAX98504 is not set
# CONFIG_SND_SOC_MAX9867 is not set
# CONFIG_SND_SOC_MAX98927 is not set
# CONFIG_SND_SOC_MAX98520 is not set
# CONFIG_SND_SOC_MAX98363 is not set
# CONFIG_SND_SOC_MAX98373_I2C is not set
# CONFIG_SND_SOC_MAX98373_SDW is not set
# CONFIG_SND_SOC_MAX98388 is not set
# CONFIG_SND_SOC_MAX98390 is not set
# CONFIG_SND_SOC_MAX98396 is not set
# CONFIG_SND_SOC_MAX9860 is not set
# CONFIG_SND_SOC_MSM8916_WCD_DIGITAL is not set
# CONFIG_SND_SOC_PCM1681 is not set
# CONFIG_SND_SOC_PCM1789_I2C is not set
# CONFIG_SND_SOC_PCM179X_I2C is not set
# CONFIG_SND_SOC_PCM179X_SPI is not set
# CONFIG_SND_SOC_PCM186X_I2C is not set
# CONFIG_SND_SOC_PCM186X_SPI is not set
# CONFIG_SND_SOC_PCM3060_I2C is not set
# CONFIG_SND_SOC_PCM3060_SPI is not set
# CONFIG_SND_SOC_PCM3168A_I2C is not set
# CONFIG_SND_SOC_PCM3168A_SPI is not set
# CONFIG_SND_SOC_PCM5102A is not set
# CONFIG_SND_SOC_PCM512x_I2C is not set
# CONFIG_SND_SOC_PCM512x_SPI is not set
# CONFIG_SND_SOC_PCM6240 is not set
# CONFIG_SND_SOC_PEB2466 is not set
# CONFIG_SND_SOC_RT1017_SDCA_SDW is not set
# CONFIG_SND_SOC_RT1308_SDW is not set
# CONFIG_SND_SOC_RT1316_SDW is not set
# CONFIG_SND_SOC_RT1318_SDW is not set
# CONFIG_SND_SOC_RT1320_SDW is not set
# CONFIG_SND_SOC_RT5616 is not set
# CONFIG_SND_SOC_RT5631 is not set
# CONFIG_SND_SOC_RT5640 is not set
# CONFIG_SND_SOC_RT5659 is not set
# CONFIG_SND_SOC_RT5682_SDW is not set
# CONFIG_SND_SOC_RT700_SDW is not set
# CONFIG_SND_SOC_RT711_SDW is not set
# CONFIG_SND_SOC_RT711_SDCA_SDW is not set
# CONFIG_SND_SOC_RT712_SDCA_SDW is not set
# CONFIG_SND_SOC_RT712_SDCA_DMIC_SDW is not set
# CONFIG_SND_SOC_RT721_SDCA_SDW is not set
# CONFIG_SND_SOC_RT722_SDCA_SDW is not set
# CONFIG_SND_SOC_RT715_SDW is not set
# CONFIG_SND_SOC_RT715_SDCA_SDW is not set
# CONFIG_SND_SOC_RT9120 is not set
# CONFIG_SND_SOC_RTQ9128 is not set
# CONFIG_SND_SOC_SDW_MOCKUP is not set
# CONFIG_SND_SOC_SGTL5000 is not set
# CONFIG_SND_SOC_SIMPLE_AMPLIFIER is not set
# CONFIG_SND_SOC_SIMPLE_MUX is not set
# CONFIG_SND_SOC_SMA1303 is not set
# CONFIG_SND_SOC_SMA1307 is not set
# CONFIG_SND_SOC_SPDIF is not set
# CONFIG_SND_SOC_SRC4XXX_I2C is not set
# CONFIG_SND_SOC_SSM2305 is not set
# CONFIG_SND_SOC_SSM2518 is not set
# CONFIG_SND_SOC_SSM2602_SPI is not set
# CONFIG_SND_SOC_SSM2602_I2C is not set
# CONFIG_SND_SOC_SSM3515 is not set
# CONFIG_SND_SOC_SSM4567 is not set
# CONFIG_SND_SOC_STA32X is not set
# CONFIG_SND_SOC_STA350 is not set
# CONFIG_SND_SOC_STI_SAS is not set
# CONFIG_SND_SOC_TAS2552 is not set
# CONFIG_SND_SOC_TAS2562 is not set
# CONFIG_SND_SOC_TAS2764 is not set
# CONFIG_SND_SOC_TAS2770 is not set
# CONFIG_SND_SOC_TAS2780 is not set
# CONFIG_SND_SOC_TAS2781_I2C is not set
# CONFIG_SND_SOC_TAS5086 is not set
# CONFIG_SND_SOC_TAS571X is not set
# CONFIG_SND_SOC_TAS5720 is not set
# CONFIG_SND_SOC_TAS5805M is not set
# CONFIG_SND_SOC_TAS6424 is not set
# CONFIG_SND_SOC_TDA7419 is not set
# CONFIG_SND_SOC_TFA9879 is not set
# CONFIG_SND_SOC_TFA989X is not set
# CONFIG_SND_SOC_TLV320ADC3XXX is not set
# CONFIG_SND_SOC_TLV320AIC23_I2C is not set
# CONFIG_SND_SOC_TLV320AIC23_SPI is not set
# CONFIG_SND_SOC_TLV320AIC31XX is not set
# CONFIG_SND_SOC_TLV320AIC32X4_I2C is not set
# CONFIG_SND_SOC_TLV320AIC32X4_SPI is not set
# CONFIG_SND_SOC_TLV320AIC3X_I2C is not set
# CONFIG_SND_SOC_TLV320AIC3X_SPI is not set
# CONFIG_SND_SOC_TLV320ADCX140 is not set
# CONFIG_SND_SOC_TS3A227E is not set
# CONFIG_SND_SOC_TSCS42XX is not set
# CONFIG_SND_SOC_TSCS454 is not set
# CONFIG_SND_SOC_UDA1334 is not set
# CONFIG_SND_SOC_UDA1342 is not set
# CONFIG_SND_SOC_WCD937X_SDW is not set
# CONFIG_SND_SOC_WCD938X_SDW is not set
# CONFIG_SND_SOC_WCD939X_SDW is not set
# CONFIG_SND_SOC_WM8510 is not set
# CONFIG_SND_SOC_WM8523 is not set
# CONFIG_SND_SOC_WM8524 is not set
# CONFIG_SND_SOC_WM8580 is not set
# CONFIG_SND_SOC_WM8711 is not set
# CONFIG_SND_SOC_WM8728 is not set
# CONFIG_SND_SOC_WM8731_I2C is not set
# CONFIG_SND_SOC_WM8731_SPI is not set
# CONFIG_SND_SOC_WM8737 is not set
# CONFIG_SND_SOC_WM8741 is not set
# CONFIG_SND_SOC_WM8750 is not set
# CONFIG_SND_SOC_WM8753 is not set
# CONFIG_SND_SOC_WM8770 is not set
# CONFIG_SND_SOC_WM8776 is not set
# CONFIG_SND_SOC_WM8782 is not set
# CONFIG_SND_SOC_WM8804_I2C is not set
# CONFIG_SND_SOC_WM8804_SPI is not set
# CONFIG_SND_SOC_WM8903 is not set
# CONFIG_SND_SOC_WM8904 is not set
# CONFIG_SND_SOC_WM8940 is not set
# CONFIG_SND_SOC_WM8960 is not set
# CONFIG_SND_SOC_WM8961 is not set
# CONFIG_SND_SOC_WM8962 is not set
# CONFIG_SND_SOC_WM8974 is not set
# CONFIG_SND_SOC_WM8978 is not set
# CONFIG_SND_SOC_WM8985 is not set
# CONFIG_SND_SOC_WSA881X is not set
# CONFIG_SND_SOC_WSA883X is not set
# CONFIG_SND_SOC_WSA884X is not set
# CONFIG_SND_SOC_ZL38060 is not set
# CONFIG_SND_SOC_MAX9759 is not set
# CONFIG_SND_SOC_MT6351 is not set
# CONFIG_SND_SOC_MT6357 is not set
# CONFIG_SND_SOC_MT6358 is not set
# CONFIG_SND_SOC_MT6660 is not set
# CONFIG_SND_SOC_NAU8315 is not set
# CONFIG_SND_SOC_NAU8540 is not set
# CONFIG_SND_SOC_NAU8810 is not set
# CONFIG_SND_SOC_NAU8821 is not set
# CONFIG_SND_SOC_NAU8822 is not set
# CONFIG_SND_SOC_NAU8824 is not set
# CONFIG_SND_SOC_NTP8918 is not set
# CONFIG_SND_SOC_NTP8835 is not set
# CONFIG_SND_SOC_TPA6130A2 is not set
# CONFIG_SND_SOC_LPASS_WSA_MACRO is not set
# CONFIG_SND_SOC_LPASS_VA_MACRO is not set
# CONFIG_SND_SOC_LPASS_RX_MACRO is not set
# CONFIG_SND_SOC_LPASS_TX_MACRO is not set
# end of CODEC drivers

# CONFIG_SND_SIMPLE_CARD is not set
# CONFIG_SND_AUDIO_GRAPH_CARD is not set
# CONFIG_SND_AUDIO_GRAPH_CARD2 is not set
# CONFIG_SND_TEST_COMPONENT is not set
CONFIG_SND_X86=3Dy
# CONFIG_HDMI_LPE_AUDIO is not set
CONFIG_SND_VIRTIO=3Dy
CONFIG_HID_SUPPORT=3Dy
CONFIG_HID=3Dy
CONFIG_HID_BATTERY_STRENGTH=3Dy
CONFIG_HIDRAW=3Dy
CONFIG_UHID=3Dy
CONFIG_HID_GENERIC=3Dy

#
# Special HID drivers
#
CONFIG_HID_A4TECH=3Dy
CONFIG_HID_ACCUTOUCH=3Dy
CONFIG_HID_ACRUX=3Dy
CONFIG_HID_ACRUX_FF=3Dy
CONFIG_HID_APPLE=3Dy
CONFIG_HID_APPLEIR=3Dy
CONFIG_HID_ASUS=3Dy
CONFIG_HID_AUREAL=3Dy
CONFIG_HID_BELKIN=3Dy
CONFIG_HID_BETOP_FF=3Dy
CONFIG_HID_BIGBEN_FF=3Dy
CONFIG_HID_CHERRY=3Dy
CONFIG_HID_CHICONY=3Dy
CONFIG_HID_CORSAIR=3Dy
CONFIG_HID_COUGAR=3Dy
CONFIG_HID_MACALLY=3Dy
CONFIG_HID_PRODIKEYS=3Dy
CONFIG_HID_CMEDIA=3Dy
CONFIG_HID_CP2112=3Dy
CONFIG_HID_CREATIVE_SB0540=3Dy
CONFIG_HID_CYPRESS=3Dy
CONFIG_HID_DRAGONRISE=3Dy
CONFIG_DRAGONRISE_FF=3Dy
CONFIG_HID_EMS_FF=3Dy
CONFIG_HID_ELAN=3Dy
CONFIG_HID_ELECOM=3Dy
CONFIG_HID_ELO=3Dy
CONFIG_HID_EVISION=3Dy
CONFIG_HID_EZKEY=3Dy
CONFIG_HID_FT260=3Dy
CONFIG_HID_GEMBIRD=3Dy
CONFIG_HID_GFRM=3Dy
CONFIG_HID_GLORIOUS=3Dy
CONFIG_HID_HOLTEK=3Dy
CONFIG_HOLTEK_FF=3Dy
CONFIG_HID_VIVALDI_COMMON=3Dy
# CONFIG_HID_GOODIX_SPI is not set
CONFIG_HID_GOOGLE_STADIA_FF=3Dy
CONFIG_HID_VIVALDI=3Dy
CONFIG_HID_GT683R=3Dy
CONFIG_HID_KEYTOUCH=3Dy
CONFIG_HID_KYE=3Dy
# CONFIG_HID_KYSONA is not set
CONFIG_HID_UCLOGIC=3Dy
CONFIG_HID_WALTOP=3Dy
CONFIG_HID_VIEWSONIC=3Dy
CONFIG_HID_VRC2=3Dy
CONFIG_HID_XIAOMI=3Dy
CONFIG_HID_GYRATION=3Dy
CONFIG_HID_ICADE=3Dy
CONFIG_HID_ITE=3Dy
CONFIG_HID_JABRA=3Dy
CONFIG_HID_TWINHAN=3Dy
CONFIG_HID_KENSINGTON=3Dy
CONFIG_HID_LCPOWER=3Dy
CONFIG_HID_LED=3Dy
CONFIG_HID_LENOVO=3Dy
CONFIG_HID_LETSKETCH=3Dy
CONFIG_HID_LOGITECH=3Dy
CONFIG_HID_LOGITECH_DJ=3Dy
CONFIG_HID_LOGITECH_HIDPP=3Dy
CONFIG_LOGITECH_FF=3Dy
CONFIG_LOGIRUMBLEPAD2_FF=3Dy
CONFIG_LOGIG940_FF=3Dy
CONFIG_LOGIWHEELS_FF=3Dy
CONFIG_HID_MAGICMOUSE=3Dy
CONFIG_HID_MALTRON=3Dy
CONFIG_HID_MAYFLASH=3Dy
CONFIG_HID_MEGAWORLD_FF=3Dy
CONFIG_HID_REDRAGON=3Dy
CONFIG_HID_MICROSOFT=3Dy
CONFIG_HID_MONTEREY=3Dy
CONFIG_HID_MULTITOUCH=3Dy
CONFIG_HID_NINTENDO=3Dy
CONFIG_NINTENDO_FF=3Dy
CONFIG_HID_NTI=3Dy
CONFIG_HID_NTRIG=3Dy
CONFIG_HID_NVIDIA_SHIELD=3Dy
CONFIG_NVIDIA_SHIELD_FF=3Dy
CONFIG_HID_ORTEK=3Dy
CONFIG_HID_PANTHERLORD=3Dy
CONFIG_PANTHERLORD_FF=3Dy
CONFIG_HID_PENMOUNT=3Dy
CONFIG_HID_PETALYNX=3Dy
CONFIG_HID_PICOLCD=3Dy
CONFIG_HID_PICOLCD_FB=3Dy
CONFIG_HID_PICOLCD_BACKLIGHT=3Dy
CONFIG_HID_PICOLCD_LCD=3Dy
CONFIG_HID_PICOLCD_LEDS=3Dy
CONFIG_HID_PICOLCD_CIR=3Dy
CONFIG_HID_PLANTRONICS=3Dy
CONFIG_HID_PLAYSTATION=3Dy
CONFIG_PLAYSTATION_FF=3Dy
CONFIG_HID_PXRC=3Dy
CONFIG_HID_RAZER=3Dy
CONFIG_HID_PRIMAX=3Dy
CONFIG_HID_RETRODE=3Dy
CONFIG_HID_ROCCAT=3Dy
CONFIG_HID_SAITEK=3Dy
CONFIG_HID_SAMSUNG=3Dy
CONFIG_HID_SEMITEK=3Dy
CONFIG_HID_SIGMAMICRO=3Dy
CONFIG_HID_SONY=3Dy
CONFIG_SONY_FF=3Dy
CONFIG_HID_SPEEDLINK=3Dy
CONFIG_HID_STEAM=3Dy
CONFIG_STEAM_FF=3Dy
CONFIG_HID_STEELSERIES=3Dy
CONFIG_HID_SUNPLUS=3Dy
CONFIG_HID_RMI=3Dy
CONFIG_HID_GREENASIA=3Dy
CONFIG_GREENASIA_FF=3Dy
CONFIG_HID_SMARTJOYPLUS=3Dy
CONFIG_SMARTJOYPLUS_FF=3Dy
CONFIG_HID_TIVO=3Dy
CONFIG_HID_TOPSEED=3Dy
CONFIG_HID_TOPRE=3Dy
CONFIG_HID_THINGM=3Dy
CONFIG_HID_THRUSTMASTER=3Dy
CONFIG_THRUSTMASTER_FF=3Dy
CONFIG_HID_UDRAW_PS3=3Dy
CONFIG_HID_U2FZERO=3Dy
CONFIG_HID_WACOM=3Dy
CONFIG_HID_WIIMOTE=3Dy
# CONFIG_HID_WINWING is not set
CONFIG_HID_XINMO=3Dy
CONFIG_HID_ZEROPLUS=3Dy
CONFIG_ZEROPLUS_FF=3Dy
CONFIG_HID_ZYDACRON=3Dy
CONFIG_HID_SENSOR_HUB=3Dy
CONFIG_HID_SENSOR_CUSTOM_SENSOR=3Dy
CONFIG_HID_ALPS=3Dy
CONFIG_HID_MCP2200=3Dy
CONFIG_HID_MCP2221=3Dy
# end of Special HID drivers

#
# HID-BPF support
#
# end of HID-BPF support

#
# USB HID support
#
CONFIG_USB_HID=3Dy
CONFIG_HID_PID=3Dy
CONFIG_USB_HIDDEV=3Dy
# end of USB HID support

CONFIG_I2C_HID=3Dy
CONFIG_I2C_HID_ACPI=3Dy
CONFIG_I2C_HID_OF=3Dy
# CONFIG_I2C_HID_OF_ELAN is not set
# CONFIG_I2C_HID_OF_GOODIX is not set
CONFIG_I2C_HID_CORE=3Dy

#
# Intel ISH HID support
#
CONFIG_INTEL_ISH_HID=3Dy
CONFIG_INTEL_ISH_FIRMWARE_DOWNLOADER=3Dy
# end of Intel ISH HID support

#
# AMD SFH HID Support
#
CONFIG_AMD_SFH_HID=3Dy
# end of AMD SFH HID Support

CONFIG_USB_OHCI_LITTLE_ENDIAN=3Dy
CONFIG_USB_SUPPORT=3Dy
CONFIG_USB_COMMON=3Dy
CONFIG_USB_LED_TRIG=3Dy
CONFIG_USB_ULPI_BUS=3Dy
CONFIG_USB_CONN_GPIO=3Dy
CONFIG_USB_ARCH_HAS_HCD=3Dy
CONFIG_USB=3Dy
CONFIG_USB_PCI=3Dy
CONFIG_USB_PCI_AMD=3Dy
CONFIG_USB_ANNOUNCE_NEW_DEVICES=3Dy

#
# Miscellaneous USB options
#
CONFIG_USB_DEFAULT_PERSIST=3Dy
CONFIG_USB_FEW_INIT_RETRIES=3Dy
CONFIG_USB_DYNAMIC_MINORS=3Dy
CONFIG_USB_OTG=3Dy
# CONFIG_USB_OTG_PRODUCTLIST is not set
# CONFIG_USB_OTG_DISABLE_EXTERNAL_HUB is not set
CONFIG_USB_OTG_FSM=3Dy
CONFIG_USB_LEDS_TRIGGER_USBPORT=3Dy
CONFIG_USB_AUTOSUSPEND_DELAY=3D2
CONFIG_USB_DEFAULT_AUTHORIZATION_MODE=3D1
CONFIG_USB_MON=3Dy

#
# USB Host Controller Drivers
#
CONFIG_USB_C67X00_HCD=3Dy
CONFIG_USB_XHCI_HCD=3Dy
CONFIG_USB_XHCI_DBGCAP=3Dy
CONFIG_USB_XHCI_PCI=3Dy
CONFIG_USB_XHCI_PCI_RENESAS=3Dy
CONFIG_USB_XHCI_PLATFORM=3Dy
CONFIG_USB_EHCI_HCD=3Dy
CONFIG_USB_EHCI_ROOT_HUB_TT=3Dy
CONFIG_USB_EHCI_TT_NEWSCHED=3Dy
CONFIG_USB_EHCI_PCI=3Dy
CONFIG_USB_EHCI_FSL=3Dy
CONFIG_USB_EHCI_HCD_PLATFORM=3Dy
CONFIG_USB_OXU210HP_HCD=3Dy
CONFIG_USB_ISP116X_HCD=3Dy
CONFIG_USB_MAX3421_HCD=3Dy
CONFIG_USB_OHCI_HCD=3Dy
CONFIG_USB_OHCI_HCD_PCI=3Dy
# CONFIG_USB_OHCI_HCD_SSB is not set
CONFIG_USB_OHCI_HCD_PLATFORM=3Dy
CONFIG_USB_UHCI_HCD=3Dy
CONFIG_USB_SL811_HCD=3Dy
CONFIG_USB_SL811_HCD_ISO=3Dy
CONFIG_USB_SL811_CS=3Dy
CONFIG_USB_R8A66597_HCD=3Dy
CONFIG_USB_HCD_BCMA=3Dy
CONFIG_USB_HCD_SSB=3Dy
# CONFIG_USB_HCD_TEST_MODE is not set

#
# USB Device Class drivers
#
CONFIG_USB_ACM=3Dy
CONFIG_USB_PRINTER=3Dy
CONFIG_USB_WDM=3Dy
CONFIG_USB_TMC=3Dy

#
# NOTE: USB_STORAGE depends on SCSI but BLK_DEV_SD may
#

#
# also be needed; see USB_STORAGE Help for more info
#
CONFIG_USB_STORAGE=3Dy
# CONFIG_USB_STORAGE_DEBUG is not set
CONFIG_USB_STORAGE_REALTEK=3Dy
CONFIG_REALTEK_AUTOPM=3Dy
CONFIG_USB_STORAGE_DATAFAB=3Dy
CONFIG_USB_STORAGE_FREECOM=3Dy
CONFIG_USB_STORAGE_ISD200=3Dy
CONFIG_USB_STORAGE_USBAT=3Dy
CONFIG_USB_STORAGE_SDDR09=3Dy
CONFIG_USB_STORAGE_SDDR55=3Dy
CONFIG_USB_STORAGE_JUMPSHOT=3Dy
CONFIG_USB_STORAGE_ALAUDA=3Dy
CONFIG_USB_STORAGE_ONETOUCH=3Dy
CONFIG_USB_STORAGE_KARMA=3Dy
CONFIG_USB_STORAGE_CYPRESS_ATACB=3Dy
CONFIG_USB_STORAGE_ENE_UB6250=3Dy
CONFIG_USB_UAS=3Dy

#
# USB Imaging devices
#
CONFIG_USB_MDC800=3Dy
CONFIG_USB_MICROTEK=3Dy
CONFIG_USBIP_CORE=3Dy
CONFIG_USBIP_VHCI_HCD=3Dy
CONFIG_USBIP_VHCI_HC_PORTS=3D8
CONFIG_USBIP_VHCI_NR_HCS=3D16
CONFIG_USBIP_HOST=3Dy
CONFIG_USBIP_VUDC=3Dy
# CONFIG_USBIP_DEBUG is not set

#
# USB dual-mode controller drivers
#
CONFIG_USB_CDNS_SUPPORT=3Dy
CONFIG_USB_CDNS_HOST=3Dy
CONFIG_USB_CDNS3=3Dy
CONFIG_USB_CDNS3_GADGET=3Dy
CONFIG_USB_CDNS3_HOST=3Dy
CONFIG_USB_CDNS3_PCI_WRAP=3Dy
CONFIG_USB_CDNSP_PCI=3Dy
CONFIG_USB_CDNSP_GADGET=3Dy
CONFIG_USB_CDNSP_HOST=3Dy
CONFIG_USB_MUSB_HDRC=3Dy
# CONFIG_USB_MUSB_HOST is not set
# CONFIG_USB_MUSB_GADGET is not set
CONFIG_USB_MUSB_DUAL_ROLE=3Dy

#
# Platform Glue Layer
#

#
# MUSB DMA mode
#
CONFIG_MUSB_PIO_ONLY=3Dy
CONFIG_USB_DWC3=3Dy
CONFIG_USB_DWC3_ULPI=3Dy
# CONFIG_USB_DWC3_HOST is not set
CONFIG_USB_DWC3_GADGET=3Dy
# CONFIG_USB_DWC3_DUAL_ROLE is not set

#
# Platform Glue Driver Support
#
CONFIG_USB_DWC3_PCI=3Dy
CONFIG_USB_DWC3_HAPS=3Dy
CONFIG_USB_DWC3_OF_SIMPLE=3Dy
CONFIG_USB_DWC2=3Dy
CONFIG_USB_DWC2_HOST=3Dy

#
# Gadget/Dual-role mode requires USB Gadget support to be enabled
#
# CONFIG_USB_DWC2_PERIPHERAL is not set
# CONFIG_USB_DWC2_DUAL_ROLE is not set
CONFIG_USB_DWC2_PCI=3Dy
# CONFIG_USB_DWC2_DEBUG is not set
# CONFIG_USB_DWC2_TRACK_MISSED_SOFS is not set
CONFIG_USB_CHIPIDEA=3Dy
CONFIG_USB_CHIPIDEA_UDC=3Dy
CONFIG_USB_CHIPIDEA_HOST=3Dy
CONFIG_USB_CHIPIDEA_PCI=3Dy
CONFIG_USB_CHIPIDEA_MSM=3Dy
CONFIG_USB_CHIPIDEA_NPCM=3Dy
# CONFIG_USB_CHIPIDEA_IMX is not set
CONFIG_USB_CHIPIDEA_GENERIC=3Dy
# CONFIG_USB_CHIPIDEA_TEGRA is not set
CONFIG_USB_ISP1760=3Dy
CONFIG_USB_ISP1760_HCD=3Dy
CONFIG_USB_ISP1761_UDC=3Dy
# CONFIG_USB_ISP1760_HOST_ROLE is not set
# CONFIG_USB_ISP1760_GADGET_ROLE is not set
CONFIG_USB_ISP1760_DUAL_ROLE=3Dy

#
# USB port drivers
#
CONFIG_USB_SERIAL=3Dy
CONFIG_USB_SERIAL_CONSOLE=3Dy
CONFIG_USB_SERIAL_GENERIC=3Dy
CONFIG_USB_SERIAL_SIMPLE=3Dy
CONFIG_USB_SERIAL_AIRCABLE=3Dy
CONFIG_USB_SERIAL_ARK3116=3Dy
CONFIG_USB_SERIAL_BELKIN=3Dy
CONFIG_USB_SERIAL_CH341=3Dy
CONFIG_USB_SERIAL_WHITEHEAT=3Dy
CONFIG_USB_SERIAL_DIGI_ACCELEPORT=3Dy
CONFIG_USB_SERIAL_CP210X=3Dy
CONFIG_USB_SERIAL_CYPRESS_M8=3Dy
CONFIG_USB_SERIAL_EMPEG=3Dy
CONFIG_USB_SERIAL_FTDI_SIO=3Dy
CONFIG_USB_SERIAL_VISOR=3Dy
CONFIG_USB_SERIAL_IPAQ=3Dy
CONFIG_USB_SERIAL_IR=3Dy
CONFIG_USB_SERIAL_EDGEPORT=3Dy
CONFIG_USB_SERIAL_EDGEPORT_TI=3Dy
CONFIG_USB_SERIAL_F81232=3Dy
CONFIG_USB_SERIAL_F8153X=3Dy
CONFIG_USB_SERIAL_GARMIN=3Dy
CONFIG_USB_SERIAL_IPW=3Dy
CONFIG_USB_SERIAL_IUU=3Dy
CONFIG_USB_SERIAL_KEYSPAN_PDA=3Dy
CONFIG_USB_SERIAL_KEYSPAN=3Dy
CONFIG_USB_SERIAL_KLSI=3Dy
CONFIG_USB_SERIAL_KOBIL_SCT=3Dy
CONFIG_USB_SERIAL_MCT_U232=3Dy
CONFIG_USB_SERIAL_METRO=3Dy
CONFIG_USB_SERIAL_MOS7720=3Dy
CONFIG_USB_SERIAL_MOS7715_PARPORT=3Dy
CONFIG_USB_SERIAL_MOS7840=3Dy
CONFIG_USB_SERIAL_MXUPORT=3Dy
CONFIG_USB_SERIAL_NAVMAN=3Dy
CONFIG_USB_SERIAL_PL2303=3Dy
CONFIG_USB_SERIAL_OTI6858=3Dy
CONFIG_USB_SERIAL_QCAUX=3Dy
CONFIG_USB_SERIAL_QUALCOMM=3Dy
CONFIG_USB_SERIAL_SPCP8X5=3Dy
CONFIG_USB_SERIAL_SAFE=3Dy
# CONFIG_USB_SERIAL_SAFE_PADDED is not set
CONFIG_USB_SERIAL_SIERRAWIRELESS=3Dy
CONFIG_USB_SERIAL_SYMBOL=3Dy
CONFIG_USB_SERIAL_TI=3Dy
CONFIG_USB_SERIAL_CYBERJACK=3Dy
CONFIG_USB_SERIAL_WWAN=3Dy
CONFIG_USB_SERIAL_OPTION=3Dy
CONFIG_USB_SERIAL_OMNINET=3Dy
CONFIG_USB_SERIAL_OPTICON=3Dy
CONFIG_USB_SERIAL_XSENS_MT=3Dy
CONFIG_USB_SERIAL_WISHBONE=3Dy
CONFIG_USB_SERIAL_SSU100=3Dy
CONFIG_USB_SERIAL_QT2=3Dy
CONFIG_USB_SERIAL_UPD78F0730=3Dy
CONFIG_USB_SERIAL_XR=3Dy
CONFIG_USB_SERIAL_DEBUG=3Dy

#
# USB Miscellaneous drivers
#
CONFIG_USB_USS720=3Dy
CONFIG_USB_EMI62=3Dy
CONFIG_USB_EMI26=3Dy
CONFIG_USB_ADUTUX=3Dy
CONFIG_USB_SEVSEG=3Dy
CONFIG_USB_LEGOTOWER=3Dy
CONFIG_USB_LCD=3Dy
CONFIG_USB_CYPRESS_CY7C63=3Dy
CONFIG_USB_CYTHERM=3Dy
CONFIG_USB_IDMOUSE=3Dy
CONFIG_USB_APPLEDISPLAY=3Dy
CONFIG_APPLE_MFI_FASTCHARGE=3Dy
CONFIG_USB_LJCA=3Dy
CONFIG_USB_SISUSBVGA=3Dy
CONFIG_USB_LD=3Dy
CONFIG_USB_TRANCEVIBRATOR=3Dy
CONFIG_USB_IOWARRIOR=3Dy
CONFIG_USB_TEST=3Dy
CONFIG_USB_EHSET_TEST_FIXTURE=3Dy
CONFIG_USB_ISIGHTFW=3Dy
CONFIG_USB_YUREX=3Dy
CONFIG_USB_EZUSB_FX2=3Dy
CONFIG_USB_HUB_USB251XB=3Dy
CONFIG_USB_HSIC_USB3503=3Dy
CONFIG_USB_HSIC_USB4604=3Dy
CONFIG_USB_LINK_LAYER_TEST=3Dy
CONFIG_USB_CHAOSKEY=3Dy
# CONFIG_USB_ONBOARD_DEV is not set
CONFIG_USB_ATM=3Dy
CONFIG_USB_SPEEDTOUCH=3Dy
CONFIG_USB_CXACRU=3Dy
CONFIG_USB_UEAGLEATM=3Dy
CONFIG_USB_XUSBATM=3Dy

#
# USB Physical Layer drivers
#
CONFIG_USB_PHY=3Dy
CONFIG_NOP_USB_XCEIV=3Dy
CONFIG_TAHVO_USB=3Dy
CONFIG_TAHVO_USB_HOST_BY_DEFAULT=3Dy
CONFIG_USB_ISP1301=3Dy
# end of USB Physical Layer drivers

CONFIG_USB_GADGET=3Dy
# CONFIG_USB_GADGET_DEBUG is not set
CONFIG_USB_GADGET_DEBUG_FILES=3Dy
CONFIG_USB_GADGET_DEBUG_FS=3Dy
CONFIG_USB_GADGET_VBUS_DRAW=3D2
CONFIG_USB_GADGET_STORAGE_NUM_BUFFERS=3D2
CONFIG_U_SERIAL_CONSOLE=3Dy

#
# USB Peripheral Controller
#
CONFIG_USB_GR_UDC=3Dy
CONFIG_USB_R8A66597=3Dy
CONFIG_USB_PXA27X=3Dy
CONFIG_USB_MV_UDC=3Dy
CONFIG_USB_MV_U3D=3Dy
CONFIG_USB_SNP_CORE=3Dy
# CONFIG_USB_SNP_UDC_PLAT is not set
# CONFIG_USB_M66592 is not set
CONFIG_USB_BDC_UDC=3Dy
CONFIG_USB_AMD5536UDC=3Dy
CONFIG_USB_NET2272=3Dy
CONFIG_USB_NET2272_DMA=3Dy
CONFIG_USB_NET2280=3Dy
CONFIG_USB_GOKU=3Dy
CONFIG_USB_EG20T=3Dy
# CONFIG_USB_GADGET_XILINX is not set
CONFIG_USB_MAX3420_UDC=3Dy
CONFIG_USB_CDNS2_UDC=3Dy
CONFIG_USB_DUMMY_HCD=3Dy
# end of USB Peripheral Controller

CONFIG_USB_LIBCOMPOSITE=3Dy
CONFIG_USB_F_ACM=3Dy
CONFIG_USB_F_SS_LB=3Dy
CONFIG_USB_U_SERIAL=3Dy
CONFIG_USB_U_ETHER=3Dy
CONFIG_USB_U_AUDIO=3Dy
CONFIG_USB_F_SERIAL=3Dy
CONFIG_USB_F_OBEX=3Dy
CONFIG_USB_F_NCM=3Dy
CONFIG_USB_F_ECM=3Dy
CONFIG_USB_F_PHONET=3Dy
CONFIG_USB_F_EEM=3Dy
CONFIG_USB_F_SUBSET=3Dy
CONFIG_USB_F_RNDIS=3Dy
CONFIG_USB_F_MASS_STORAGE=3Dy
CONFIG_USB_F_FS=3Dy
CONFIG_USB_F_UAC1=3Dy
CONFIG_USB_F_UAC1_LEGACY=3Dy
CONFIG_USB_F_UAC2=3Dy
CONFIG_USB_F_UVC=3Dy
CONFIG_USB_F_MIDI=3Dy
CONFIG_USB_F_MIDI2=3Dy
CONFIG_USB_F_HID=3Dy
CONFIG_USB_F_PRINTER=3Dy
CONFIG_USB_F_TCM=3Dy
CONFIG_USB_CONFIGFS=3Dy
CONFIG_USB_CONFIGFS_SERIAL=3Dy
CONFIG_USB_CONFIGFS_ACM=3Dy
CONFIG_USB_CONFIGFS_OBEX=3Dy
CONFIG_USB_CONFIGFS_NCM=3Dy
CONFIG_USB_CONFIGFS_ECM=3Dy
CONFIG_USB_CONFIGFS_ECM_SUBSET=3Dy
CONFIG_USB_CONFIGFS_RNDIS=3Dy
CONFIG_USB_CONFIGFS_EEM=3Dy
CONFIG_USB_CONFIGFS_PHONET=3Dy
CONFIG_USB_CONFIGFS_MASS_STORAGE=3Dy
CONFIG_USB_CONFIGFS_F_LB_SS=3Dy
CONFIG_USB_CONFIGFS_F_FS=3Dy
CONFIG_USB_CONFIGFS_F_UAC1=3Dy
CONFIG_USB_CONFIGFS_F_UAC1_LEGACY=3Dy
CONFIG_USB_CONFIGFS_F_UAC2=3Dy
CONFIG_USB_CONFIGFS_F_MIDI=3Dy
CONFIG_USB_CONFIGFS_F_MIDI2=3Dy
CONFIG_USB_CONFIGFS_F_HID=3Dy
CONFIG_USB_CONFIGFS_F_UVC=3Dy
CONFIG_USB_CONFIGFS_F_PRINTER=3Dy
CONFIG_USB_CONFIGFS_F_TCM=3Dy

#
# USB Gadget precomposed configurations
#
# CONFIG_USB_ZERO is not set
# CONFIG_USB_AUDIO is not set
# CONFIG_USB_ETH is not set
# CONFIG_USB_G_NCM is not set
CONFIG_USB_GADGETFS=3Dy
# CONFIG_USB_FUNCTIONFS is not set
# CONFIG_USB_MASS_STORAGE is not set
# CONFIG_USB_GADGET_TARGET is not set
# CONFIG_USB_G_SERIAL is not set
# CONFIG_USB_MIDI_GADGET is not set
# CONFIG_USB_G_PRINTER is not set
# CONFIG_USB_CDC_COMPOSITE is not set
# CONFIG_USB_G_NOKIA is not set
# CONFIG_USB_G_ACM_MS is not set
# CONFIG_USB_G_MULTI is not set
# CONFIG_USB_G_HID is not set
# CONFIG_USB_G_DBGP is not set
# CONFIG_USB_G_WEBCAM is not set
CONFIG_USB_RAW_GADGET=3Dy
# end of USB Gadget precomposed configurations

CONFIG_TYPEC=3Dy
CONFIG_TYPEC_TCPM=3Dy
CONFIG_TYPEC_TCPCI=3Dy
CONFIG_TYPEC_RT1711H=3Dy
CONFIG_TYPEC_MT6360=3Dy
CONFIG_TYPEC_TCPCI_MT6370=3Dy
CONFIG_TYPEC_TCPCI_MAXIM=3Dy
CONFIG_TYPEC_FUSB302=3Dy
CONFIG_TYPEC_WCOVE=3Dy
CONFIG_TYPEC_UCSI=3Dy
CONFIG_UCSI_CCG=3Dy
CONFIG_UCSI_ACPI=3Dy
CONFIG_UCSI_STM32G0=3Dy
CONFIG_TYPEC_TPS6598X=3Dy
CONFIG_TYPEC_ANX7411=3Dy
CONFIG_TYPEC_RT1719=3Dy
CONFIG_TYPEC_HD3SS3220=3Dy
CONFIG_TYPEC_STUSB160X=3Dy
CONFIG_TYPEC_WUSB3801=3Dy

#
# USB Type-C Multiplexer/DeMultiplexer Switch support
#
CONFIG_TYPEC_MUX_FSA4480=3Dy
CONFIG_TYPEC_MUX_GPIO_SBU=3Dy
CONFIG_TYPEC_MUX_PI3USB30532=3Dy
CONFIG_TYPEC_MUX_INTEL_PMC=3Dy
# CONFIG_TYPEC_MUX_IT5205 is not set
CONFIG_TYPEC_MUX_NB7VPQ904M=3Dy
CONFIG_TYPEC_MUX_PTN36502=3Dy
# CONFIG_TYPEC_MUX_TUSB1046 is not set
CONFIG_TYPEC_MUX_WCD939X_USBSS=3Dy
# end of USB Type-C Multiplexer/DeMultiplexer Switch support

#
# USB Type-C Alternate Mode drivers
#
CONFIG_TYPEC_DP_ALTMODE=3Dy
CONFIG_TYPEC_NVIDIA_ALTMODE=3Dy
# end of USB Type-C Alternate Mode drivers

CONFIG_USB_ROLE_SWITCH=3Dy
CONFIG_USB_ROLES_INTEL_XHCI=3Dy
CONFIG_MMC=3Dy
# CONFIG_PWRSEQ_EMMC is not set
# CONFIG_PWRSEQ_SD8787 is not set
# CONFIG_PWRSEQ_SIMPLE is not set
# CONFIG_MMC_BLOCK is not set
# CONFIG_SDIO_UART is not set
# CONFIG_MMC_TEST is not set
# CONFIG_MMC_CRYPTO is not set

#
# MMC/SD/SDIO Host Controller Drivers
#
# CONFIG_MMC_DEBUG is not set
# CONFIG_MMC_SDHCI is not set
# CONFIG_MMC_WBSD is not set
# CONFIG_MMC_TIFM_SD is not set
# CONFIG_MMC_SPI is not set
# CONFIG_MMC_SDRICOH_CS is not set
# CONFIG_MMC_CB710 is not set
# CONFIG_MMC_VIA_SDMMC is not set
CONFIG_MMC_VUB300=3Dy
CONFIG_MMC_USHC=3Dy
# CONFIG_MMC_USDHI6ROL0 is not set
CONFIG_MMC_REALTEK_USB=3Dy
# CONFIG_MMC_CQHCI is not set
# CONFIG_MMC_HSQ is not set
# CONFIG_MMC_TOSHIBA_PCI is not set
# CONFIG_MMC_MTK is not set
# CONFIG_SCSI_UFSHCD is not set
CONFIG_MEMSTICK=3Dy
# CONFIG_MEMSTICK_DEBUG is not set

#
# MemoryStick drivers
#
# CONFIG_MEMSTICK_UNSAFE_RESUME is not set
# CONFIG_MSPRO_BLOCK is not set
# CONFIG_MS_BLOCK is not set

#
# MemoryStick Host Controller Drivers
#
# CONFIG_MEMSTICK_TIFM_MS is not set
# CONFIG_MEMSTICK_JMICRON_38X is not set
# CONFIG_MEMSTICK_R592 is not set
CONFIG_MEMSTICK_REALTEK_USB=3Dy
CONFIG_NEW_LEDS=3Dy
CONFIG_LEDS_CLASS=3Dy
# CONFIG_LEDS_CLASS_FLASH is not set
CONFIG_LEDS_CLASS_MULTICOLOR=3Dy
# CONFIG_LEDS_BRIGHTNESS_HW_CHANGED is not set

#
# LED drivers
#
# CONFIG_LEDS_AN30259A is not set
# CONFIG_LEDS_APU is not set
# CONFIG_LEDS_AW200XX is not set
# CONFIG_LEDS_AW2013 is not set
# CONFIG_LEDS_BCM6328 is not set
# CONFIG_LEDS_BCM6358 is not set
# CONFIG_LEDS_CHT_WCOVE is not set
# CONFIG_LEDS_CR0014114 is not set
# CONFIG_LEDS_EL15203000 is not set
# CONFIG_LEDS_LM3530 is not set
# CONFIG_LEDS_LM3532 is not set
# CONFIG_LEDS_LM3642 is not set
# CONFIG_LEDS_LM3692X is not set
# CONFIG_LEDS_PCA9532 is not set
# CONFIG_LEDS_GPIO is not set
# CONFIG_LEDS_LP3944 is not set
# CONFIG_LEDS_LP3952 is not set
# CONFIG_LEDS_LP50XX is not set
# CONFIG_LEDS_LP55XX_COMMON is not set
# CONFIG_LEDS_LP8860 is not set
# CONFIG_LEDS_PCA955X is not set
# CONFIG_LEDS_PCA963X is not set
# CONFIG_LEDS_PCA995X is not set
# CONFIG_LEDS_DAC124S085 is not set
# CONFIG_LEDS_REGULATOR is not set
# CONFIG_LEDS_BD2606MVV is not set
# CONFIG_LEDS_BD2802 is not set
# CONFIG_LEDS_INTEL_SS4200 is not set
# CONFIG_LEDS_LT3593 is not set
# CONFIG_LEDS_TCA6507 is not set
# CONFIG_LEDS_TLC591XX is not set
# CONFIG_LEDS_LM355x is not set
# CONFIG_LEDS_IS31FL319X is not set
# CONFIG_LEDS_IS31FL32XX is not set

#
# LED driver for blink(1) USB RGB LED is under Special HID drivers (HID_THI=
NGM)
#
# CONFIG_LEDS_BLINKM is not set
# CONFIG_LEDS_SYSCON is not set
# CONFIG_LEDS_MLXCPLD is not set
# CONFIG_LEDS_MLXREG is not set
# CONFIG_LEDS_USER is not set
# CONFIG_LEDS_NIC78BX is not set
# CONFIG_LEDS_SPI_BYTE is not set
# CONFIG_LEDS_LM3697 is not set
# CONFIG_LEDS_LGM is not set

#
# Flash and Torch LED drivers
#

#
# RGB LED drivers
#
# CONFIG_LEDS_GROUP_MULTICOLOR is not set
# CONFIG_LEDS_KTD202X is not set
# CONFIG_LEDS_NCP5623 is not set
# CONFIG_LEDS_MT6370_RGB is not set

#
# LED Triggers
#
CONFIG_LEDS_TRIGGERS=3Dy
# CONFIG_LEDS_TRIGGER_TIMER is not set
# CONFIG_LEDS_TRIGGER_ONESHOT is not set
# CONFIG_LEDS_TRIGGER_DISK is not set
# CONFIG_LEDS_TRIGGER_MTD is not set
# CONFIG_LEDS_TRIGGER_HEARTBEAT is not set
# CONFIG_LEDS_TRIGGER_BACKLIGHT is not set
# CONFIG_LEDS_TRIGGER_CPU is not set
# CONFIG_LEDS_TRIGGER_ACTIVITY is not set
# CONFIG_LEDS_TRIGGER_GPIO is not set
# CONFIG_LEDS_TRIGGER_DEFAULT_ON is not set

#
# iptables trigger is under Netfilter config (LED target)
#
# CONFIG_LEDS_TRIGGER_TRANSIENT is not set
# CONFIG_LEDS_TRIGGER_CAMERA is not set
# CONFIG_LEDS_TRIGGER_PANIC is not set
# CONFIG_LEDS_TRIGGER_NETDEV is not set
# CONFIG_LEDS_TRIGGER_PATTERN is not set
# CONFIG_LEDS_TRIGGER_TTY is not set
# CONFIG_LEDS_TRIGGER_INPUT_EVENTS is not set

#
# Simple LED drivers
#
# CONFIG_ACCESSIBILITY is not set
CONFIG_INFINIBAND=3Dy
CONFIG_INFINIBAND_USER_MAD=3Dy
CONFIG_INFINIBAND_USER_ACCESS=3Dy
CONFIG_INFINIBAND_USER_MEM=3Dy
CONFIG_INFINIBAND_ON_DEMAND_PAGING=3Dy
CONFIG_INFINIBAND_ADDR_TRANS=3Dy
CONFIG_INFINIBAND_ADDR_TRANS_CONFIGFS=3Dy
CONFIG_INFINIBAND_VIRT_DMA=3Dy
# CONFIG_INFINIBAND_EFA is not set
# CONFIG_INFINIBAND_ERDMA is not set
CONFIG_MLX4_INFINIBAND=3Dy
# CONFIG_INFINIBAND_MTHCA is not set
# CONFIG_INFINIBAND_OCRDMA is not set
# CONFIG_INFINIBAND_USNIC is not set
# CONFIG_INFINIBAND_VMWARE_PVRDMA is not set
# CONFIG_INFINIBAND_RDMAVT is not set
CONFIG_RDMA_RXE=3Dy
CONFIG_RDMA_SIW=3Dy
CONFIG_INFINIBAND_IPOIB=3Dy
CONFIG_INFINIBAND_IPOIB_CM=3Dy
CONFIG_INFINIBAND_IPOIB_DEBUG=3Dy
# CONFIG_INFINIBAND_IPOIB_DEBUG_DATA is not set
CONFIG_INFINIBAND_SRP=3Dy
# CONFIG_INFINIBAND_SRPT is not set
CONFIG_INFINIBAND_ISER=3Dy
CONFIG_INFINIBAND_RTRS=3Dy
CONFIG_INFINIBAND_RTRS_CLIENT=3Dy
# CONFIG_INFINIBAND_RTRS_SERVER is not set
# CONFIG_INFINIBAND_OPA_VNIC is not set
CONFIG_EDAC_ATOMIC_SCRUB=3Dy
CONFIG_EDAC_SUPPORT=3Dy
CONFIG_EDAC=3Dy
# CONFIG_EDAC_LEGACY_SYSFS is not set
# CONFIG_EDAC_DEBUG is not set
# CONFIG_EDAC_DECODE_MCE is not set
# CONFIG_EDAC_E752X is not set
# CONFIG_EDAC_I82975X is not set
# CONFIG_EDAC_I3000 is not set
# CONFIG_EDAC_I3200 is not set
# CONFIG_EDAC_IE31200 is not set
# CONFIG_EDAC_X38 is not set
# CONFIG_EDAC_I5400 is not set
# CONFIG_EDAC_I7CORE is not set
# CONFIG_EDAC_I5100 is not set
# CONFIG_EDAC_I7300 is not set
# CONFIG_EDAC_SBRIDGE is not set
# CONFIG_EDAC_SKX is not set
# CONFIG_EDAC_I10NM is not set
# CONFIG_EDAC_PND2 is not set
# CONFIG_EDAC_IGEN6 is not set
CONFIG_RTC_LIB=3Dy
CONFIG_RTC_MC146818_LIB=3Dy
CONFIG_RTC_CLASS=3Dy
# CONFIG_RTC_HCTOSYS is not set
CONFIG_RTC_SYSTOHC=3Dy
CONFIG_RTC_SYSTOHC_DEVICE=3D"rtc0"
# CONFIG_RTC_DEBUG is not set
# CONFIG_RTC_NVMEM is not set

#
# RTC interfaces
#
CONFIG_RTC_INTF_SYSFS=3Dy
CONFIG_RTC_INTF_PROC=3Dy
CONFIG_RTC_INTF_DEV=3Dy
# CONFIG_RTC_INTF_DEV_UIE_EMUL is not set
# CONFIG_RTC_DRV_TEST is not set

#
# I2C RTC drivers
#
# CONFIG_RTC_DRV_ABB5ZES3 is not set
# CONFIG_RTC_DRV_ABEOZ9 is not set
# CONFIG_RTC_DRV_ABX80X is not set
# CONFIG_RTC_DRV_DS1307 is not set
# CONFIG_RTC_DRV_DS1374 is not set
# CONFIG_RTC_DRV_DS1672 is not set
# CONFIG_RTC_DRV_HYM8563 is not set
# CONFIG_RTC_DRV_MAX6900 is not set
# CONFIG_RTC_DRV_MAX31335 is not set
# CONFIG_RTC_DRV_NCT3018Y is not set
# CONFIG_RTC_DRV_RS5C372 is not set
# CONFIG_RTC_DRV_ISL1208 is not set
# CONFIG_RTC_DRV_ISL12022 is not set
# CONFIG_RTC_DRV_ISL12026 is not set
# CONFIG_RTC_DRV_X1205 is not set
# CONFIG_RTC_DRV_PCF8523 is not set
# CONFIG_RTC_DRV_PCF85063 is not set
# CONFIG_RTC_DRV_PCF85363 is not set
# CONFIG_RTC_DRV_PCF8563 is not set
# CONFIG_RTC_DRV_PCF8583 is not set
# CONFIG_RTC_DRV_M41T80 is not set
# CONFIG_RTC_DRV_BQ32K is not set
# CONFIG_RTC_DRV_TWL4030 is not set
# CONFIG_RTC_DRV_S35390A is not set
# CONFIG_RTC_DRV_FM3130 is not set
# CONFIG_RTC_DRV_RX8010 is not set
# CONFIG_RTC_DRV_RX8111 is not set
# CONFIG_RTC_DRV_RX8581 is not set
# CONFIG_RTC_DRV_RX8025 is not set
# CONFIG_RTC_DRV_EM3027 is not set
# CONFIG_RTC_DRV_RV3028 is not set
# CONFIG_RTC_DRV_RV3032 is not set
# CONFIG_RTC_DRV_RV8803 is not set
# CONFIG_RTC_DRV_SD2405AL is not set
# CONFIG_RTC_DRV_SD3078 is not set

#
# SPI RTC drivers
#
# CONFIG_RTC_DRV_M41T93 is not set
# CONFIG_RTC_DRV_M41T94 is not set
# CONFIG_RTC_DRV_DS1302 is not set
# CONFIG_RTC_DRV_DS1305 is not set
# CONFIG_RTC_DRV_DS1343 is not set
# CONFIG_RTC_DRV_DS1347 is not set
# CONFIG_RTC_DRV_DS1390 is not set
# CONFIG_RTC_DRV_MAX6916 is not set
# CONFIG_RTC_DRV_R9701 is not set
# CONFIG_RTC_DRV_RX4581 is not set
# CONFIG_RTC_DRV_RS5C348 is not set
# CONFIG_RTC_DRV_MAX6902 is not set
# CONFIG_RTC_DRV_PCF2123 is not set
# CONFIG_RTC_DRV_MCP795 is not set
CONFIG_RTC_I2C_AND_SPI=3Dy

#
# SPI and I2C RTC drivers
#
# CONFIG_RTC_DRV_DS3232 is not set
# CONFIG_RTC_DRV_PCF2127 is not set
# CONFIG_RTC_DRV_RV3029C2 is not set
# CONFIG_RTC_DRV_RX6110 is not set

#
# Platform RTC drivers
#
CONFIG_RTC_DRV_CMOS=3Dy
# CONFIG_RTC_DRV_DS1286 is not set
# CONFIG_RTC_DRV_DS1511 is not set
# CONFIG_RTC_DRV_DS1553 is not set
# CONFIG_RTC_DRV_DS1685_FAMILY is not set
# CONFIG_RTC_DRV_DS1742 is not set
# CONFIG_RTC_DRV_DS2404 is not set
# CONFIG_RTC_DRV_STK17TA8 is not set
# CONFIG_RTC_DRV_M48T86 is not set
# CONFIG_RTC_DRV_M48T35 is not set
# CONFIG_RTC_DRV_M48T59 is not set
# CONFIG_RTC_DRV_MSM6242 is not set
# CONFIG_RTC_DRV_RP5C01 is not set
# CONFIG_RTC_DRV_ZYNQMP is not set

#
# on-CPU RTC drivers
#
# CONFIG_RTC_DRV_CADENCE is not set
# CONFIG_RTC_DRV_FTRTC010 is not set
# CONFIG_RTC_DRV_R7301 is not set

#
# HID Sensor RTC drivers
#
CONFIG_RTC_DRV_HID_SENSOR_TIME=3Dy
# CONFIG_RTC_DRV_GOLDFISH is not set
CONFIG_DMADEVICES=3Dy
# CONFIG_DMADEVICES_DEBUG is not set

#
# DMA Devices
#
CONFIG_DMA_ENGINE=3Dy
CONFIG_DMA_VIRTUAL_CHANNELS=3Dy
CONFIG_DMA_ACPI=3Dy
CONFIG_DMA_OF=3Dy
# CONFIG_ALTERA_MSGDMA is not set
# CONFIG_DW_AXI_DMAC is not set
# CONFIG_FSL_EDMA is not set
CONFIG_INTEL_IDMA64=3Dy
# CONFIG_INTEL_IDXD is not set
# CONFIG_INTEL_IDXD_COMPAT is not set
CONFIG_INTEL_IOATDMA=3Dy
# CONFIG_PLX_DMA is not set
# CONFIG_XILINX_DMA is not set
# CONFIG_XILINX_XDMA is not set
# CONFIG_XILINX_ZYNQMP_DPDMA is not set
# CONFIG_AMD_QDMA is not set
# CONFIG_AMD_PTDMA is not set
# CONFIG_QCOM_HIDMA_MGMT is not set
# CONFIG_QCOM_HIDMA is not set
CONFIG_DW_DMAC_CORE=3Dy
# CONFIG_DW_DMAC is not set
# CONFIG_DW_DMAC_PCI is not set
# CONFIG_DW_EDMA is not set
CONFIG_HSU_DMA=3Dy
# CONFIG_SF_PDMA is not set
# CONFIG_INTEL_LDMA is not set

#
# DMA Clients
#
CONFIG_ASYNC_TX_DMA=3Dy
# CONFIG_DMATEST is not set
CONFIG_DMA_ENGINE_RAID=3Dy

#
# DMABUF options
#
CONFIG_SYNC_FILE=3Dy
CONFIG_SW_SYNC=3Dy
CONFIG_UDMABUF=3Dy
CONFIG_DMABUF_MOVE_NOTIFY=3Dy
# CONFIG_DMABUF_DEBUG is not set
# CONFIG_DMABUF_SELFTESTS is not set
CONFIG_DMABUF_HEAPS=3Dy
# CONFIG_DMABUF_SYSFS_STATS is not set
CONFIG_DMABUF_HEAPS_SYSTEM=3Dy
CONFIG_DMABUF_HEAPS_CMA=3Dy
# end of DMABUF options

CONFIG_DCA=3Dy
# CONFIG_UIO is not set
CONFIG_VFIO=3Dy
CONFIG_VFIO_DEVICE_CDEV=3Dy
# CONFIG_VFIO_GROUP is not set
CONFIG_VFIO_VIRQFD=3Dy
# CONFIG_VFIO_DEBUGFS is not set

#
# VFIO support for PCI devices
#
CONFIG_VFIO_PCI_CORE=3Dy
CONFIG_VFIO_PCI_MMAP=3Dy
CONFIG_VFIO_PCI_INTX=3Dy
CONFIG_VFIO_PCI=3Dy
# CONFIG_VFIO_PCI_VGA is not set
# CONFIG_VFIO_PCI_IGD is not set
# CONFIG_VIRTIO_VFIO_PCI is not set
# end of VFIO support for PCI devices

CONFIG_IRQ_BYPASS_MANAGER=3Dy
# CONFIG_VIRT_DRIVERS is not set
CONFIG_VIRTIO_ANCHOR=3Dy
CONFIG_VIRTIO=3Dy
CONFIG_VIRTIO_PCI_LIB=3Dy
CONFIG_VIRTIO_PCI_LIB_LEGACY=3Dy
CONFIG_VIRTIO_MENU=3Dy
CONFIG_VIRTIO_PCI=3Dy
CONFIG_VIRTIO_PCI_ADMIN_LEGACY=3Dy
CONFIG_VIRTIO_PCI_LEGACY=3Dy
CONFIG_VIRTIO_VDPA=3Dy
CONFIG_VIRTIO_PMEM=3Dy
CONFIG_VIRTIO_BALLOON=3Dy
CONFIG_VIRTIO_MEM=3Dy
CONFIG_VIRTIO_INPUT=3Dy
CONFIG_VIRTIO_MMIO=3Dy
CONFIG_VIRTIO_MMIO_CMDLINE_DEVICES=3Dy
CONFIG_VIRTIO_DMA_SHARED_BUFFER=3Dy
# CONFIG_VIRTIO_DEBUG is not set
CONFIG_VDPA=3Dy
CONFIG_VDPA_SIM=3Dy
CONFIG_VDPA_SIM_NET=3Dy
CONFIG_VDPA_SIM_BLOCK=3Dy
# CONFIG_IFCVF is not set
# CONFIG_MLX5_VDPA_STEERING_DEBUG is not set
CONFIG_VP_VDPA=3Dy
# CONFIG_ALIBABA_ENI_VDPA is not set
# CONFIG_SNET_VDPA is not set
# CONFIG_OCTEONEP_VDPA is not set
CONFIG_VHOST_IOTLB=3Dy
CONFIG_VHOST_RING=3Dy
CONFIG_VHOST_TASK=3Dy
CONFIG_VHOST=3Dy
CONFIG_VHOST_MENU=3Dy
CONFIG_VHOST_NET=3Dy
# CONFIG_VHOST_SCSI is not set
CONFIG_VHOST_VSOCK=3Dy
CONFIG_VHOST_VDPA=3Dy
CONFIG_VHOST_CROSS_ENDIAN_LEGACY=3Dy

#
# Microsoft Hyper-V guest support
#
# CONFIG_HYPERV is not set
# end of Microsoft Hyper-V guest support

CONFIG_GREYBUS=3Dy
# CONFIG_GREYBUS_BEAGLEPLAY is not set
CONFIG_GREYBUS_ES2=3Dy
CONFIG_COMEDI=3Dy
# CONFIG_COMEDI_DEBUG is not set
CONFIG_COMEDI_DEFAULT_BUF_SIZE_KB=3D2048
CONFIG_COMEDI_DEFAULT_BUF_MAXSIZE_KB=3D20480
# CONFIG_COMEDI_MISC_DRIVERS is not set
# CONFIG_COMEDI_PCI_DRIVERS is not set
# CONFIG_COMEDI_PCMCIA_DRIVERS is not set
CONFIG_COMEDI_USB_DRIVERS=3Dy
CONFIG_COMEDI_DT9812=3Dy
CONFIG_COMEDI_NI_USB6501=3Dy
CONFIG_COMEDI_USBDUX=3Dy
CONFIG_COMEDI_USBDUXFAST=3Dy
CONFIG_COMEDI_USBDUXSIGMA=3Dy
CONFIG_COMEDI_VMK80XX=3Dy
# CONFIG_COMEDI_8255_SA is not set
# CONFIG_COMEDI_KCOMEDILIB is not set
# CONFIG_COMEDI_TESTS is not set
CONFIG_STAGING=3Dy
# CONFIG_RTL8723BS is not set

#
# IIO staging drivers
#

#
# Accelerometers
#
# CONFIG_ADIS16203 is not set
# CONFIG_ADIS16240 is not set
# end of Accelerometers

#
# Analog to digital converters
#
# CONFIG_AD7816 is not set
# end of Analog to digital converters

#
# Analog digital bi-direction converters
#
# CONFIG_ADT7316 is not set
# end of Analog digital bi-direction converters

#
# Direct Digital Synthesis
#
# CONFIG_AD9832 is not set
# CONFIG_AD9834 is not set
# end of Direct Digital Synthesis

#
# Network Analyzer, Impedance Converters
#
# CONFIG_AD5933 is not set
# end of Network Analyzer, Impedance Converters
# end of IIO staging drivers

# CONFIG_FB_SM750 is not set
# CONFIG_STAGING_MEDIA is not set
# CONFIG_FB_TFT is not set
# CONFIG_MOST_COMPONENTS is not set
# CONFIG_GREYBUS_AUDIO is not set
# CONFIG_GREYBUS_BOOTROM is not set
# CONFIG_GREYBUS_FIRMWARE is not set
CONFIG_GREYBUS_HID=3Dy
# CONFIG_GREYBUS_LOG is not set
# CONFIG_GREYBUS_LOOPBACK is not set
# CONFIG_GREYBUS_POWER is not set
# CONFIG_GREYBUS_RAW is not set
# CONFIG_GREYBUS_VIBRATOR is not set
CONFIG_GREYBUS_BRIDGED_PHY=3Dy
# CONFIG_GREYBUS_GPIO is not set
# CONFIG_GREYBUS_I2C is not set
# CONFIG_GREYBUS_SDIO is not set
# CONFIG_GREYBUS_SPI is not set
# CONFIG_GREYBUS_UART is not set
CONFIG_GREYBUS_USB=3Dy
# CONFIG_XIL_AXIS_FIFO is not set
# CONFIG_VME_BUS is not set
# CONFIG_GPIB is not set
# CONFIG_GOLDFISH is not set
# CONFIG_CHROME_PLATFORMS is not set
# CONFIG_CZNIC_PLATFORMS is not set
# CONFIG_MELLANOX_PLATFORM is not set
CONFIG_SURFACE_PLATFORMS=3Dy
# CONFIG_SURFACE3_WMI is not set
# CONFIG_SURFACE_3_POWER_OPREGION is not set
# CONFIG_SURFACE_GPE is not set
# CONFIG_SURFACE_HOTPLUG is not set
# CONFIG_SURFACE_PRO3_BUTTON is not set
# CONFIG_SURFACE_AGGREGATOR is not set
CONFIG_X86_PLATFORM_DEVICES=3Dy
CONFIG_ACPI_WMI=3Dy
CONFIG_WMI_BMOF=3Dy
# CONFIG_HUAWEI_WMI is not set
# CONFIG_MXM_WMI is not set
# CONFIG_NVIDIA_WMI_EC_BACKLIGHT is not set
# CONFIG_XIAOMI_WMI is not set
# CONFIG_GIGABYTE_WMI is not set
# CONFIG_YOGABOOK is not set
# CONFIG_YT2_1380 is not set
# CONFIG_ACERHDF is not set
# CONFIG_ACER_WIRELESS is not set
# CONFIG_ACER_WMI is not set

#
# AMD HSMP Driver
#
# CONFIG_AMD_HSMP_ACPI is not set
# CONFIG_AMD_HSMP_PLAT is not set
# end of AMD HSMP Driver

# CONFIG_AMD_PMC is not set
# CONFIG_AMD_3D_VCACHE is not set
# CONFIG_AMD_WBRF is not set
# CONFIG_ADV_SWBUTTON is not set
# CONFIG_APPLE_GMUX is not set
# CONFIG_ASUS_LAPTOP is not set
# CONFIG_ASUS_WIRELESS is not set
CONFIG_ASUS_WMI=3Dy
# CONFIG_ASUS_NB_WMI is not set
CONFIG_ASUS_TF103C_DOCK=3Dy
CONFIG_EEEPC_LAPTOP=3Dy
# CONFIG_EEEPC_WMI is not set
# CONFIG_X86_PLATFORM_DRIVERS_DELL is not set
# CONFIG_AMILO_RFKILL is not set
# CONFIG_FUJITSU_LAPTOP is not set
# CONFIG_FUJITSU_TABLET is not set
# CONFIG_GPD_POCKET_FAN is not set
# CONFIG_X86_PLATFORM_DRIVERS_HP is not set
# CONFIG_WIRELESS_HOTKEY is not set
# CONFIG_IBM_RTL is not set
# CONFIG_IDEAPAD_LAPTOP is not set
# CONFIG_SENSORS_HDAPS is not set
# CONFIG_THINKPAD_ACPI is not set
# CONFIG_THINKPAD_LMI is not set
# CONFIG_INTEL_ATOMISP2_PM is not set
# CONFIG_INTEL_IFS is not set
# CONFIG_INTEL_SAR_INT1092 is not set
# CONFIG_INTEL_SKL_INT3472 is not set

#
# Intel Speed Select Technology interface support
#
# CONFIG_INTEL_SPEED_SELECT_INTERFACE is not set
# end of Intel Speed Select Technology interface support

# CONFIG_INTEL_WMI_SBL_FW_UPDATE is not set
# CONFIG_INTEL_WMI_THUNDERBOLT is not set

#
# Intel Uncore Frequency Control
#
# CONFIG_INTEL_UNCORE_FREQ_CONTROL is not set
# end of Intel Uncore Frequency Control

# CONFIG_INTEL_HID_EVENT is not set
# CONFIG_INTEL_VBTN is not set
# CONFIG_INTEL_INT0002_VGPIO is not set
# CONFIG_INTEL_OAKTRAIL is not set
# CONFIG_INTEL_BXTWC_PMIC_TMU is not set
CONFIG_INTEL_CHTWC_INT33FE=3Dy
CONFIG_INTEL_ISHTP_ECLITE=3Dy
# CONFIG_INTEL_PUNIT_IPC is not set
# CONFIG_INTEL_RST is not set
# CONFIG_INTEL_SMARTCONNECT is not set
# CONFIG_INTEL_TURBO_MAX_3 is not set
# CONFIG_INTEL_VSEC is not set
# CONFIG_ACPI_QUICKSTART is not set
# CONFIG_MEEGOPAD_ANX7428 is not set
# CONFIG_MSI_EC is not set
# CONFIG_MSI_LAPTOP is not set
# CONFIG_MSI_WMI is not set
# CONFIG_MSI_WMI_PLATFORM is not set
# CONFIG_PCENGINES_APU2 is not set
# CONFIG_BARCO_P50_GPIO is not set
# CONFIG_SAMSUNG_LAPTOP is not set
# CONFIG_SAMSUNG_Q10 is not set
# CONFIG_ACPI_TOSHIBA is not set
# CONFIG_TOSHIBA_BT_RFKILL is not set
# CONFIG_TOSHIBA_HAPS is not set
# CONFIG_TOSHIBA_WMI is not set
# CONFIG_ACPI_CMPC is not set
# CONFIG_COMPAL_LAPTOP is not set
# CONFIG_LG_LAPTOP is not set
# CONFIG_PANASONIC_LAPTOP is not set
# CONFIG_SONY_LAPTOP is not set
# CONFIG_SYSTEM76_ACPI is not set
# CONFIG_TOPSTAR_LAPTOP is not set
# CONFIG_SERIAL_MULTI_INSTANTIATE is not set
# CONFIG_MLX_PLATFORM is not set
# CONFIG_INSPUR_PLATFORM_PROFILE is not set
# CONFIG_LENOVO_WMI_CAMERA is not set
# CONFIG_INTEL_IPS is not set
CONFIG_INTEL_SCU_IPC=3Dy
# CONFIG_INTEL_SCU_PCI is not set
# CONFIG_INTEL_SCU_PLATFORM is not set
# CONFIG_SIEMENS_SIMATIC_IPC is not set
# CONFIG_SILICOM_PLATFORM is not set
# CONFIG_WINMATE_FM07_KEYS is not set
CONFIG_P2SB=3Dy
CONFIG_HAVE_CLK=3Dy
CONFIG_HAVE_CLK_PREPARE=3Dy
CONFIG_COMMON_CLK=3Dy
# CONFIG_LMK04832 is not set
# CONFIG_COMMON_CLK_MAX9485 is not set
# CONFIG_COMMON_CLK_SI5341 is not set
# CONFIG_COMMON_CLK_SI5351 is not set
# CONFIG_COMMON_CLK_SI514 is not set
# CONFIG_COMMON_CLK_SI544 is not set
# CONFIG_COMMON_CLK_SI570 is not set
# CONFIG_COMMON_CLK_CDCE706 is not set
# CONFIG_COMMON_CLK_CDCE925 is not set
# CONFIG_COMMON_CLK_CS2000_CP is not set
# CONFIG_CLK_TWL is not set
# CONFIG_COMMON_CLK_AXI_CLKGEN is not set
# CONFIG_COMMON_CLK_RS9_PCIE is not set
# CONFIG_COMMON_CLK_SI521XX is not set
# CONFIG_COMMON_CLK_VC3 is not set
# CONFIG_COMMON_CLK_VC5 is not set
# CONFIG_COMMON_CLK_VC7 is not set
# CONFIG_COMMON_CLK_FIXED_MMIO is not set
# CONFIG_CLK_LGM_CGU is not set
# CONFIG_XILINX_VCU is not set
# CONFIG_COMMON_CLK_XLNX_CLKWZRD is not set
# CONFIG_HWSPINLOCK is not set

#
# Clock Source drivers
#
CONFIG_CLKEVT_I8253=3Dy
CONFIG_I8253_LOCK=3Dy
CONFIG_CLKBLD_I8253=3Dy
# end of Clock Source drivers

CONFIG_MAILBOX=3Dy
# CONFIG_PLATFORM_MHU is not set
CONFIG_PCC=3Dy
# CONFIG_ALTERA_MBOX is not set
# CONFIG_MAILBOX_TEST is not set
CONFIG_IOMMU_IOVA=3Dy
CONFIG_IOMMU_API=3Dy
CONFIG_IOMMUFD_DRIVER=3Dy
CONFIG_IOMMU_SUPPORT=3Dy

#
# Generic IOMMU Pagetable Support
#
# end of Generic IOMMU Pagetable Support

# CONFIG_IOMMU_DEBUGFS is not set
# CONFIG_IOMMU_DEFAULT_DMA_STRICT is not set
CONFIG_IOMMU_DEFAULT_DMA_LAZY=3Dy
# CONFIG_IOMMU_DEFAULT_PASSTHROUGH is not set
CONFIG_OF_IOMMU=3Dy
CONFIG_IOMMU_DMA=3Dy
CONFIG_IOMMU_SVA=3Dy
CONFIG_IOMMU_IOPF=3Dy
# CONFIG_AMD_IOMMU is not set
CONFIG_DMAR_TABLE=3Dy
CONFIG_INTEL_IOMMU=3Dy
CONFIG_INTEL_IOMMU_SVM=3Dy
CONFIG_INTEL_IOMMU_DEFAULT_ON=3Dy
CONFIG_INTEL_IOMMU_FLOPPY_WA=3Dy
CONFIG_INTEL_IOMMU_SCALABLE_MODE_DEFAULT_ON=3Dy
CONFIG_INTEL_IOMMU_PERF_EVENTS=3Dy
CONFIG_IOMMUFD_DRIVER_CORE=3Dy
CONFIG_IOMMUFD=3Dy
CONFIG_IOMMUFD_TEST=3Dy
CONFIG_IRQ_REMAP=3Dy
# CONFIG_VIRTIO_IOMMU is not set

#
# Remoteproc drivers
#
# CONFIG_REMOTEPROC is not set
# end of Remoteproc drivers

#
# Rpmsg drivers
#
# CONFIG_RPMSG_QCOM_GLINK_RPM is not set
# CONFIG_RPMSG_VIRTIO is not set
# end of Rpmsg drivers

CONFIG_SOUNDWIRE=3Dy

#
# SoundWire Devices
#
# CONFIG_SOUNDWIRE_AMD is not set
# CONFIG_SOUNDWIRE_INTEL is not set
# CONFIG_SOUNDWIRE_QCOM is not set

#
# SOC (System On Chip) specific Drivers
#

#
# Amlogic SoC drivers
#
# end of Amlogic SoC drivers

#
# Broadcom SoC drivers
#
# end of Broadcom SoC drivers

#
# NXP/Freescale QorIQ SoC drivers
#
# end of NXP/Freescale QorIQ SoC drivers

#
# fujitsu SoC drivers
#
# end of fujitsu SoC drivers

#
# i.MX SoC drivers
#
# end of i.MX SoC drivers

#
# Enable LiteX SoC Builder specific drivers
#
# CONFIG_LITEX_SOC_CONTROLLER is not set
# end of Enable LiteX SoC Builder specific drivers

# CONFIG_WPCM450_SOC is not set

#
# Qualcomm SoC drivers
#
CONFIG_QCOM_QMI_HELPERS=3Dy
# end of Qualcomm SoC drivers

# CONFIG_SOC_TI is not set

#
# Xilinx SoC drivers
#
# end of Xilinx SoC drivers
# end of SOC (System On Chip) specific Drivers

#
# PM Domains
#

#
# Amlogic PM Domains
#
# end of Amlogic PM Domains

#
# Broadcom PM Domains
#
# end of Broadcom PM Domains

#
# i.MX PM Domains
#
# end of i.MX PM Domains

#
# Qualcomm PM Domains
#
# end of Qualcomm PM Domains
# end of PM Domains

# CONFIG_PM_DEVFREQ is not set
CONFIG_EXTCON=3Dy

#
# Extcon Device Drivers
#
# CONFIG_EXTCON_ADC_JACK is not set
# CONFIG_EXTCON_FSA9480 is not set
# CONFIG_EXTCON_GPIO is not set
# CONFIG_EXTCON_INTEL_INT3496 is not set
CONFIG_EXTCON_INTEL_CHT_WC=3Dy
# CONFIG_EXTCON_LC824206XA is not set
# CONFIG_EXTCON_MAX3355 is not set
CONFIG_EXTCON_PTN5150=3Dy
# CONFIG_EXTCON_RT8973A is not set
# CONFIG_EXTCON_SM5502 is not set
# CONFIG_EXTCON_USB_GPIO is not set
CONFIG_EXTCON_USBC_TUSB320=3Dy
# CONFIG_MEMORY is not set
CONFIG_IIO=3Dy
CONFIG_IIO_BUFFER=3Dy
# CONFIG_IIO_BUFFER_CB is not set
# CONFIG_IIO_BUFFER_DMA is not set
# CONFIG_IIO_BUFFER_DMAENGINE is not set
# CONFIG_IIO_BUFFER_HW_CONSUMER is not set
CONFIG_IIO_KFIFO_BUF=3Dy
CONFIG_IIO_TRIGGERED_BUFFER=3Dy
# CONFIG_IIO_CONFIGFS is not set
CONFIG_IIO_TRIGGER=3Dy
CONFIG_IIO_CONSUMERS_PER_TRIGGER=3D2
# CONFIG_IIO_SW_DEVICE is not set
# CONFIG_IIO_SW_TRIGGER is not set
# CONFIG_IIO_TRIGGERED_EVENT is not set

#
# Accelerometers
#
# CONFIG_ADIS16201 is not set
# CONFIG_ADIS16209 is not set
# CONFIG_ADXL313_I2C is not set
# CONFIG_ADXL313_SPI is not set
# CONFIG_ADXL345_I2C is not set
# CONFIG_ADXL345_SPI is not set
# CONFIG_ADXL355_I2C is not set
# CONFIG_ADXL355_SPI is not set
# CONFIG_ADXL367_SPI is not set
# CONFIG_ADXL367_I2C is not set
# CONFIG_ADXL372_SPI is not set
# CONFIG_ADXL372_I2C is not set
# CONFIG_ADXL380_SPI is not set
# CONFIG_ADXL380_I2C is not set
# CONFIG_BMA180 is not set
# CONFIG_BMA220 is not set
# CONFIG_BMA400 is not set
# CONFIG_BMC150_ACCEL is not set
# CONFIG_BMI088_ACCEL is not set
# CONFIG_DA280 is not set
# CONFIG_DA311 is not set
# CONFIG_DMARD06 is not set
# CONFIG_DMARD09 is not set
# CONFIG_DMARD10 is not set
# CONFIG_FXLS8962AF_I2C is not set
# CONFIG_FXLS8962AF_SPI is not set
CONFIG_HID_SENSOR_ACCEL_3D=3Dy
# CONFIG_IIO_ST_ACCEL_3AXIS is not set
# CONFIG_IIO_KX022A_SPI is not set
# CONFIG_IIO_KX022A_I2C is not set
# CONFIG_KXSD9 is not set
# CONFIG_KXCJK1013 is not set
# CONFIG_MC3230 is not set
# CONFIG_MMA7455_I2C is not set
# CONFIG_MMA7455_SPI is not set
# CONFIG_MMA7660 is not set
# CONFIG_MMA8452 is not set
# CONFIG_MMA9551 is not set
# CONFIG_MMA9553 is not set
# CONFIG_MSA311 is not set
# CONFIG_MXC4005 is not set
# CONFIG_MXC6255 is not set
# CONFIG_SCA3000 is not set
# CONFIG_SCA3300 is not set
# CONFIG_STK8312 is not set
# CONFIG_STK8BA50 is not set
# end of Accelerometers

#
# Analog to digital converters
#
# CONFIG_AD4000 is not set
# CONFIG_AD4130 is not set
# CONFIG_AD4695 is not set
# CONFIG_AD7091R5 is not set
# CONFIG_AD7091R8 is not set
# CONFIG_AD7124 is not set
# CONFIG_AD7173 is not set
# CONFIG_AD7192 is not set
# CONFIG_AD7266 is not set
# CONFIG_AD7280 is not set
# CONFIG_AD7291 is not set
# CONFIG_AD7292 is not set
# CONFIG_AD7298 is not set
# CONFIG_AD7380 is not set
# CONFIG_AD7476 is not set
# CONFIG_AD7606_IFACE_PARALLEL is not set
# CONFIG_AD7606_IFACE_SPI is not set
# CONFIG_AD7766 is not set
# CONFIG_AD7768_1 is not set
# CONFIG_AD7779 is not set
# CONFIG_AD7780 is not set
# CONFIG_AD7791 is not set
# CONFIG_AD7793 is not set
# CONFIG_AD7887 is not set
# CONFIG_AD7923 is not set
# CONFIG_AD7944 is not set
# CONFIG_AD7949 is not set
# CONFIG_AD799X is not set
# CONFIG_AD9467 is not set
# CONFIG_CC10001_ADC is not set
CONFIG_DLN2_ADC=3Dy
# CONFIG_ENVELOPE_DETECTOR is not set
# CONFIG_GEHC_PMC_ADC is not set
# CONFIG_HI8435 is not set
# CONFIG_HX711 is not set
# CONFIG_INA2XX_ADC is not set
# CONFIG_LTC2309 is not set
# CONFIG_LTC2471 is not set
# CONFIG_LTC2485 is not set
# CONFIG_LTC2496 is not set
# CONFIG_LTC2497 is not set
# CONFIG_MAX1027 is not set
# CONFIG_MAX11100 is not set
# CONFIG_MAX1118 is not set
# CONFIG_MAX11205 is not set
# CONFIG_MAX11410 is not set
# CONFIG_MAX1241 is not set
# CONFIG_MAX1363 is not set
# CONFIG_MAX34408 is not set
# CONFIG_MAX9611 is not set
# CONFIG_MCP320X is not set
# CONFIG_MCP3422 is not set
# CONFIG_MCP3564 is not set
# CONFIG_MCP3911 is not set
# CONFIG_MEDIATEK_MT6360_ADC is not set
# CONFIG_MEDIATEK_MT6370_ADC is not set
# CONFIG_NAU7802 is not set
# CONFIG_PAC1921 is not set
# CONFIG_PAC1934 is not set
# CONFIG_RICHTEK_RTQ6056 is not set
# CONFIG_SD_ADC_MODULATOR is not set
# CONFIG_TI_ADC081C is not set
# CONFIG_TI_ADC0832 is not set
# CONFIG_TI_ADC084S021 is not set
# CONFIG_TI_ADC12138 is not set
# CONFIG_TI_ADC108S102 is not set
# CONFIG_TI_ADC128S052 is not set
# CONFIG_TI_ADC161S626 is not set
# CONFIG_TI_ADS1015 is not set
# CONFIG_TI_ADS1119 is not set
# CONFIG_TI_ADS7924 is not set
# CONFIG_TI_ADS1100 is not set
# CONFIG_TI_ADS1298 is not set
# CONFIG_TI_ADS7950 is not set
# CONFIG_TI_ADS8344 is not set
# CONFIG_TI_ADS8688 is not set
# CONFIG_TI_ADS124S08 is not set
# CONFIG_TI_ADS131E08 is not set
# CONFIG_TI_LMP92064 is not set
# CONFIG_TI_TLC4541 is not set
# CONFIG_TI_TSC2046 is not set
# CONFIG_TWL4030_MADC is not set
# CONFIG_TWL6030_GPADC is not set
# CONFIG_VF610_ADC is not set
CONFIG_VIPERBOARD_ADC=3Dy
# CONFIG_XILINX_XADC is not set
# end of Analog to digital converters

#
# Analog to digital and digital to analog converters
#
# CONFIG_AD74115 is not set
# CONFIG_AD74413R is not set
# end of Analog to digital and digital to analog converters

#
# Analog Front Ends
#
# CONFIG_IIO_RESCALE is not set
# end of Analog Front Ends

#
# Amplifiers
#
# CONFIG_AD8366 is not set
# CONFIG_ADA4250 is not set
# CONFIG_HMC425 is not set
# end of Amplifiers

#
# Capacitance to digital converters
#
# CONFIG_AD7150 is not set
# CONFIG_AD7746 is not set
# end of Capacitance to digital converters

#
# Chemical Sensors
#
# CONFIG_AOSONG_AGS02MA is not set
# CONFIG_ATLAS_PH_SENSOR is not set
# CONFIG_ATLAS_EZO_SENSOR is not set
# CONFIG_BME680 is not set
# CONFIG_CCS811 is not set
# CONFIG_ENS160 is not set
# CONFIG_IAQCORE is not set
# CONFIG_PMS7003 is not set
# CONFIG_SCD30_CORE is not set
# CONFIG_SCD4X is not set
# CONFIG_SENSIRION_SGP30 is not set
# CONFIG_SENSIRION_SGP40 is not set
# CONFIG_SPS30_I2C is not set
# CONFIG_SPS30_SERIAL is not set
# CONFIG_SENSEAIR_SUNRISE_CO2 is not set
# CONFIG_VZ89X is not set
# end of Chemical Sensors

#
# Hid Sensor IIO Common
#
CONFIG_HID_SENSOR_IIO_COMMON=3Dy
CONFIG_HID_SENSOR_IIO_TRIGGER=3Dy
# end of Hid Sensor IIO Common

#
# IIO SCMI Sensors
#
# end of IIO SCMI Sensors

#
# SSP Sensor Common
#
# CONFIG_IIO_SSP_SENSORHUB is not set
# end of SSP Sensor Common

#
# Digital to analog converters
#
# CONFIG_AD3552R_HS is not set
# CONFIG_AD3552R is not set
# CONFIG_AD5064 is not set
# CONFIG_AD5360 is not set
# CONFIG_AD5380 is not set
# CONFIG_AD5421 is not set
# CONFIG_AD5446 is not set
# CONFIG_AD5449 is not set
# CONFIG_AD5592R is not set
# CONFIG_AD5593R is not set
# CONFIG_AD5504 is not set
# CONFIG_AD5624R_SPI is not set
# CONFIG_AD9739A is not set
# CONFIG_LTC2688 is not set
# CONFIG_AD5686_SPI is not set
# CONFIG_AD5696_I2C is not set
# CONFIG_AD5755 is not set
# CONFIG_AD5758 is not set
# CONFIG_AD5761 is not set
# CONFIG_AD5764 is not set
# CONFIG_AD5766 is not set
# CONFIG_AD5770R is not set
# CONFIG_AD5791 is not set
# CONFIG_AD7293 is not set
# CONFIG_AD7303 is not set
# CONFIG_AD8460 is not set
# CONFIG_AD8801 is not set
# CONFIG_DPOT_DAC is not set
# CONFIG_DS4424 is not set
# CONFIG_LTC1660 is not set
# CONFIG_LTC2632 is not set
# CONFIG_LTC2664 is not set
# CONFIG_M62332 is not set
# CONFIG_MAX517 is not set
# CONFIG_MAX5522 is not set
# CONFIG_MAX5821 is not set
# CONFIG_MCP4725 is not set
# CONFIG_MCP4728 is not set
# CONFIG_MCP4821 is not set
# CONFIG_MCP4922 is not set
# CONFIG_TI_DAC082S085 is not set
# CONFIG_TI_DAC5571 is not set
# CONFIG_TI_DAC7311 is not set
# CONFIG_TI_DAC7612 is not set
# CONFIG_VF610_DAC is not set
# end of Digital to analog converters

#
# IIO dummy driver
#
# end of IIO dummy driver

#
# Filters
#
# CONFIG_ADMV8818 is not set
# end of Filters

#
# Frequency Synthesizers DDS/PLL
#

#
# Clock Generator/Distribution
#
# CONFIG_AD9523 is not set
# end of Clock Generator/Distribution

#
# Phase-Locked Loop (PLL) frequency synthesizers
#
# CONFIG_ADF4350 is not set
# CONFIG_ADF4371 is not set
# CONFIG_ADF4377 is not set
# CONFIG_ADMFM2000 is not set
# CONFIG_ADMV1013 is not set
# CONFIG_ADMV1014 is not set
# CONFIG_ADMV4420 is not set
# CONFIG_ADRF6780 is not set
# end of Phase-Locked Loop (PLL) frequency synthesizers
# end of Frequency Synthesizers DDS/PLL

#
# Digital gyroscope sensors
#
# CONFIG_ADIS16080 is not set
# CONFIG_ADIS16130 is not set
# CONFIG_ADIS16136 is not set
# CONFIG_ADIS16260 is not set
# CONFIG_ADXRS290 is not set
# CONFIG_ADXRS450 is not set
# CONFIG_BMG160 is not set
# CONFIG_FXAS21002C is not set
CONFIG_HID_SENSOR_GYRO_3D=3Dy
# CONFIG_MPU3050_I2C is not set
# CONFIG_IIO_ST_GYRO_3AXIS is not set
# CONFIG_ITG3200 is not set
# end of Digital gyroscope sensors

#
# Health Sensors
#

#
# Heart Rate Monitors
#
# CONFIG_AFE4403 is not set
# CONFIG_AFE4404 is not set
# CONFIG_MAX30100 is not set
# CONFIG_MAX30102 is not set
# end of Heart Rate Monitors
# end of Health Sensors

#
# Humidity sensors
#
# CONFIG_AM2315 is not set
# CONFIG_DHT11 is not set
# CONFIG_ENS210 is not set
# CONFIG_HDC100X is not set
# CONFIG_HDC2010 is not set
# CONFIG_HDC3020 is not set
CONFIG_HID_SENSOR_HUMIDITY=3Dy
# CONFIG_HTS221 is not set
# CONFIG_HTU21 is not set
# CONFIG_SI7005 is not set
# CONFIG_SI7020 is not set
# end of Humidity sensors

#
# Inertial measurement units
#
# CONFIG_ADIS16400 is not set
# CONFIG_ADIS16460 is not set
# CONFIG_ADIS16475 is not set
# CONFIG_ADIS16480 is not set
# CONFIG_BMI160_I2C is not set
# CONFIG_BMI160_SPI is not set
# CONFIG_BMI270_I2C is not set
# CONFIG_BMI270_SPI is not set
# CONFIG_BMI323_I2C is not set
# CONFIG_BMI323_SPI is not set
# CONFIG_BOSCH_BNO055_SERIAL is not set
# CONFIG_BOSCH_BNO055_I2C is not set
# CONFIG_FXOS8700_I2C is not set
# CONFIG_FXOS8700_SPI is not set
# CONFIG_KMX61 is not set
# CONFIG_INV_ICM42600_I2C is not set
# CONFIG_INV_ICM42600_SPI is not set
# CONFIG_INV_MPU6050_I2C is not set
# CONFIG_INV_MPU6050_SPI is not set
# CONFIG_SMI240 is not set
# CONFIG_IIO_ST_LSM6DSX is not set
# CONFIG_IIO_ST_LSM9DS0 is not set
# end of Inertial measurement units

#
# Light sensors
#
# CONFIG_ACPI_ALS is not set
# CONFIG_ADJD_S311 is not set
# CONFIG_ADUX1020 is not set
# CONFIG_AL3010 is not set
# CONFIG_AL3320A is not set
# CONFIG_APDS9300 is not set
# CONFIG_APDS9306 is not set
# CONFIG_APDS9960 is not set
# CONFIG_AS73211 is not set
# CONFIG_BH1745 is not set
# CONFIG_BH1750 is not set
# CONFIG_BH1780 is not set
# CONFIG_CM32181 is not set
# CONFIG_CM3232 is not set
# CONFIG_CM3323 is not set
# CONFIG_CM3605 is not set
# CONFIG_CM36651 is not set
# CONFIG_GP2AP002 is not set
# CONFIG_GP2AP020A00F is not set
# CONFIG_SENSORS_ISL29018 is not set
# CONFIG_SENSORS_ISL29028 is not set
# CONFIG_ISL29125 is not set
# CONFIG_ISL76682 is not set
CONFIG_HID_SENSOR_ALS=3Dy
CONFIG_HID_SENSOR_PROX=3Dy
# CONFIG_JSA1212 is not set
# CONFIG_ROHM_BU27008 is not set
# CONFIG_ROHM_BU27034 is not set
# CONFIG_RPR0521 is not set
# CONFIG_LTR390 is not set
# CONFIG_LTR501 is not set
# CONFIG_LTRF216A is not set
# CONFIG_LV0104CS is not set
# CONFIG_MAX44000 is not set
# CONFIG_MAX44009 is not set
# CONFIG_NOA1305 is not set
# CONFIG_OPT3001 is not set
# CONFIG_OPT4001 is not set
# CONFIG_PA12203001 is not set
# CONFIG_SI1133 is not set
# CONFIG_SI1145 is not set
# CONFIG_STK3310 is not set
# CONFIG_ST_UVIS25 is not set
# CONFIG_TCS3414 is not set
# CONFIG_TCS3472 is not set
# CONFIG_SENSORS_TSL2563 is not set
# CONFIG_TSL2583 is not set
# CONFIG_TSL2591 is not set
# CONFIG_TSL2772 is not set
# CONFIG_TSL4531 is not set
# CONFIG_US5182D is not set
# CONFIG_VCNL4000 is not set
# CONFIG_VCNL4035 is not set
# CONFIG_VEML3235 is not set
# CONFIG_VEML6030 is not set
# CONFIG_VEML6040 is not set
# CONFIG_VEML6070 is not set
# CONFIG_VEML6075 is not set
# CONFIG_VL6180 is not set
# CONFIG_ZOPT2201 is not set
# end of Light sensors

#
# Magnetometer sensors
#
# CONFIG_AF8133J is not set
# CONFIG_AK8974 is not set
# CONFIG_AK8975 is not set
# CONFIG_AK09911 is not set
# CONFIG_ALS31300 is not set
# CONFIG_BMC150_MAGN_I2C is not set
# CONFIG_BMC150_MAGN_SPI is not set
# CONFIG_MAG3110 is not set
CONFIG_HID_SENSOR_MAGNETOMETER_3D=3Dy
# CONFIG_MMC35240 is not set
# CONFIG_IIO_ST_MAGN_3AXIS is not set
# CONFIG_SENSORS_HMC5843_I2C is not set
# CONFIG_SENSORS_HMC5843_SPI is not set
# CONFIG_SENSORS_RM3100_I2C is not set
# CONFIG_SENSORS_RM3100_SPI is not set
# CONFIG_TI_TMAG5273 is not set
# CONFIG_YAMAHA_YAS530 is not set
# end of Magnetometer sensors

#
# Multiplexers
#
# CONFIG_IIO_MUX is not set
# end of Multiplexers

#
# Inclinometer sensors
#
CONFIG_HID_SENSOR_INCLINOMETER_3D=3Dy
CONFIG_HID_SENSOR_DEVICE_ROTATION=3Dy
# end of Inclinometer sensors

#
# Triggers - standalone
#
# CONFIG_IIO_INTERRUPT_TRIGGER is not set
# CONFIG_IIO_SYSFS_TRIGGER is not set
# end of Triggers - standalone

#
# Linear and angular position sensors
#
CONFIG_HID_SENSOR_CUSTOM_INTEL_HINGE=3Dy
# end of Linear and angular position sensors

#
# Digital potentiometers
#
# CONFIG_AD5110 is not set
# CONFIG_AD5272 is not set
# CONFIG_DS1803 is not set
# CONFIG_MAX5432 is not set
# CONFIG_MAX5481 is not set
# CONFIG_MAX5487 is not set
# CONFIG_MCP4018 is not set
# CONFIG_MCP4131 is not set
# CONFIG_MCP4531 is not set
# CONFIG_MCP41010 is not set
# CONFIG_TPL0102 is not set
# CONFIG_X9250 is not set
# end of Digital potentiometers

#
# Digital potentiostats
#
# CONFIG_LMP91000 is not set
# end of Digital potentiostats

#
# Pressure sensors
#
# CONFIG_ABP060MG is not set
# CONFIG_ROHM_BM1390 is not set
# CONFIG_BMP280 is not set
# CONFIG_DLHL60D is not set
# CONFIG_DPS310 is not set
CONFIG_HID_SENSOR_PRESS=3Dy
# CONFIG_HP03 is not set
# CONFIG_HSC030PA is not set
# CONFIG_ICP10100 is not set
# CONFIG_MPL115_I2C is not set
# CONFIG_MPL115_SPI is not set
# CONFIG_MPL3115 is not set
# CONFIG_MPRLS0025PA is not set
# CONFIG_MS5611 is not set
# CONFIG_MS5637 is not set
# CONFIG_SDP500 is not set
# CONFIG_IIO_ST_PRESS is not set
# CONFIG_T5403 is not set
# CONFIG_HP206C is not set
# CONFIG_ZPA2326 is not set
# end of Pressure sensors

#
# Lightning sensors
#
# CONFIG_AS3935 is not set
# end of Lightning sensors

#
# Proximity and distance sensors
#
# CONFIG_HX9023S is not set
# CONFIG_IRSD200 is not set
# CONFIG_ISL29501 is not set
# CONFIG_LIDAR_LITE_V2 is not set
# CONFIG_MB1232 is not set
# CONFIG_PING is not set
# CONFIG_RFD77402 is not set
# CONFIG_SRF04 is not set
# CONFIG_SX9310 is not set
# CONFIG_SX9324 is not set
# CONFIG_SX9360 is not set
# CONFIG_SX9500 is not set
# CONFIG_SRF08 is not set
# CONFIG_VCNL3020 is not set
# CONFIG_VL53L0X_I2C is not set
# CONFIG_AW96103 is not set
# end of Proximity and distance sensors

#
# Resolver to digital converters
#
# CONFIG_AD2S90 is not set
# CONFIG_AD2S1200 is not set
# CONFIG_AD2S1210 is not set
# end of Resolver to digital converters

#
# Temperature sensors
#
# CONFIG_LTC2983 is not set
# CONFIG_MAXIM_THERMOCOUPLE is not set
CONFIG_HID_SENSOR_TEMP=3Dy
# CONFIG_MLX90614 is not set
# CONFIG_MLX90632 is not set
# CONFIG_MLX90635 is not set
# CONFIG_TMP006 is not set
# CONFIG_TMP007 is not set
# CONFIG_TMP117 is not set
# CONFIG_TSYS01 is not set
# CONFIG_TSYS02D is not set
# CONFIG_MAX30208 is not set
# CONFIG_MAX31856 is not set
# CONFIG_MAX31865 is not set
# CONFIG_MCP9600 is not set
# end of Temperature sensors

# CONFIG_NTB is not set
# CONFIG_PWM is not set

#
# IRQ chip support
#
CONFIG_IRQCHIP=3Dy
# CONFIG_AL_FIC is not set
# CONFIG_LAN966X_OIC is not set
# CONFIG_XILINX_INTC is not set
# end of IRQ chip support

# CONFIG_IPACK_BUS is not set
CONFIG_RESET_CONTROLLER=3Dy
# CONFIG_RESET_GPIO is not set
# CONFIG_RESET_INTEL_GW is not set
# CONFIG_RESET_SIMPLE is not set
# CONFIG_RESET_TI_SYSCON is not set
# CONFIG_RESET_TI_TPS380X is not set

#
# PHY Subsystem
#
CONFIG_GENERIC_PHY=3Dy
CONFIG_USB_LGM_PHY=3Dy
# CONFIG_PHY_CAN_TRANSCEIVER is not set
# CONFIG_PHY_NXP_PTN3222 is not set

#
# PHY drivers for Broadcom platforms
#
# CONFIG_BCM_KONA_USB2_PHY is not set
# end of PHY drivers for Broadcom platforms

# CONFIG_PHY_CADENCE_TORRENT is not set
# CONFIG_PHY_CADENCE_DPHY is not set
# CONFIG_PHY_CADENCE_DPHY_RX is not set
# CONFIG_PHY_CADENCE_SIERRA is not set
# CONFIG_PHY_CADENCE_SALVO is not set
# CONFIG_PHY_PXA_28NM_HSIC is not set
# CONFIG_PHY_PXA_28NM_USB2 is not set
# CONFIG_PHY_LAN966X_SERDES is not set
CONFIG_PHY_CPCAP_USB=3Dy
# CONFIG_PHY_MAPPHONE_MDM6600 is not set
# CONFIG_PHY_OCELOT_SERDES is not set
CONFIG_PHY_QCOM_USB_HS=3Dy
CONFIG_PHY_QCOM_USB_HSIC=3Dy
CONFIG_PHY_SAMSUNG_USB2=3Dy
CONFIG_PHY_TUSB1210=3Dy
# CONFIG_PHY_INTEL_LGM_COMBO is not set
# CONFIG_PHY_INTEL_LGM_EMMC is not set
# end of PHY Subsystem

# CONFIG_POWERCAP is not set
# CONFIG_MCB is not set

#
# Performance monitor support
#
# CONFIG_DWC_PCIE_PMU is not set
# end of Performance monitor support

CONFIG_RAS=3Dy
CONFIG_USB4=3Dy
# CONFIG_USB4_DEBUGFS_WRITE is not set
# CONFIG_USB4_DMA_TEST is not set

#
# Android
#
CONFIG_ANDROID_BINDER_IPC=3Dy
CONFIG_ANDROID_BINDERFS=3Dy
CONFIG_ANDROID_BINDER_DEVICES=3D"binder0,binder1"
# CONFIG_ANDROID_BINDER_IPC_SELFTEST is not set
# end of Android

CONFIG_LIBNVDIMM=3Dy
CONFIG_BLK_DEV_PMEM=3Dy
CONFIG_ND_CLAIM=3Dy
CONFIG_ND_BTT=3Dy
CONFIG_BTT=3Dy
CONFIG_ND_PFN=3Dy
CONFIG_NVDIMM_PFN=3Dy
CONFIG_NVDIMM_DAX=3Dy
CONFIG_OF_PMEM=3Dy
CONFIG_NVDIMM_KEYS=3Dy
# CONFIG_NVDIMM_SECURITY_TEST is not set
CONFIG_DAX=3Dy
CONFIG_DEV_DAX=3Dy
# CONFIG_DEV_DAX_PMEM is not set
# CONFIG_DEV_DAX_KMEM is not set
CONFIG_NVMEM=3Dy
CONFIG_NVMEM_SYSFS=3Dy
CONFIG_NVMEM_LAYOUTS=3Dy

#
# Layout Types
#
# CONFIG_NVMEM_LAYOUT_SL28_VPD is not set
# CONFIG_NVMEM_LAYOUT_ONIE_TLV is not set
# CONFIG_NVMEM_LAYOUT_U_BOOT_ENV is not set
# end of Layout Types

# CONFIG_NVMEM_RMEM is not set
# CONFIG_NVMEM_U_BOOT_ENV is not set

#
# HW tracing support
#
# CONFIG_STM is not set
# CONFIG_INTEL_TH is not set
# end of HW tracing support

# CONFIG_FPGA is not set
# CONFIG_FSI is not set
CONFIG_TEE=3Dy
# CONFIG_SIOX is not set
# CONFIG_SLIMBUS is not set
# CONFIG_INTERCONNECT is not set
CONFIG_COUNTER=3Dy
# CONFIG_INTEL_QEP is not set
# CONFIG_INTERRUPT_CNT is not set
CONFIG_MOST=3Dy
CONFIG_MOST_USB_HDM=3Dy
# CONFIG_MOST_CDEV is not set
# CONFIG_MOST_SND is not set
# CONFIG_PECI is not set
# CONFIG_HTE is not set
# end of Device Drivers

#
# File systems
#
CONFIG_DCACHE_WORD_ACCESS=3Dy
CONFIG_VALIDATE_FS_PARSER=3Dy
CONFIG_FS_IOMAP=3Dy
CONFIG_FS_STACK=3Dy
CONFIG_BUFFER_HEAD=3Dy
CONFIG_LEGACY_DIRECT_IO=3Dy
# CONFIG_EXT2_FS is not set
CONFIG_EXT3_FS=3Dy
CONFIG_EXT3_FS_POSIX_ACL=3Dy
CONFIG_EXT3_FS_SECURITY=3Dy
CONFIG_EXT4_FS=3Dy
CONFIG_EXT4_USE_FOR_EXT2=3Dy
CONFIG_EXT4_FS_POSIX_ACL=3Dy
CONFIG_EXT4_FS_SECURITY=3Dy
# CONFIG_EXT4_DEBUG is not set
CONFIG_JBD2=3Dy
# CONFIG_JBD2_DEBUG is not set
CONFIG_FS_MBCACHE=3Dy
CONFIG_JFS_FS=3Dy
CONFIG_JFS_POSIX_ACL=3Dy
CONFIG_JFS_SECURITY=3Dy
CONFIG_JFS_DEBUG=3Dy
# CONFIG_JFS_STATISTICS is not set
CONFIG_XFS_FS=3Dy
# CONFIG_XFS_SUPPORT_V4 is not set
# CONFIG_XFS_SUPPORT_ASCII_CI is not set
CONFIG_XFS_QUOTA=3Dy
CONFIG_XFS_POSIX_ACL=3Dy
CONFIG_XFS_RT=3Dy
# CONFIG_XFS_ONLINE_SCRUB is not set
# CONFIG_XFS_WARN is not set
# CONFIG_XFS_DEBUG is not set
CONFIG_GFS2_FS=3Dy
CONFIG_GFS2_FS_LOCKING_DLM=3Dy
CONFIG_OCFS2_FS=3Dy
CONFIG_OCFS2_FS_O2CB=3Dy
CONFIG_OCFS2_FS_USERSPACE_CLUSTER=3Dy
CONFIG_OCFS2_FS_STATS=3Dy
# CONFIG_OCFS2_DEBUG_MASKLOG is not set
CONFIG_OCFS2_DEBUG_FS=3Dy
CONFIG_BTRFS_FS=3Dy
CONFIG_BTRFS_FS_POSIX_ACL=3Dy
# CONFIG_BTRFS_FS_RUN_SANITY_TESTS is not set
# CONFIG_BTRFS_DEBUG is not set
CONFIG_BTRFS_ASSERT=3Dy
# CONFIG_BTRFS_EXPERIMENTAL is not set
CONFIG_BTRFS_FS_REF_VERIFY=3Dy
CONFIG_NILFS2_FS=3Dy
CONFIG_F2FS_FS=3Dy
CONFIG_F2FS_STAT_FS=3Dy
CONFIG_F2FS_FS_XATTR=3Dy
CONFIG_F2FS_FS_POSIX_ACL=3Dy
CONFIG_F2FS_FS_SECURITY=3Dy
CONFIG_F2FS_CHECK_FS=3Dy
CONFIG_F2FS_FAULT_INJECTION=3Dy
CONFIG_F2FS_FS_COMPRESSION=3Dy
CONFIG_F2FS_FS_LZO=3Dy
CONFIG_F2FS_FS_LZORLE=3Dy
CONFIG_F2FS_FS_LZ4=3Dy
CONFIG_F2FS_FS_LZ4HC=3Dy
CONFIG_F2FS_FS_ZSTD=3Dy
# CONFIG_F2FS_IOSTAT is not set
# CONFIG_F2FS_UNFAIR_RWSEM is not set
CONFIG_BCACHEFS_FS=3Dy
CONFIG_BCACHEFS_QUOTA=3Dy
CONFIG_BCACHEFS_ERASURE_CODING=3Dy
CONFIG_BCACHEFS_POSIX_ACL=3Dy
CONFIG_BCACHEFS_DEBUG=3Dy
# CONFIG_BCACHEFS_TESTS is not set
# CONFIG_BCACHEFS_LOCK_TIME_STATS is not set
# CONFIG_BCACHEFS_NO_LATENCY_ACCT is not set
CONFIG_BCACHEFS_SIX_OPTIMISTIC_SPIN=3Dy
# CONFIG_BCACHEFS_PATH_TRACEPOINTS is not set
CONFIG_ZONEFS_FS=3Dy
CONFIG_FS_DAX=3Dy
CONFIG_FS_DAX_PMD=3Dy
CONFIG_FS_POSIX_ACL=3Dy
CONFIG_EXPORTFS=3Dy
CONFIG_EXPORTFS_BLOCK_OPS=3Dy
CONFIG_FILE_LOCKING=3Dy
CONFIG_FS_ENCRYPTION=3Dy
CONFIG_FS_ENCRYPTION_ALGS=3Dy
# CONFIG_FS_ENCRYPTION_INLINE_CRYPT is not set
CONFIG_FS_VERITY=3Dy
CONFIG_FS_VERITY_BUILTIN_SIGNATURES=3Dy
CONFIG_FSNOTIFY=3Dy
CONFIG_DNOTIFY=3Dy
CONFIG_INOTIFY_USER=3Dy
CONFIG_FANOTIFY=3Dy
CONFIG_FANOTIFY_ACCESS_PERMISSIONS=3Dy
CONFIG_QUOTA=3Dy
CONFIG_QUOTA_NETLINK_INTERFACE=3Dy
# CONFIG_QUOTA_DEBUG is not set
CONFIG_QUOTA_TREE=3Dy
# CONFIG_QFMT_V1 is not set
CONFIG_QFMT_V2=3Dy
CONFIG_QUOTACTL=3Dy
CONFIG_AUTOFS_FS=3Dy
CONFIG_FUSE_FS=3Dy
CONFIG_CUSE=3Dy
CONFIG_VIRTIO_FS=3Dy
CONFIG_FUSE_DAX=3Dy
# CONFIG_FUSE_PASSTHROUGH is not set
CONFIG_OVERLAY_FS=3Dy
CONFIG_OVERLAY_FS_REDIRECT_DIR=3Dy
CONFIG_OVERLAY_FS_REDIRECT_ALWAYS_FOLLOW=3Dy
CONFIG_OVERLAY_FS_INDEX=3Dy
# CONFIG_OVERLAY_FS_NFS_EXPORT is not set
# CONFIG_OVERLAY_FS_XINO_AUTO is not set
# CONFIG_OVERLAY_FS_METACOPY is not set
CONFIG_OVERLAY_FS_DEBUG=3Dy

#
# Caches
#
CONFIG_NETFS_SUPPORT=3Dy
# CONFIG_NETFS_STATS is not set
# CONFIG_NETFS_DEBUG is not set
CONFIG_FSCACHE=3Dy
# CONFIG_FSCACHE_STATS is not set
CONFIG_CACHEFILES=3Dy
# CONFIG_CACHEFILES_DEBUG is not set
# CONFIG_CACHEFILES_ERROR_INJECTION is not set
# CONFIG_CACHEFILES_ONDEMAND is not set
# end of Caches

#
# CD-ROM/DVD Filesystems
#
CONFIG_ISO9660_FS=3Dy
CONFIG_JOLIET=3Dy
CONFIG_ZISOFS=3Dy
CONFIG_UDF_FS=3Dy
# end of CD-ROM/DVD Filesystems

#
# DOS/FAT/EXFAT/NT Filesystems
#
CONFIG_FAT_FS=3Dy
CONFIG_MSDOS_FS=3Dy
CONFIG_VFAT_FS=3Dy
CONFIG_FAT_DEFAULT_CODEPAGE=3D437
CONFIG_FAT_DEFAULT_IOCHARSET=3D"iso8859-1"
# CONFIG_FAT_DEFAULT_UTF8 is not set
CONFIG_EXFAT_FS=3Dy
CONFIG_EXFAT_DEFAULT_IOCHARSET=3D"utf8"
CONFIG_NTFS3_FS=3Dy
# CONFIG_NTFS3_64BIT_CLUSTER is not set
CONFIG_NTFS3_LZX_XPRESS=3Dy
CONFIG_NTFS3_FS_POSIX_ACL=3Dy
# CONFIG_NTFS_FS is not set
# end of DOS/FAT/EXFAT/NT Filesystems

#
# Pseudo filesystems
#
CONFIG_PROC_FS=3Dy
CONFIG_PROC_KCORE=3Dy
CONFIG_PROC_VMCORE=3Dy
# CONFIG_PROC_VMCORE_DEVICE_DUMP is not set
CONFIG_PROC_SYSCTL=3Dy
CONFIG_PROC_PAGE_MONITOR=3Dy
CONFIG_PROC_CHILDREN=3Dy
CONFIG_PROC_PID_ARCH_STATUS=3Dy
CONFIG_KERNFS=3Dy
CONFIG_SYSFS=3Dy
CONFIG_TMPFS=3Dy
CONFIG_TMPFS_POSIX_ACL=3Dy
CONFIG_TMPFS_XATTR=3Dy
# CONFIG_TMPFS_INODE64 is not set
CONFIG_TMPFS_QUOTA=3Dy
CONFIG_HUGETLBFS=3Dy
# CONFIG_HUGETLB_PAGE_OPTIMIZE_VMEMMAP_DEFAULT_ON is not set
CONFIG_HUGETLB_PAGE=3Dy
CONFIG_HUGETLB_PAGE_OPTIMIZE_VMEMMAP=3Dy
CONFIG_HUGETLB_PMD_PAGE_TABLE_SHARING=3Dy
CONFIG_ARCH_HAS_GIGANTIC_PAGE=3Dy
CONFIG_CONFIGFS_FS=3Dy
# end of Pseudo filesystems

CONFIG_MISC_FILESYSTEMS=3Dy
CONFIG_ORANGEFS_FS=3Dy
CONFIG_ADFS_FS=3Dy
# CONFIG_ADFS_FS_RW is not set
CONFIG_AFFS_FS=3Dy
CONFIG_ECRYPT_FS=3Dy
CONFIG_ECRYPT_FS_MESSAGING=3Dy
CONFIG_HFS_FS=3Dy
CONFIG_HFSPLUS_FS=3Dy
CONFIG_BEFS_FS=3Dy
# CONFIG_BEFS_DEBUG is not set
CONFIG_BFS_FS=3Dy
CONFIG_EFS_FS=3Dy
CONFIG_JFFS2_FS=3Dy
CONFIG_JFFS2_FS_DEBUG=3D0
CONFIG_JFFS2_FS_WRITEBUFFER=3Dy
# CONFIG_JFFS2_FS_WBUF_VERIFY is not set
CONFIG_JFFS2_SUMMARY=3Dy
CONFIG_JFFS2_FS_XATTR=3Dy
CONFIG_JFFS2_FS_POSIX_ACL=3Dy
CONFIG_JFFS2_FS_SECURITY=3Dy
CONFIG_JFFS2_COMPRESSION_OPTIONS=3Dy
CONFIG_JFFS2_ZLIB=3Dy
CONFIG_JFFS2_LZO=3Dy
CONFIG_JFFS2_RTIME=3Dy
CONFIG_JFFS2_RUBIN=3Dy
# CONFIG_JFFS2_CMODE_NONE is not set
CONFIG_JFFS2_CMODE_PRIORITY=3Dy
# CONFIG_JFFS2_CMODE_SIZE is not set
# CONFIG_JFFS2_CMODE_FAVOURLZO is not set
CONFIG_UBIFS_FS=3Dy
CONFIG_UBIFS_FS_ADVANCED_COMPR=3Dy
CONFIG_UBIFS_FS_LZO=3Dy
CONFIG_UBIFS_FS_ZLIB=3Dy
CONFIG_UBIFS_FS_ZSTD=3Dy
CONFIG_UBIFS_ATIME_SUPPORT=3Dy
CONFIG_UBIFS_FS_XATTR=3Dy
CONFIG_UBIFS_FS_SECURITY=3Dy
# CONFIG_UBIFS_FS_AUTHENTICATION is not set
CONFIG_CRAMFS=3Dy
CONFIG_CRAMFS_BLOCKDEV=3Dy
CONFIG_CRAMFS_MTD=3Dy
CONFIG_SQUASHFS=3Dy
# CONFIG_SQUASHFS_FILE_CACHE is not set
CONFIG_SQUASHFS_FILE_DIRECT=3Dy
CONFIG_SQUASHFS_DECOMP_MULTI=3Dy
# CONFIG_SQUASHFS_CHOICE_DECOMP_BY_MOUNT is not set
# CONFIG_SQUASHFS_COMPILE_DECOMP_SINGLE is not set
CONFIG_SQUASHFS_COMPILE_DECOMP_MULTI=3Dy
# CONFIG_SQUASHFS_COMPILE_DECOMP_MULTI_PERCPU is not set
# CONFIG_SQUASHFS_MOUNT_DECOMP_THREADS is not set
CONFIG_SQUASHFS_XATTR=3Dy
CONFIG_SQUASHFS_ZLIB=3Dy
CONFIG_SQUASHFS_LZ4=3Dy
CONFIG_SQUASHFS_LZO=3Dy
CONFIG_SQUASHFS_XZ=3Dy
CONFIG_SQUASHFS_ZSTD=3Dy
CONFIG_SQUASHFS_4K_DEVBLK_SIZE=3Dy
# CONFIG_SQUASHFS_EMBEDDED is not set
CONFIG_SQUASHFS_FRAGMENT_CACHE_SIZE=3D3
CONFIG_VXFS_FS=3Dy
CONFIG_MINIX_FS=3Dy
CONFIG_OMFS_FS=3Dy
CONFIG_HPFS_FS=3Dy
CONFIG_QNX4FS_FS=3Dy
CONFIG_QNX6FS_FS=3Dy
# CONFIG_QNX6FS_DEBUG is not set
CONFIG_ROMFS_FS=3Dy
# CONFIG_ROMFS_BACKED_BY_BLOCK is not set
# CONFIG_ROMFS_BACKED_BY_MTD is not set
CONFIG_ROMFS_BACKED_BY_BOTH=3Dy
CONFIG_ROMFS_ON_BLOCK=3Dy
CONFIG_ROMFS_ON_MTD=3Dy
CONFIG_PSTORE=3Dy
CONFIG_PSTORE_DEFAULT_KMSG_BYTES=3D10240
CONFIG_PSTORE_COMPRESS=3Dy
# CONFIG_PSTORE_CONSOLE is not set
# CONFIG_PSTORE_PMSG is not set
# CONFIG_PSTORE_RAM is not set
# CONFIG_PSTORE_BLK is not set
CONFIG_SYSV_FS=3Dy
CONFIG_UFS_FS=3Dy
CONFIG_UFS_FS_WRITE=3Dy
# CONFIG_UFS_DEBUG is not set
CONFIG_EROFS_FS=3Dy
# CONFIG_EROFS_FS_DEBUG is not set
CONFIG_EROFS_FS_XATTR=3Dy
CONFIG_EROFS_FS_POSIX_ACL=3Dy
CONFIG_EROFS_FS_SECURITY=3Dy
CONFIG_EROFS_FS_BACKED_BY_FILE=3Dy
CONFIG_EROFS_FS_ZIP=3Dy
# CONFIG_EROFS_FS_ZIP_LZMA is not set
# CONFIG_EROFS_FS_ZIP_DEFLATE is not set
# CONFIG_EROFS_FS_ZIP_ZSTD is not set
# CONFIG_EROFS_FS_ONDEMAND is not set
# CONFIG_EROFS_FS_PCPU_KTHREAD is not set
CONFIG_NETWORK_FILESYSTEMS=3Dy
CONFIG_NFS_FS=3Dy
# CONFIG_NFS_V2 is not set
CONFIG_NFS_V3=3Dy
CONFIG_NFS_V3_ACL=3Dy
CONFIG_NFS_V4=3Dy
# CONFIG_NFS_SWAP is not set
CONFIG_NFS_V4_1=3Dy
CONFIG_NFS_V4_2=3Dy
CONFIG_PNFS_FILE_LAYOUT=3Dy
CONFIG_PNFS_BLOCK=3Dy
CONFIG_PNFS_FLEXFILE_LAYOUT=3Dy
CONFIG_NFS_V4_1_IMPLEMENTATION_ID_DOMAIN=3D"kernel.org"
# CONFIG_NFS_V4_1_MIGRATION is not set
CONFIG_NFS_V4_SECURITY_LABEL=3Dy
CONFIG_ROOT_NFS=3Dy
CONFIG_NFS_FSCACHE=3Dy
# CONFIG_NFS_USE_LEGACY_DNS is not set
CONFIG_NFS_USE_KERNEL_DNS=3Dy
# CONFIG_NFS_DISABLE_UDP_SUPPORT is not set
CONFIG_NFS_V4_2_READ_PLUS=3Dy
CONFIG_NFSD=3Dy
# CONFIG_NFSD_V2 is not set
CONFIG_NFSD_V3_ACL=3Dy
CONFIG_NFSD_V4=3Dy
CONFIG_NFSD_PNFS=3Dy
CONFIG_NFSD_BLOCKLAYOUT=3Dy
CONFIG_NFSD_SCSILAYOUT=3Dy
CONFIG_NFSD_FLEXFILELAYOUT=3Dy
CONFIG_NFSD_V4_2_INTER_SSC=3Dy
CONFIG_NFSD_V4_SECURITY_LABEL=3Dy
# CONFIG_NFSD_LEGACY_CLIENT_TRACKING is not set
CONFIG_GRACE_PERIOD=3Dy
CONFIG_LOCKD=3Dy
CONFIG_LOCKD_V4=3Dy
CONFIG_NFS_ACL_SUPPORT=3Dy
CONFIG_NFS_COMMON=3Dy
# CONFIG_NFS_LOCALIO is not set
CONFIG_NFS_V4_2_SSC_HELPER=3Dy
CONFIG_SUNRPC=3Dy
CONFIG_SUNRPC_GSS=3Dy
CONFIG_SUNRPC_BACKCHANNEL=3Dy
CONFIG_RPCSEC_GSS_KRB5=3Dy
CONFIG_RPCSEC_GSS_KRB5_ENCTYPES_AES_SHA1=3Dy
# CONFIG_RPCSEC_GSS_KRB5_ENCTYPES_CAMELLIA is not set
# CONFIG_RPCSEC_GSS_KRB5_ENCTYPES_AES_SHA2 is not set
# CONFIG_SUNRPC_DEBUG is not set
# CONFIG_SUNRPC_XPRT_RDMA is not set
CONFIG_CEPH_FS=3Dy
CONFIG_CEPH_FSCACHE=3Dy
CONFIG_CEPH_FS_POSIX_ACL=3Dy
# CONFIG_CEPH_FS_SECURITY_LABEL is not set
CONFIG_CIFS=3Dy
# CONFIG_CIFS_STATS2 is not set
CONFIG_CIFS_ALLOW_INSECURE_LEGACY=3Dy
CONFIG_CIFS_UPCALL=3Dy
CONFIG_CIFS_XATTR=3Dy
CONFIG_CIFS_POSIX=3Dy
CONFIG_CIFS_DEBUG=3Dy
# CONFIG_CIFS_DEBUG2 is not set
# CONFIG_CIFS_DEBUG_DUMP_KEYS is not set
CONFIG_CIFS_DFS_UPCALL=3Dy
CONFIG_CIFS_SWN_UPCALL=3Dy
CONFIG_CIFS_SMB_DIRECT=3Dy
CONFIG_CIFS_FSCACHE=3Dy
# CONFIG_CIFS_ROOT is not set
# CONFIG_CIFS_COMPRESSION is not set
CONFIG_SMB_SERVER=3Dy
# CONFIG_SMB_SERVER_SMBDIRECT is not set
# CONFIG_SMB_SERVER_CHECK_CAP_NET_ADMIN is not set
# CONFIG_SMB_SERVER_KERBEROS5 is not set
CONFIG_SMBFS=3Dy
# CONFIG_CODA_FS is not set
CONFIG_AFS_FS=3Dy
# CONFIG_AFS_DEBUG is not set
CONFIG_AFS_FSCACHE=3Dy
# CONFIG_AFS_DEBUG_CURSOR is not set
CONFIG_9P_FS=3Dy
CONFIG_9P_FSCACHE=3Dy
CONFIG_9P_FS_POSIX_ACL=3Dy
CONFIG_9P_FS_SECURITY=3Dy
CONFIG_NLS=3Dy
CONFIG_NLS_DEFAULT=3D"utf8"
CONFIG_NLS_CODEPAGE_437=3Dy
CONFIG_NLS_CODEPAGE_737=3Dy
CONFIG_NLS_CODEPAGE_775=3Dy
CONFIG_NLS_CODEPAGE_850=3Dy
CONFIG_NLS_CODEPAGE_852=3Dy
CONFIG_NLS_CODEPAGE_855=3Dy
CONFIG_NLS_CODEPAGE_857=3Dy
CONFIG_NLS_CODEPAGE_860=3Dy
CONFIG_NLS_CODEPAGE_861=3Dy
CONFIG_NLS_CODEPAGE_862=3Dy
CONFIG_NLS_CODEPAGE_863=3Dy
CONFIG_NLS_CODEPAGE_864=3Dy
CONFIG_NLS_CODEPAGE_865=3Dy
CONFIG_NLS_CODEPAGE_866=3Dy
CONFIG_NLS_CODEPAGE_869=3Dy
CONFIG_NLS_CODEPAGE_936=3Dy
CONFIG_NLS_CODEPAGE_950=3Dy
CONFIG_NLS_CODEPAGE_932=3Dy
CONFIG_NLS_CODEPAGE_949=3Dy
CONFIG_NLS_CODEPAGE_874=3Dy
CONFIG_NLS_ISO8859_8=3Dy
CONFIG_NLS_CODEPAGE_1250=3Dy
CONFIG_NLS_CODEPAGE_1251=3Dy
CONFIG_NLS_ASCII=3Dy
CONFIG_NLS_ISO8859_1=3Dy
CONFIG_NLS_ISO8859_2=3Dy
CONFIG_NLS_ISO8859_3=3Dy
CONFIG_NLS_ISO8859_4=3Dy
CONFIG_NLS_ISO8859_5=3Dy
CONFIG_NLS_ISO8859_6=3Dy
CONFIG_NLS_ISO8859_7=3Dy
CONFIG_NLS_ISO8859_9=3Dy
CONFIG_NLS_ISO8859_13=3Dy
CONFIG_NLS_ISO8859_14=3Dy
CONFIG_NLS_ISO8859_15=3Dy
CONFIG_NLS_KOI8_R=3Dy
CONFIG_NLS_KOI8_U=3Dy
CONFIG_NLS_MAC_ROMAN=3Dy
CONFIG_NLS_MAC_CELTIC=3Dy
CONFIG_NLS_MAC_CENTEURO=3Dy
CONFIG_NLS_MAC_CROATIAN=3Dy
CONFIG_NLS_MAC_CYRILLIC=3Dy
CONFIG_NLS_MAC_GAELIC=3Dy
CONFIG_NLS_MAC_GREEK=3Dy
CONFIG_NLS_MAC_ICELAND=3Dy
CONFIG_NLS_MAC_INUIT=3Dy
CONFIG_NLS_MAC_ROMANIAN=3Dy
CONFIG_NLS_MAC_TURKISH=3Dy
CONFIG_NLS_UTF8=3Dy
CONFIG_NLS_UCS2_UTILS=3Dy
CONFIG_DLM=3Dy
# CONFIG_DLM_DEBUG is not set
CONFIG_UNICODE=3Dy
# CONFIG_UNICODE_NORMALIZATION_SELFTEST is not set
CONFIG_IO_WQ=3Dy
# end of File systems

#
# Security options
#
CONFIG_KEYS=3Dy
CONFIG_KEYS_REQUEST_CACHE=3Dy
CONFIG_PERSISTENT_KEYRINGS=3Dy
CONFIG_BIG_KEYS=3Dy
CONFIG_TRUSTED_KEYS=3Dy
# CONFIG_TRUSTED_KEYS_TPM is not set
# CONFIG_TRUSTED_KEYS_TEE is not set

#
# No trust source selected!
#
CONFIG_ENCRYPTED_KEYS=3Dy
# CONFIG_USER_DECRYPTED_DATA is not set
CONFIG_KEY_DH_OPERATIONS=3Dy
CONFIG_KEY_NOTIFICATIONS=3Dy
# CONFIG_SECURITY_DMESG_RESTRICT is not set
CONFIG_PROC_MEM_ALWAYS_FORCE=3Dy
# CONFIG_PROC_MEM_FORCE_PTRACE is not set
# CONFIG_PROC_MEM_NO_FORCE is not set
CONFIG_SECURITY=3Dy
CONFIG_SECURITYFS=3Dy
CONFIG_SECURITY_NETWORK=3Dy
CONFIG_SECURITY_INFINIBAND=3Dy
CONFIG_SECURITY_NETWORK_XFRM=3Dy
CONFIG_SECURITY_PATH=3Dy
# CONFIG_INTEL_TXT is not set
CONFIG_LSM_MMAP_MIN_ADDR=3D65536
CONFIG_HARDENED_USERCOPY=3Dy
CONFIG_FORTIFY_SOURCE=3Dy
# CONFIG_STATIC_USERMODEHELPER is not set
CONFIG_SECURITY_SELINUX=3Dy
CONFIG_SECURITY_SELINUX_BOOTPARAM=3Dy
CONFIG_SECURITY_SELINUX_DEVELOP=3Dy
CONFIG_SECURITY_SELINUX_AVC_STATS=3Dy
CONFIG_SECURITY_SELINUX_SIDTAB_HASH_BITS=3D9
CONFIG_SECURITY_SELINUX_SID2STR_CACHE_SIZE=3D256
# CONFIG_SECURITY_SELINUX_DEBUG is not set
# CONFIG_SECURITY_SMACK is not set
CONFIG_SECURITY_TOMOYO=3Dy
CONFIG_SECURITY_TOMOYO_MAX_ACCEPT_ENTRY=3D64
CONFIG_SECURITY_TOMOYO_MAX_AUDIT_LOG=3D32
CONFIG_SECURITY_TOMOYO_OMIT_USERSPACE_LOADER=3Dy
CONFIG_SECURITY_TOMOYO_INSECURE_BUILTIN_SETTING=3Dy
# CONFIG_SECURITY_APPARMOR is not set
# CONFIG_SECURITY_LOADPIN is not set
CONFIG_SECURITY_YAMA=3Dy
CONFIG_SECURITY_SAFESETID=3Dy
CONFIG_SECURITY_LOCKDOWN_LSM=3Dy
CONFIG_SECURITY_LOCKDOWN_LSM_EARLY=3Dy
CONFIG_LOCK_DOWN_KERNEL_FORCE_NONE=3Dy
# CONFIG_LOCK_DOWN_KERNEL_FORCE_INTEGRITY is not set
# CONFIG_LOCK_DOWN_KERNEL_FORCE_CONFIDENTIALITY is not set
CONFIG_SECURITY_LANDLOCK=3Dy
# CONFIG_SECURITY_IPE is not set
CONFIG_INTEGRITY=3Dy
CONFIG_INTEGRITY_SIGNATURE=3Dy
CONFIG_INTEGRITY_ASYMMETRIC_KEYS=3Dy
CONFIG_INTEGRITY_TRUSTED_KEYRING=3Dy
CONFIG_INTEGRITY_AUDIT=3Dy
CONFIG_IMA=3Dy
CONFIG_IMA_MEASURE_PCR_IDX=3D10
CONFIG_IMA_LSM_RULES=3Dy
CONFIG_IMA_NG_TEMPLATE=3Dy
# CONFIG_IMA_SIG_TEMPLATE is not set
CONFIG_IMA_DEFAULT_TEMPLATE=3D"ima-ng"
# CONFIG_IMA_DEFAULT_HASH_SHA1 is not set
CONFIG_IMA_DEFAULT_HASH_SHA256=3Dy
# CONFIG_IMA_DEFAULT_HASH_SHA512 is not set
# CONFIG_IMA_DEFAULT_HASH_WP512 is not set
CONFIG_IMA_DEFAULT_HASH=3D"sha256"
CONFIG_IMA_WRITE_POLICY=3Dy
CONFIG_IMA_READ_POLICY=3Dy
CONFIG_IMA_APPRAISE=3Dy
# CONFIG_IMA_ARCH_POLICY is not set
# CONFIG_IMA_APPRAISE_BUILD_POLICY is not set
# CONFIG_IMA_APPRAISE_BOOTPARAM is not set
CONFIG_IMA_APPRAISE_MODSIG=3Dy
# CONFIG_IMA_KEYRINGS_PERMIT_SIGNED_BY_BUILTIN_OR_SECONDARY is not set
# CONFIG_IMA_BLACKLIST_KEYRING is not set
# CONFIG_IMA_LOAD_X509 is not set
CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS=3Dy
CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS=3Dy
# CONFIG_IMA_DISABLE_HTABLE is not set
CONFIG_EVM=3Dy
CONFIG_EVM_ATTR_FSUUID=3Dy
CONFIG_EVM_ADD_XATTRS=3Dy
# CONFIG_EVM_LOAD_X509 is not set
CONFIG_DEFAULT_SECURITY_SELINUX=3Dy
# CONFIG_DEFAULT_SECURITY_TOMOYO is not set
# CONFIG_DEFAULT_SECURITY_DAC is not set
CONFIG_LSM=3D"landlock,lockdown,yama,safesetid,integrity,tomoyo,selinux,bpf"

#
# Kernel hardening options
#

#
# Memory initialization
#
CONFIG_INIT_STACK_NONE=3Dy
CONFIG_INIT_ON_ALLOC_DEFAULT_ON=3Dy
# CONFIG_INIT_ON_FREE_DEFAULT_ON is not set
CONFIG_CC_HAS_ZERO_CALL_USED_REGS=3Dy
# CONFIG_ZERO_CALL_USED_REGS is not set
# end of Memory initialization

#
# Hardening of kernel data structures
#
CONFIG_LIST_HARDENED=3Dy
CONFIG_BUG_ON_DATA_CORRUPTION=3Dy
# end of Hardening of kernel data structures

CONFIG_RANDSTRUCT_NONE=3Dy
# end of Kernel hardening options
# end of Security options

CONFIG_XOR_BLOCKS=3Dy
CONFIG_ASYNC_CORE=3Dy
CONFIG_ASYNC_MEMCPY=3Dy
CONFIG_ASYNC_XOR=3Dy
CONFIG_ASYNC_PQ=3Dy
CONFIG_ASYNC_RAID6_RECOV=3Dy
CONFIG_CRYPTO=3Dy

#
# Crypto core or helper
#
CONFIG_CRYPTO_ALGAPI=3Dy
CONFIG_CRYPTO_ALGAPI2=3Dy
CONFIG_CRYPTO_AEAD=3Dy
CONFIG_CRYPTO_AEAD2=3Dy
CONFIG_CRYPTO_SIG=3Dy
CONFIG_CRYPTO_SIG2=3Dy
CONFIG_CRYPTO_SKCIPHER=3Dy
CONFIG_CRYPTO_SKCIPHER2=3Dy
CONFIG_CRYPTO_HASH=3Dy
CONFIG_CRYPTO_HASH2=3Dy
CONFIG_CRYPTO_RNG=3Dy
CONFIG_CRYPTO_RNG2=3Dy
CONFIG_CRYPTO_RNG_DEFAULT=3Dy
CONFIG_CRYPTO_AKCIPHER2=3Dy
CONFIG_CRYPTO_AKCIPHER=3Dy
CONFIG_CRYPTO_KPP2=3Dy
CONFIG_CRYPTO_KPP=3Dy
CONFIG_CRYPTO_ACOMP2=3Dy
CONFIG_CRYPTO_MANAGER=3Dy
CONFIG_CRYPTO_MANAGER2=3Dy
CONFIG_CRYPTO_USER=3Dy
CONFIG_CRYPTO_MANAGER_DISABLE_TESTS=3Dy
CONFIG_CRYPTO_NULL=3Dy
CONFIG_CRYPTO_NULL2=3Dy
CONFIG_CRYPTO_PCRYPT=3Dy
CONFIG_CRYPTO_CRYPTD=3Dy
CONFIG_CRYPTO_AUTHENC=3Dy
# CONFIG_CRYPTO_TEST is not set
CONFIG_CRYPTO_SIMD=3Dy
CONFIG_CRYPTO_ENGINE=3Dy
# end of Crypto core or helper

#
# Public-key cryptography
#
CONFIG_CRYPTO_RSA=3Dy
CONFIG_CRYPTO_DH=3Dy
# CONFIG_CRYPTO_DH_RFC7919_GROUPS is not set
CONFIG_CRYPTO_ECC=3Dy
CONFIG_CRYPTO_ECDH=3Dy
CONFIG_CRYPTO_ECDSA=3Dy
CONFIG_CRYPTO_ECRDSA=3Dy
CONFIG_CRYPTO_CURVE25519=3Dy
# end of Public-key cryptography

#
# Block ciphers
#
CONFIG_CRYPTO_AES=3Dy
CONFIG_CRYPTO_AES_TI=3Dy
CONFIG_CRYPTO_ANUBIS=3Dy
CONFIG_CRYPTO_ARIA=3Dy
CONFIG_CRYPTO_BLOWFISH=3Dy
CONFIG_CRYPTO_BLOWFISH_COMMON=3Dy
CONFIG_CRYPTO_CAMELLIA=3Dy
CONFIG_CRYPTO_CAST_COMMON=3Dy
CONFIG_CRYPTO_CAST5=3Dy
CONFIG_CRYPTO_CAST6=3Dy
CONFIG_CRYPTO_DES=3Dy
CONFIG_CRYPTO_FCRYPT=3Dy
CONFIG_CRYPTO_KHAZAD=3Dy
CONFIG_CRYPTO_SEED=3Dy
CONFIG_CRYPTO_SERPENT=3Dy
CONFIG_CRYPTO_SM4=3Dy
CONFIG_CRYPTO_SM4_GENERIC=3Dy
CONFIG_CRYPTO_TEA=3Dy
CONFIG_CRYPTO_TWOFISH=3Dy
CONFIG_CRYPTO_TWOFISH_COMMON=3Dy
# end of Block ciphers

#
# Length-preserving ciphers and modes
#
CONFIG_CRYPTO_ADIANTUM=3Dy
CONFIG_CRYPTO_ARC4=3Dy
CONFIG_CRYPTO_CHACHA20=3Dy
CONFIG_CRYPTO_CBC=3Dy
CONFIG_CRYPTO_CTR=3Dy
CONFIG_CRYPTO_CTS=3Dy
CONFIG_CRYPTO_ECB=3Dy
CONFIG_CRYPTO_HCTR2=3Dy
CONFIG_CRYPTO_KEYWRAP=3Dy
CONFIG_CRYPTO_LRW=3Dy
CONFIG_CRYPTO_PCBC=3Dy
CONFIG_CRYPTO_XCTR=3Dy
CONFIG_CRYPTO_XTS=3Dy
CONFIG_CRYPTO_NHPOLY1305=3Dy
# end of Length-preserving ciphers and modes

#
# AEAD (authenticated encryption with associated data) ciphers
#
CONFIG_CRYPTO_AEGIS128=3Dy
CONFIG_CRYPTO_CHACHA20POLY1305=3Dy
CONFIG_CRYPTO_CCM=3Dy
CONFIG_CRYPTO_GCM=3Dy
CONFIG_CRYPTO_GENIV=3Dy
CONFIG_CRYPTO_SEQIV=3Dy
CONFIG_CRYPTO_ECHAINIV=3Dy
CONFIG_CRYPTO_ESSIV=3Dy
# end of AEAD (authenticated encryption with associated data) ciphers

#
# Hashes, digests, and MACs
#
CONFIG_CRYPTO_BLAKE2B=3Dy
CONFIG_CRYPTO_CMAC=3Dy
CONFIG_CRYPTO_GHASH=3Dy
CONFIG_CRYPTO_HMAC=3Dy
# CONFIG_CRYPTO_MD4 is not set
CONFIG_CRYPTO_MD5=3Dy
CONFIG_CRYPTO_MICHAEL_MIC=3Dy
CONFIG_CRYPTO_POLYVAL=3Dy
CONFIG_CRYPTO_POLY1305=3Dy
CONFIG_CRYPTO_RMD160=3Dy
CONFIG_CRYPTO_SHA1=3Dy
CONFIG_CRYPTO_SHA256=3Dy
CONFIG_CRYPTO_SHA512=3Dy
CONFIG_CRYPTO_SHA3=3Dy
CONFIG_CRYPTO_SM3=3Dy
# CONFIG_CRYPTO_SM3_GENERIC is not set
CONFIG_CRYPTO_STREEBOG=3Dy
CONFIG_CRYPTO_VMAC=3Dy
CONFIG_CRYPTO_WP512=3Dy
CONFIG_CRYPTO_XCBC=3Dy
CONFIG_CRYPTO_XXHASH=3Dy
# end of Hashes, digests, and MACs

#
# CRCs (cyclic redundancy checks)
#
CONFIG_CRYPTO_CRC32C=3Dy
CONFIG_CRYPTO_CRC32=3Dy
CONFIG_CRYPTO_CRCT10DIF=3Dy
CONFIG_CRYPTO_CRC64_ROCKSOFT=3Dy
# end of CRCs (cyclic redundancy checks)

#
# Compression
#
CONFIG_CRYPTO_DEFLATE=3Dy
CONFIG_CRYPTO_LZO=3Dy
CONFIG_CRYPTO_842=3Dy
CONFIG_CRYPTO_LZ4=3Dy
CONFIG_CRYPTO_LZ4HC=3Dy
CONFIG_CRYPTO_ZSTD=3Dy
# end of Compression

#
# Random number generation
#
CONFIG_CRYPTO_ANSI_CPRNG=3Dy
CONFIG_CRYPTO_DRBG_MENU=3Dy
CONFIG_CRYPTO_DRBG_HMAC=3Dy
CONFIG_CRYPTO_DRBG_HASH=3Dy
CONFIG_CRYPTO_DRBG_CTR=3Dy
CONFIG_CRYPTO_DRBG=3Dy
CONFIG_CRYPTO_JITTERENTROPY=3Dy
CONFIG_CRYPTO_JITTERENTROPY_MEMORY_BLOCKS=3D64
CONFIG_CRYPTO_JITTERENTROPY_MEMORY_BLOCKSIZE=3D32
CONFIG_CRYPTO_JITTERENTROPY_OSR=3D1
CONFIG_CRYPTO_KDF800108_CTR=3Dy
# end of Random number generation

#
# Userspace interface
#
CONFIG_CRYPTO_USER_API=3Dy
CONFIG_CRYPTO_USER_API_HASH=3Dy
CONFIG_CRYPTO_USER_API_SKCIPHER=3Dy
CONFIG_CRYPTO_USER_API_RNG=3Dy
# CONFIG_CRYPTO_USER_API_RNG_CAVP is not set
CONFIG_CRYPTO_USER_API_AEAD=3Dy
CONFIG_CRYPTO_USER_API_ENABLE_OBSOLETE=3Dy
# end of Userspace interface

CONFIG_CRYPTO_HASH_INFO=3Dy

#
# Accelerated Cryptographic Algorithms for CPU (x86)
#
CONFIG_CRYPTO_CURVE25519_X86=3Dy
CONFIG_CRYPTO_AES_NI_INTEL=3Dy
CONFIG_CRYPTO_BLOWFISH_X86_64=3Dy
CONFIG_CRYPTO_CAMELLIA_X86_64=3Dy
CONFIG_CRYPTO_CAMELLIA_AESNI_AVX_X86_64=3Dy
CONFIG_CRYPTO_CAMELLIA_AESNI_AVX2_X86_64=3Dy
CONFIG_CRYPTO_CAST5_AVX_X86_64=3Dy
CONFIG_CRYPTO_CAST6_AVX_X86_64=3Dy
CONFIG_CRYPTO_DES3_EDE_X86_64=3Dy
CONFIG_CRYPTO_SERPENT_SSE2_X86_64=3Dy
CONFIG_CRYPTO_SERPENT_AVX_X86_64=3Dy
CONFIG_CRYPTO_SERPENT_AVX2_X86_64=3Dy
CONFIG_CRYPTO_SM4_AESNI_AVX_X86_64=3Dy
CONFIG_CRYPTO_SM4_AESNI_AVX2_X86_64=3Dy
CONFIG_CRYPTO_TWOFISH_X86_64=3Dy
CONFIG_CRYPTO_TWOFISH_X86_64_3WAY=3Dy
CONFIG_CRYPTO_TWOFISH_AVX_X86_64=3Dy
CONFIG_CRYPTO_ARIA_AESNI_AVX_X86_64=3Dy
# CONFIG_CRYPTO_ARIA_AESNI_AVX2_X86_64 is not set
# CONFIG_CRYPTO_ARIA_GFNI_AVX512_X86_64 is not set
CONFIG_CRYPTO_CHACHA20_X86_64=3Dy
CONFIG_CRYPTO_AEGIS128_AESNI_SSE2=3Dy
CONFIG_CRYPTO_NHPOLY1305_SSE2=3Dy
CONFIG_CRYPTO_NHPOLY1305_AVX2=3Dy
CONFIG_CRYPTO_BLAKE2S_X86=3Dy
CONFIG_CRYPTO_POLYVAL_CLMUL_NI=3Dy
CONFIG_CRYPTO_POLY1305_X86_64=3Dy
CONFIG_CRYPTO_SHA1_SSSE3=3Dy
CONFIG_CRYPTO_SHA256_SSSE3=3Dy
CONFIG_CRYPTO_SHA512_SSSE3=3Dy
CONFIG_CRYPTO_SM3_AVX_X86_64=3Dy
CONFIG_CRYPTO_GHASH_CLMUL_NI_INTEL=3Dy
CONFIG_CRYPTO_CRC32C_INTEL=3Dy
CONFIG_CRYPTO_CRC32_PCLMUL=3Dy
CONFIG_CRYPTO_CRCT10DIF_PCLMUL=3Dy
# end of Accelerated Cryptographic Algorithms for CPU (x86)

CONFIG_CRYPTO_HW=3Dy
CONFIG_CRYPTO_DEV_PADLOCK=3Dy
CONFIG_CRYPTO_DEV_PADLOCK_AES=3Dy
CONFIG_CRYPTO_DEV_PADLOCK_SHA=3Dy
# CONFIG_CRYPTO_DEV_ATMEL_ECC is not set
# CONFIG_CRYPTO_DEV_ATMEL_SHA204A is not set
CONFIG_CRYPTO_DEV_CCP=3Dy
CONFIG_CRYPTO_DEV_CCP_DD=3Dy
# CONFIG_CRYPTO_DEV_SP_CCP is not set
# CONFIG_CRYPTO_DEV_NITROX_CNN55XX is not set
CONFIG_CRYPTO_DEV_QAT=3Dy
CONFIG_CRYPTO_DEV_QAT_DH895xCC=3Dy
CONFIG_CRYPTO_DEV_QAT_C3XXX=3Dy
CONFIG_CRYPTO_DEV_QAT_C62X=3Dy
# CONFIG_CRYPTO_DEV_QAT_4XXX is not set
# CONFIG_CRYPTO_DEV_QAT_420XX is not set
CONFIG_CRYPTO_DEV_QAT_DH895xCCVF=3Dy
CONFIG_CRYPTO_DEV_QAT_C3XXXVF=3Dy
CONFIG_CRYPTO_DEV_QAT_C62XVF=3Dy
# CONFIG_CRYPTO_DEV_QAT_ERROR_INJECTION is not set
CONFIG_CRYPTO_DEV_VIRTIO=3Dy
# CONFIG_CRYPTO_DEV_SAFEXCEL is not set
# CONFIG_CRYPTO_DEV_CCREE is not set
# CONFIG_CRYPTO_DEV_AMLOGIC_GXL is not set
CONFIG_ASYMMETRIC_KEY_TYPE=3Dy
CONFIG_ASYMMETRIC_PUBLIC_KEY_SUBTYPE=3Dy
CONFIG_X509_CERTIFICATE_PARSER=3Dy
CONFIG_PKCS8_PRIVATE_KEY_PARSER=3Dy
CONFIG_PKCS7_MESSAGE_PARSER=3Dy
CONFIG_PKCS7_TEST_KEY=3Dy
CONFIG_SIGNED_PE_FILE_VERIFICATION=3Dy
# CONFIG_FIPS_SIGNATURE_SELFTEST is not set

#
# Certificates for signature checking
#
CONFIG_MODULE_SIG_KEY=3D"certs/signing_key.pem"
# CONFIG_MODULE_SIG_KEY_TYPE_RSA is not set
CONFIG_MODULE_SIG_KEY_TYPE_ECDSA=3Dy
CONFIG_SYSTEM_TRUSTED_KEYRING=3Dy
CONFIG_SYSTEM_TRUSTED_KEYS=3D""
# CONFIG_SYSTEM_EXTRA_CERTIFICATE is not set
CONFIG_SECONDARY_TRUSTED_KEYRING=3Dy
# CONFIG_SECONDARY_TRUSTED_KEYRING_SIGNED_BY_BUILTIN is not set
# CONFIG_SYSTEM_BLACKLIST_KEYRING is not set
# end of Certificates for signature checking

CONFIG_BINARY_PRINTF=3Dy

#
# Library routines
#
CONFIG_RAID6_PQ=3Dy
# CONFIG_RAID6_PQ_BENCHMARK is not set
CONFIG_LINEAR_RANGES=3Dy
# CONFIG_PACKING is not set
CONFIG_BITREVERSE=3Dy
CONFIG_GENERIC_STRNCPY_FROM_USER=3Dy
CONFIG_GENERIC_STRNLEN_USER=3Dy
CONFIG_GENERIC_NET_UTILS=3Dy
# CONFIG_CORDIC is not set
# CONFIG_PRIME_NUMBERS is not set
CONFIG_RATIONAL=3Dy
CONFIG_GENERIC_IOMAP=3Dy
CONFIG_ARCH_USE_CMPXCHG_LOCKREF=3Dy
CONFIG_ARCH_HAS_FAST_MULTIPLIER=3Dy
CONFIG_ARCH_USE_SYM_ANNOTATIONS=3Dy

#
# Crypto library routines
#
CONFIG_CRYPTO_LIB_UTILS=3Dy
CONFIG_CRYPTO_LIB_AES=3Dy
CONFIG_CRYPTO_LIB_ARC4=3Dy
CONFIG_CRYPTO_LIB_GF128MUL=3Dy
CONFIG_CRYPTO_ARCH_HAVE_LIB_BLAKE2S=3Dy
CONFIG_CRYPTO_LIB_BLAKE2S_GENERIC=3Dy
CONFIG_CRYPTO_ARCH_HAVE_LIB_CHACHA=3Dy
CONFIG_CRYPTO_LIB_CHACHA_GENERIC=3Dy
CONFIG_CRYPTO_LIB_CHACHA=3Dy
CONFIG_CRYPTO_ARCH_HAVE_LIB_CURVE25519=3Dy
CONFIG_CRYPTO_LIB_CURVE25519_GENERIC=3Dy
CONFIG_CRYPTO_LIB_CURVE25519=3Dy
CONFIG_CRYPTO_LIB_DES=3Dy
CONFIG_CRYPTO_LIB_POLY1305_RSIZE=3D11
CONFIG_CRYPTO_ARCH_HAVE_LIB_POLY1305=3Dy
CONFIG_CRYPTO_LIB_POLY1305_GENERIC=3Dy
CONFIG_CRYPTO_LIB_POLY1305=3Dy
CONFIG_CRYPTO_LIB_CHACHA20POLY1305=3Dy
CONFIG_CRYPTO_LIB_SHA1=3Dy
CONFIG_CRYPTO_LIB_SHA256=3Dy
# end of Crypto library routines

CONFIG_CRC_CCITT=3Dy
CONFIG_CRC16=3Dy
CONFIG_CRC_T10DIF=3Dy
CONFIG_CRC64_ROCKSOFT=3Dy
CONFIG_CRC_ITU_T=3Dy
CONFIG_CRC32=3Dy
# CONFIG_CRC32_SELFTEST is not set
CONFIG_CRC32_SLICEBY8=3Dy
# CONFIG_CRC32_SLICEBY4 is not set
# CONFIG_CRC32_SARWATE is not set
# CONFIG_CRC32_BIT is not set
CONFIG_CRC64=3Dy
CONFIG_CRC4=3Dy
CONFIG_CRC7=3Dy
CONFIG_LIBCRC32C=3Dy
CONFIG_CRC8=3Dy
CONFIG_XXHASH=3Dy
# CONFIG_RANDOM32_SELFTEST is not set
CONFIG_842_COMPRESS=3Dy
CONFIG_842_DECOMPRESS=3Dy
CONFIG_ZLIB_INFLATE=3Dy
CONFIG_ZLIB_DEFLATE=3Dy
CONFIG_LZO_COMPRESS=3Dy
CONFIG_LZO_DECOMPRESS=3Dy
CONFIG_LZ4_COMPRESS=3Dy
CONFIG_LZ4HC_COMPRESS=3Dy
CONFIG_LZ4_DECOMPRESS=3Dy
CONFIG_ZSTD_COMMON=3Dy
CONFIG_ZSTD_COMPRESS=3Dy
CONFIG_ZSTD_DECOMPRESS=3Dy
CONFIG_XZ_DEC=3Dy
CONFIG_XZ_DEC_X86=3Dy
CONFIG_XZ_DEC_POWERPC=3Dy
CONFIG_XZ_DEC_ARM=3Dy
CONFIG_XZ_DEC_ARMTHUMB=3Dy
CONFIG_XZ_DEC_ARM64=3Dy
CONFIG_XZ_DEC_SPARC=3Dy
CONFIG_XZ_DEC_RISCV=3Dy
# CONFIG_XZ_DEC_MICROLZMA is not set
CONFIG_XZ_DEC_BCJ=3Dy
# CONFIG_XZ_DEC_TEST is not set
CONFIG_DECOMPRESS_GZIP=3Dy
CONFIG_DECOMPRESS_BZIP2=3Dy
CONFIG_DECOMPRESS_LZMA=3Dy
CONFIG_DECOMPRESS_XZ=3Dy
CONFIG_DECOMPRESS_LZO=3Dy
CONFIG_DECOMPRESS_LZ4=3Dy
CONFIG_DECOMPRESS_ZSTD=3Dy
CONFIG_GENERIC_ALLOCATOR=3Dy
CONFIG_REED_SOLOMON=3Dy
CONFIG_REED_SOLOMON_DEC8=3Dy
CONFIG_TEXTSEARCH=3Dy
CONFIG_TEXTSEARCH_KMP=3Dy
CONFIG_TEXTSEARCH_BM=3Dy
CONFIG_TEXTSEARCH_FSM=3Dy
CONFIG_INTERVAL_TREE=3Dy
CONFIG_INTERVAL_TREE_SPAN_ITER=3Dy
CONFIG_XARRAY_MULTI=3Dy
CONFIG_ASSOCIATIVE_ARRAY=3Dy
CONFIG_CLOSURES=3Dy
CONFIG_HAS_IOMEM=3Dy
CONFIG_HAS_IOPORT=3Dy
CONFIG_HAS_IOPORT_MAP=3Dy
CONFIG_HAS_DMA=3Dy
CONFIG_DMA_OPS_HELPERS=3Dy
CONFIG_NEED_SG_DMA_FLAGS=3Dy
CONFIG_NEED_SG_DMA_LENGTH=3Dy
CONFIG_NEED_DMA_MAP_STATE=3Dy
CONFIG_ARCH_DMA_ADDR_T_64BIT=3Dy
CONFIG_DMA_DECLARE_COHERENT=3Dy
CONFIG_SWIOTLB=3Dy
# CONFIG_SWIOTLB_DYNAMIC is not set
CONFIG_DMA_NEED_SYNC=3Dy
# CONFIG_DMA_RESTRICTED_POOL is not set
CONFIG_DMA_CMA=3Dy
# CONFIG_DMA_NUMA_CMA is not set

#
# Default contiguous memory area size:
#
CONFIG_CMA_SIZE_MBYTES=3D0
CONFIG_CMA_SIZE_PERCENTAGE=3D0
# CONFIG_CMA_SIZE_SEL_MBYTES is not set
# CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
# CONFIG_CMA_SIZE_SEL_MIN is not set
CONFIG_CMA_SIZE_SEL_MAX=3Dy
CONFIG_CMA_ALIGNMENT=3D8
# CONFIG_DMA_API_DEBUG is not set
# CONFIG_DMA_MAP_BENCHMARK is not set
CONFIG_SGL_ALLOC=3Dy
CONFIG_CHECK_SIGNATURE=3Dy
# CONFIG_CPUMASK_OFFSTACK is not set
CONFIG_CPU_RMAP=3Dy
CONFIG_DQL=3Dy
CONFIG_GLOB=3Dy
# CONFIG_GLOB_SELFTEST is not set
CONFIG_NLATTR=3Dy
CONFIG_CLZ_TAB=3Dy
CONFIG_IRQ_POLL=3Dy
CONFIG_MPILIB=3Dy
CONFIG_SIGNATURE=3Dy
CONFIG_DIMLIB=3Dy
CONFIG_LIBFDT=3Dy
CONFIG_OID_REGISTRY=3Dy
CONFIG_HAVE_GENERIC_VDSO=3Dy
CONFIG_GENERIC_GETTIMEOFDAY=3Dy
CONFIG_GENERIC_VDSO_TIME_NS=3Dy
CONFIG_GENERIC_VDSO_OVERFLOW_PROTECT=3Dy
CONFIG_VDSO_GETRANDOM=3Dy
CONFIG_FONT_SUPPORT=3Dy
# CONFIG_FONTS is not set
CONFIG_FONT_8x8=3Dy
CONFIG_FONT_8x16=3Dy
CONFIG_SG_POOL=3Dy
CONFIG_ARCH_HAS_PMEM_API=3Dy
CONFIG_MEMREGION=3Dy
CONFIG_ARCH_HAS_CPU_CACHE_INVALIDATE_MEMREGION=3Dy
CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE=3Dy
CONFIG_ARCH_HAS_COPY_MC=3Dy
CONFIG_ARCH_STACKWALK=3Dy
CONFIG_STACKDEPOT=3Dy
CONFIG_STACKDEPOT_ALWAYS_INIT=3Dy
CONFIG_STACKDEPOT_MAX_FRAMES=3D64
CONFIG_REF_TRACKER=3Dy
CONFIG_SBITMAP=3Dy
# CONFIG_LWQ_TEST is not set
# end of Library routines

CONFIG_FIRMWARE_TABLE=3Dy
CONFIG_UNION_FIND=3Dy
CONFIG_MIN_HEAP=3Dy

#
# Kernel hacking
#

#
# printk and dmesg options
#
CONFIG_PRINTK_TIME=3Dy
CONFIG_PRINTK_CALLER=3Dy
# CONFIG_STACKTRACE_BUILD_ID is not set
CONFIG_CONSOLE_LOGLEVEL_DEFAULT=3D7
CONFIG_CONSOLE_LOGLEVEL_QUIET=3D4
CONFIG_MESSAGE_LOGLEVEL_DEFAULT=3D4
# CONFIG_BOOT_PRINTK_DELAY is not set
CONFIG_DYNAMIC_DEBUG=3Dy
CONFIG_DYNAMIC_DEBUG_CORE=3Dy
CONFIG_SYMBOLIC_ERRNAME=3Dy
CONFIG_DEBUG_BUGVERBOSE=3Dy
# end of printk and dmesg options

CONFIG_DEBUG_KERNEL=3Dy
CONFIG_DEBUG_MISC=3Dy

#
# Compile-time checks and compiler options
#
CONFIG_DEBUG_INFO=3Dy
CONFIG_AS_HAS_NON_CONST_ULEB128=3Dy
# CONFIG_DEBUG_INFO_NONE is not set
# CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT is not set
CONFIG_DEBUG_INFO_DWARF4=3Dy
# CONFIG_DEBUG_INFO_DWARF5 is not set
# CONFIG_DEBUG_INFO_REDUCED is not set
CONFIG_DEBUG_INFO_COMPRESSED_NONE=3Dy
# CONFIG_DEBUG_INFO_COMPRESSED_ZLIB is not set
# CONFIG_DEBUG_INFO_SPLIT is not set
# CONFIG_DEBUG_INFO_BTF is not set
CONFIG_PAHOLE_HAS_SPLIT_BTF=3Dy
CONFIG_PAHOLE_HAS_LANG_EXCLUDE=3Dy
# CONFIG_GDB_SCRIPTS is not set
CONFIG_FRAME_WARN=3D2048
# CONFIG_STRIP_ASM_SYMS is not set
# CONFIG_READABLE_ASM is not set
# CONFIG_HEADERS_INSTALL is not set
# CONFIG_DEBUG_SECTION_MISMATCH is not set
CONFIG_SECTION_MISMATCH_WARN_ONLY=3Dy
# CONFIG_DEBUG_FORCE_FUNCTION_ALIGN_64B is not set
CONFIG_OBJTOOL=3Dy
CONFIG_NOINSTR_VALIDATION=3Dy
# CONFIG_VMLINUX_MAP is not set
# CONFIG_DEBUG_FORCE_WEAK_PER_CPU is not set
# end of Compile-time checks and compiler options

#
# Generic Kernel Debugging Instruments
#
# CONFIG_MAGIC_SYSRQ is not set
CONFIG_DEBUG_FS=3Dy
CONFIG_DEBUG_FS_ALLOW_ALL=3Dy
# CONFIG_DEBUG_FS_DISALLOW_MOUNT is not set
# CONFIG_DEBUG_FS_ALLOW_NONE is not set
CONFIG_HAVE_ARCH_KGDB=3Dy
# CONFIG_KGDB is not set
CONFIG_ARCH_HAS_UBSAN=3Dy
CONFIG_UBSAN=3Dy
# CONFIG_UBSAN_TRAP is not set
CONFIG_CC_HAS_UBSAN_BOUNDS_STRICT=3Dy
CONFIG_UBSAN_BOUNDS=3Dy
CONFIG_UBSAN_BOUNDS_STRICT=3Dy
CONFIG_UBSAN_SHIFT=3Dy
# CONFIG_UBSAN_DIV_ZERO is not set
# CONFIG_UBSAN_SIGNED_WRAP is not set
# CONFIG_UBSAN_BOOL is not set
# CONFIG_UBSAN_ENUM is not set
# CONFIG_UBSAN_ALIGNMENT is not set
# CONFIG_TEST_UBSAN is not set
CONFIG_HAVE_ARCH_KCSAN=3Dy
CONFIG_HAVE_KCSAN_COMPILER=3Dy
# end of Generic Kernel Debugging Instruments

#
# Networking Debugging
#
CONFIG_NET_DEV_REFCNT_TRACKER=3Dy
CONFIG_NET_NS_REFCNT_TRACKER=3Dy
CONFIG_DEBUG_NET=3Dy
# CONFIG_DEBUG_NET_SMALL_RTNL is not set
# end of Networking Debugging

#
# Memory Debugging
#
CONFIG_PAGE_EXTENSION=3Dy
# CONFIG_DEBUG_PAGEALLOC is not set
CONFIG_SLUB_DEBUG=3Dy
# CONFIG_SLUB_DEBUG_ON is not set
CONFIG_SLUB_RCU_DEBUG=3Dy
CONFIG_PAGE_OWNER=3Dy
CONFIG_PAGE_TABLE_CHECK=3Dy
CONFIG_PAGE_TABLE_CHECK_ENFORCED=3Dy
CONFIG_PAGE_POISONING=3Dy
# CONFIG_DEBUG_PAGE_REF is not set
# CONFIG_DEBUG_RODATA_TEST is not set
CONFIG_ARCH_HAS_DEBUG_WX=3Dy
CONFIG_DEBUG_WX=3Dy
CONFIG_GENERIC_PTDUMP=3Dy
CONFIG_PTDUMP_CORE=3Dy
CONFIG_PTDUMP_DEBUGFS=3Dy
CONFIG_HAVE_DEBUG_KMEMLEAK=3Dy
# CONFIG_DEBUG_KMEMLEAK is not set
# CONFIG_PER_VMA_LOCK_STATS is not set
CONFIG_DEBUG_OBJECTS=3Dy
# CONFIG_DEBUG_OBJECTS_SELFTEST is not set
CONFIG_DEBUG_OBJECTS_FREE=3Dy
CONFIG_DEBUG_OBJECTS_TIMERS=3Dy
CONFIG_DEBUG_OBJECTS_WORK=3Dy
CONFIG_DEBUG_OBJECTS_RCU_HEAD=3Dy
CONFIG_DEBUG_OBJECTS_PERCPU_COUNTER=3Dy
CONFIG_DEBUG_OBJECTS_ENABLE_DEFAULT=3D1
# CONFIG_SHRINKER_DEBUG is not set
CONFIG_DEBUG_STACK_USAGE=3Dy
CONFIG_SCHED_STACK_END_CHECK=3Dy
CONFIG_ARCH_HAS_DEBUG_VM_PGTABLE=3Dy
CONFIG_DEBUG_VM_IRQSOFF=3Dy
CONFIG_DEBUG_VM=3Dy
CONFIG_DEBUG_VM_MAPLE_TREE=3Dy
CONFIG_DEBUG_VM_RB=3Dy
CONFIG_DEBUG_VM_PGFLAGS=3Dy
CONFIG_DEBUG_VM_PGTABLE=3Dy
CONFIG_ARCH_HAS_DEBUG_VIRTUAL=3Dy
CONFIG_DEBUG_VIRTUAL=3Dy
CONFIG_DEBUG_MEMORY_INIT=3Dy
CONFIG_DEBUG_PER_CPU_MAPS=3Dy
CONFIG_DEBUG_KMAP_LOCAL=3Dy
CONFIG_ARCH_SUPPORTS_KMAP_LOCAL_FORCE_MAP=3Dy
CONFIG_DEBUG_KMAP_LOCAL_FORCE_MAP=3Dy
# CONFIG_MEM_ALLOC_PROFILING is not set
CONFIG_HAVE_ARCH_KASAN=3Dy
CONFIG_HAVE_ARCH_KASAN_VMALLOC=3Dy
CONFIG_CC_HAS_KASAN_GENERIC=3Dy
CONFIG_CC_HAS_WORKING_NOSANITIZE_ADDRESS=3Dy
CONFIG_KASAN=3Dy
CONFIG_KASAN_GENERIC=3Dy
# CONFIG_KASAN_OUTLINE is not set
CONFIG_KASAN_INLINE=3Dy
CONFIG_KASAN_STACK=3Dy
CONFIG_KASAN_VMALLOC=3Dy
# CONFIG_KASAN_EXTRA_INFO is not set
CONFIG_HAVE_ARCH_KFENCE=3Dy
CONFIG_KFENCE=3Dy
CONFIG_KFENCE_SAMPLE_INTERVAL=3D100
CONFIG_KFENCE_NUM_OBJECTS=3D255
# CONFIG_KFENCE_DEFERRABLE is not set
CONFIG_KFENCE_STATIC_KEYS=3Dy
CONFIG_KFENCE_STRESS_TEST_FAULTS=3D0
CONFIG_HAVE_ARCH_KMSAN=3Dy
# end of Memory Debugging

# CONFIG_DEBUG_SHIRQ is not set

#
# Debug Oops, Lockups and Hangs
#
CONFIG_PANIC_ON_OOPS=3Dy
CONFIG_PANIC_ON_OOPS_VALUE=3D1
CONFIG_PANIC_TIMEOUT=3D86400
CONFIG_LOCKUP_DETECTOR=3Dy
CONFIG_SOFTLOCKUP_DETECTOR=3Dy
# CONFIG_SOFTLOCKUP_DETECTOR_INTR_STORM is not set
CONFIG_BOOTPARAM_SOFTLOCKUP_PANIC=3Dy
CONFIG_HAVE_HARDLOCKUP_DETECTOR_BUDDY=3Dy
CONFIG_HARDLOCKUP_DETECTOR=3Dy
# CONFIG_HARDLOCKUP_DETECTOR_PREFER_BUDDY is not set
CONFIG_HARDLOCKUP_DETECTOR_PERF=3Dy
# CONFIG_HARDLOCKUP_DETECTOR_BUDDY is not set
# CONFIG_HARDLOCKUP_DETECTOR_ARCH is not set
CONFIG_HARDLOCKUP_DETECTOR_COUNTS_HRTIMER=3Dy
CONFIG_HARDLOCKUP_CHECK_TIMESTAMP=3Dy
CONFIG_BOOTPARAM_HARDLOCKUP_PANIC=3Dy
CONFIG_DETECT_HUNG_TASK=3Dy
CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=3D140
CONFIG_BOOTPARAM_HUNG_TASK_PANIC=3Dy
CONFIG_WQ_WATCHDOG=3Dy
# CONFIG_WQ_CPU_INTENSIVE_REPORT is not set
# CONFIG_TEST_LOCKUP is not set
# end of Debug Oops, Lockups and Hangs

#
# Scheduler Debugging
#
# CONFIG_SCHED_DEBUG is not set
CONFIG_SCHED_INFO=3Dy
CONFIG_SCHEDSTATS=3Dy
# end of Scheduler Debugging

CONFIG_DEBUG_PREEMPT=3Dy

#
# Lock Debugging (spinlocks, mutexes, etc...)
#
CONFIG_LOCK_DEBUGGING_SUPPORT=3Dy
CONFIG_PROVE_LOCKING=3Dy
CONFIG_PROVE_RAW_LOCK_NESTING=3Dy
# CONFIG_LOCK_STAT is not set
CONFIG_DEBUG_RT_MUTEXES=3Dy
CONFIG_DEBUG_SPINLOCK=3Dy
CONFIG_DEBUG_MUTEXES=3Dy
CONFIG_DEBUG_WW_MUTEX_SLOWPATH=3Dy
CONFIG_DEBUG_RWSEMS=3Dy
CONFIG_DEBUG_LOCK_ALLOC=3Dy
CONFIG_LOCKDEP=3Dy
CONFIG_LOCKDEP_BITS=3D20
CONFIG_LOCKDEP_CHAINS_BITS=3D20
CONFIG_LOCKDEP_STACK_TRACE_BITS=3D20
CONFIG_LOCKDEP_STACK_TRACE_HASH_BITS=3D14
CONFIG_LOCKDEP_CIRCULAR_QUEUE_BITS=3D12
# CONFIG_DEBUG_LOCKDEP is not set
CONFIG_DEBUG_ATOMIC_SLEEP=3Dy
# CONFIG_DEBUG_LOCKING_API_SELFTESTS is not set
# CONFIG_LOCK_TORTURE_TEST is not set
# CONFIG_WW_MUTEX_SELFTEST is not set
# CONFIG_SCF_TORTURE_TEST is not set
CONFIG_CSD_LOCK_WAIT_DEBUG=3Dy
# CONFIG_CSD_LOCK_WAIT_DEBUG_DEFAULT is not set
# end of Lock Debugging (spinlocks, mutexes, etc...)

CONFIG_TRACE_IRQFLAGS=3Dy
CONFIG_TRACE_IRQFLAGS_NMI=3Dy
CONFIG_NMI_CHECK_CPU=3Dy
CONFIG_DEBUG_IRQFLAGS=3Dy
CONFIG_STACKTRACE=3Dy
# CONFIG_WARN_ALL_UNSEEDED_RANDOM is not set
# CONFIG_DEBUG_KOBJECT is not set
# CONFIG_DEBUG_KOBJECT_RELEASE is not set

#
# Debug kernel data structures
#
CONFIG_DEBUG_LIST=3Dy
CONFIG_DEBUG_PLIST=3Dy
CONFIG_DEBUG_SG=3Dy
CONFIG_DEBUG_NOTIFIERS=3Dy
# CONFIG_DEBUG_CLOSURES is not set
CONFIG_DEBUG_MAPLE_TREE=3Dy
# end of Debug kernel data structures

#
# RCU Debugging
#
CONFIG_PROVE_RCU=3Dy
# CONFIG_RCU_SCALE_TEST is not set
# CONFIG_RCU_TORTURE_TEST is not set
# CONFIG_RCU_REF_SCALE_TEST is not set
CONFIG_RCU_CPU_STALL_TIMEOUT=3D100
CONFIG_RCU_EXP_CPU_STALL_TIMEOUT=3D0
# CONFIG_RCU_CPU_STALL_CPUTIME is not set
# CONFIG_RCU_TRACE is not set
CONFIG_RCU_EQS_DEBUG=3Dy
# end of RCU Debugging

# CONFIG_DEBUG_WQ_FORCE_RR_CPU is not set
# CONFIG_CPU_HOTPLUG_STATE_CONTROL is not set
# CONFIG_LATENCYTOP is not set
CONFIG_USER_STACKTRACE_SUPPORT=3Dy
CONFIG_NOP_TRACER=3Dy
CONFIG_HAVE_RETHOOK=3Dy
CONFIG_HAVE_FUNCTION_TRACER=3Dy
CONFIG_HAVE_DYNAMIC_FTRACE=3Dy
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=3Dy
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_DIRECT_CALLS=3Dy
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_ARGS=3Dy
CONFIG_HAVE_DYNAMIC_FTRACE_NO_PATCHABLE=3Dy
CONFIG_HAVE_FTRACE_MCOUNT_RECORD=3Dy
CONFIG_HAVE_SYSCALL_TRACEPOINTS=3Dy
CONFIG_HAVE_FENTRY=3Dy
CONFIG_HAVE_OBJTOOL_MCOUNT=3Dy
CONFIG_HAVE_OBJTOOL_NOP_MCOUNT=3Dy
CONFIG_HAVE_C_RECORDMCOUNT=3Dy
CONFIG_HAVE_BUILDTIME_MCOUNT_SORT=3Dy
CONFIG_TRACE_CLOCK=3Dy
CONFIG_RING_BUFFER=3Dy
CONFIG_EVENT_TRACING=3Dy
CONFIG_CONTEXT_SWITCH_TRACER=3Dy
CONFIG_PREEMPTIRQ_TRACEPOINTS=3Dy
CONFIG_TRACING=3Dy
CONFIG_GENERIC_TRACER=3Dy
CONFIG_TRACING_SUPPORT=3Dy
CONFIG_FTRACE=3Dy
# CONFIG_BOOTTIME_TRACING is not set
# CONFIG_FUNCTION_TRACER is not set
# CONFIG_STACK_TRACER is not set
# CONFIG_IRQSOFF_TRACER is not set
# CONFIG_PREEMPT_TRACER is not set
# CONFIG_SCHED_TRACER is not set
# CONFIG_HWLAT_TRACER is not set
# CONFIG_OSNOISE_TRACER is not set
# CONFIG_TIMERLAT_TRACER is not set
# CONFIG_MMIOTRACE is not set
# CONFIG_FTRACE_SYSCALLS is not set
# CONFIG_TRACER_SNAPSHOT is not set
CONFIG_BRANCH_PROFILE_NONE=3Dy
# CONFIG_PROFILE_ANNOTATED_BRANCHES is not set
CONFIG_BLK_DEV_IO_TRACE=3Dy
CONFIG_UPROBE_EVENTS=3Dy
CONFIG_BPF_EVENTS=3Dy
CONFIG_DYNAMIC_EVENTS=3Dy
CONFIG_PROBE_EVENTS=3Dy
# CONFIG_SYNTH_EVENTS is not set
# CONFIG_USER_EVENTS is not set
# CONFIG_HIST_TRIGGERS is not set
CONFIG_TRACE_EVENT_INJECT=3Dy
# CONFIG_TRACEPOINT_BENCHMARK is not set
# CONFIG_RING_BUFFER_BENCHMARK is not set
# CONFIG_TRACE_EVAL_MAP_FILE is not set
# CONFIG_FTRACE_STARTUP_TEST is not set
# CONFIG_RING_BUFFER_STARTUP_TEST is not set
CONFIG_RING_BUFFER_VALIDATE_TIME_DELTAS=3Dy
# CONFIG_PREEMPTIRQ_DELAY_TEST is not set
# CONFIG_RV is not set
CONFIG_PROVIDE_OHCI1394_DMA_INIT=3Dy
# CONFIG_SAMPLES is not set
CONFIG_HAVE_SAMPLE_FTRACE_DIRECT=3Dy
CONFIG_HAVE_SAMPLE_FTRACE_DIRECT_MULTI=3Dy
CONFIG_ARCH_HAS_DEVMEM_IS_ALLOWED=3Dy
# CONFIG_STRICT_DEVMEM is not set

#
# x86 Debugging
#
CONFIG_EARLY_PRINTK_USB=3Dy
CONFIG_X86_VERBOSE_BOOTUP=3Dy
CONFIG_EARLY_PRINTK=3Dy
CONFIG_EARLY_PRINTK_DBGP=3Dy
# CONFIG_EARLY_PRINTK_USB_XDBC is not set
# CONFIG_DEBUG_TLBFLUSH is not set
CONFIG_HAVE_MMIOTRACE_SUPPORT=3Dy
# CONFIG_X86_DECODER_SELFTEST is not set
CONFIG_IO_DELAY_0X80=3Dy
# CONFIG_IO_DELAY_0XED is not set
# CONFIG_IO_DELAY_UDELAY is not set
# CONFIG_IO_DELAY_NONE is not set
CONFIG_DEBUG_BOOT_PARAMS=3Dy
# CONFIG_CPA_DEBUG is not set
CONFIG_DEBUG_ENTRY=3Dy
# CONFIG_DEBUG_NMI_SELFTEST is not set
CONFIG_X86_DEBUG_FPU=3Dy
# CONFIG_PUNIT_ATOM_DEBUG is not set
CONFIG_UNWINDER_ORC=3Dy
# CONFIG_UNWINDER_FRAME_POINTER is not set
# end of x86 Debugging

#
# Kernel Testing and Coverage
#
# CONFIG_KUNIT is not set
# CONFIG_NOTIFIER_ERROR_INJECTION is not set
CONFIG_FAULT_INJECTION=3Dy
CONFIG_FAILSLAB=3Dy
CONFIG_FAIL_PAGE_ALLOC=3Dy
CONFIG_FAULT_INJECTION_USERCOPY=3Dy
CONFIG_FAIL_MAKE_REQUEST=3Dy
CONFIG_FAIL_IO_TIMEOUT=3Dy
CONFIG_FAIL_FUTEX=3Dy
CONFIG_FAULT_INJECTION_DEBUG_FS=3Dy
# CONFIG_FAIL_MMC_REQUEST is not set
# CONFIG_FAIL_SKB_REALLOC is not set
CONFIG_FAULT_INJECTION_CONFIGFS=3Dy
# CONFIG_FAULT_INJECTION_STACKTRACE_FILTER is not set
CONFIG_ARCH_HAS_KCOV=3Dy
CONFIG_CC_HAS_SANCOV_TRACE_PC=3Dy
CONFIG_KCOV=3Dy
CONFIG_KCOV_ENABLE_COMPARISONS=3Dy
CONFIG_KCOV_INSTRUMENT_ALL=3Dy
CONFIG_KCOV_IRQ_AREA_SIZE=3D0x40000
# CONFIG_KCOV_SELFTEST is not set
CONFIG_RUNTIME_TESTING_MENU=3Dy
# CONFIG_TEST_DHRY is not set
# CONFIG_LKDTM is not set
# CONFIG_TEST_MIN_HEAP is not set
# CONFIG_TEST_DIV64 is not set
# CONFIG_TEST_MULDIV64 is not set
# CONFIG_BACKTRACE_SELF_TEST is not set
# CONFIG_TEST_REF_TRACKER is not set
# CONFIG_RBTREE_TEST is not set
# CONFIG_REED_SOLOMON_TEST is not set
# CONFIG_INTERVAL_TREE_TEST is not set
# CONFIG_PERCPU_TEST is not set
# CONFIG_ATOMIC64_SELFTEST is not set
# CONFIG_ASYNC_RAID6_TEST is not set
# CONFIG_TEST_HEXDUMP is not set
# CONFIG_TEST_KSTRTOX is not set
# CONFIG_TEST_PRINTF is not set
# CONFIG_TEST_SCANF is not set
# CONFIG_TEST_BITMAP is not set
# CONFIG_TEST_UUID is not set
# CONFIG_TEST_XARRAY is not set
# CONFIG_TEST_MAPLE_TREE is not set
# CONFIG_TEST_RHASHTABLE is not set
# CONFIG_TEST_IDA is not set
# CONFIG_TEST_LKM is not set
# CONFIG_TEST_BITOPS is not set
# CONFIG_TEST_VMALLOC is not set
# CONFIG_TEST_BPF is not set
# CONFIG_TEST_BLACKHOLE_DEV is not set
# CONFIG_FIND_BIT_BENCHMARK is not set
# CONFIG_TEST_FIRMWARE is not set
# CONFIG_TEST_SYSCTL is not set
# CONFIG_TEST_UDELAY is not set
# CONFIG_TEST_STATIC_KEYS is not set
# CONFIG_TEST_DYNAMIC_DEBUG is not set
# CONFIG_TEST_KMOD is not set
# CONFIG_TEST_KALLSYMS is not set
# CONFIG_TEST_DEBUG_VIRTUAL is not set
# CONFIG_TEST_MEMCAT_P is not set
# CONFIG_TEST_MEMINIT is not set
# CONFIG_TEST_HMM is not set
# CONFIG_TEST_FREE_PAGES is not set
# CONFIG_TEST_CLOCKSOURCE_WATCHDOG is not set
# CONFIG_TEST_OBJPOOL is not set
CONFIG_ARCH_USE_MEMTEST=3Dy
# CONFIG_MEMTEST is not set
# end of Kernel Testing and Coverage

#
# Rust hacking
#
# end of Rust hacking
# end of Kernel hacking


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Syz Poc =

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
syz_mount_image$jfs(&(0x7f0000005dc0), &(0x7f0000000080)=3D'./file1\x00', 0=
x0, &(0x7f00000000c0), 0x1, 0x5e5b, &(0x7f000000bc00)=3D"$eJzs3UuPFNfZB/CnL=
9Nz4TWMLL2WhbIYY+dCMDBcDLnb3iRSVpEiNlmBxmMLBScRkCi2UBhrFvkGUbJIlOyzyifIHj6E=
F1kGCZKNV6moZs6BmqJneghMVzPn95OaqqdOVfcp/n2druoTAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAED88Ps/PteLiKu/SguWI/4vBhH9iMW6XomIxZXlvP4wIl6PreZ4rV59PqLefu=
ufYxEXI+L+0YiHj+6s1YvP77Mf/z7y/8f++dcfnP7933537+QfT73dbv/T+j/u/eRuui0AAADgm=
VRVVfXSx/zj6fN9v+tOAQBTkV//qyQvV6vVarVaffjqpmq8u80iIjaa29TvGe6OuzIAYHZtxBdd=
d4EOyb9ow4g40nUngJnmuPvD6eGjO2u9lG+v+Xqwst2ejwXZkf9G7/H5HbtNJ2kfYzKt+9dmDOL=
VXfqzOKU+zJKcf7+d/9Xt9lFa76Dzn5bd8h9tn/pUnJz/oJ1/y+HJvz82/1Ll/IfPlP9A/gAAAA=
AAMMPy3/+XO/7+d/75d2Vf9vr+d2VKfQAAAAAAAACAF+15x/97zPh/AAAAMLPqz+q1Px99smy3z=
9j18iu9iFda6wOFSSfLLHXdDwAAAAAAAAAAAAAoyXD7GN4rvYi5iHhlaamqqvrS1K6f1fNu/7Ir=
ff+hZF0/yQMAwLb7R1vn8vciFiLiSvqtv7mlpaWqWlhcqpaqxfn8fnY0v1AtNj7X5mm9bH60jzf=
Ew1FVX9lCY7umSZ+XJ7W3r6++rVE12EfHpqPDwAEgIrZfjR56RTpkqupYdP0uh5eDx//h4/HPfn=
R9PwUAAAAOXlVVVS/9nPfx9J1/v+tOAQBTkV//298LqNVqtVqtPnx1UzXe3WYRERvNber3DHfHX=
RkAMLs24ouuu0CH5F+0YUS83nUngJnW67oDHIiHj+6s9VK+vebrQRrfPR8LsiP/jd7Wdnn7cdNJ=
2seYTOv+tRmDeHWX/rw2pT7Mkpx/v53/1e32UVrvoPOflt3yr/dzuYP+dC3nP2jn33J48u+Pzb9=
UOf/hM+U/kD8AAAAAAMyw/Pf/Zd//5l0GAAAAAAAAgJfOw0d31vJ5r/n7/y+NWc/5n4dTzr8n/y=
Ll/Put/L/WWm/QmH/w/pP8//XoztqP/vD58Tzdb/7zeaaX7lm9dI/opVvqDdP0efbuaZtzg1F9S=
3O9/mCYjvmp5j6M63Ej1mN1x7r99P/xpP3cjva6p3M72s/vaB8+1X5hR/tc+t2BajG3n4m1+Hnc=
iA+22uu2+Qn7vzChvZrQnvMfePwXKec/bFzq/JdSe681rT34rP/U4745HXc77/323v3Vg9+diTZ=
j8Hjfmur9O9FBf7b+T46M4pe31m+e+fW127dvnos02bH0fKTJC5bzn0uXx8//b2635+f95uP1wW=
ejZ85/VmzGcNf832zM1/t7csp960LOf5QuOf8PUvv4x/9Lm/9c7PH4P9VBhwAAAAAAAAAAAAAAA=
GAvVVVtnSL6XkRcSuf/dHVuJgAwXfn1v0rycrVarT5M9Shmqz9qdVd1UzXeu80iIv7e3KZ+z/Cb=
cVcGAMyy/0TE5113gs7Iv2D59/7q6VtddwaYqluffPrTazdurN+81XVPAAAAAAAAAID/VR7/c6U=
x/vNbEbHcWm/H+K/vx8rzjv85zDOPBxh9wQN972KzPxr0G8ONvxF7j/99IvYe/3s44fbmJrSPJr=
TPT2hfmNA+9kSPhpz/G43xzuv8j7eGXz8k47/uOf5ze8z7EuT8TzTuz3X+X22t18y/+svLnH9/R=
/5nb3/8i7O3Pvn09PWPr320/tH6zy6url66cPmd1curZz+8fmM9/dthjw9Wzj+Pfe040LLk/HPm=
8i9Lzv/LqZZ/WXL+X0m1/MuS88/v9+Rflpx//uwj/7Lk/E+mWv5lyfl/PdXyL0vO/1Sq5V+WnP/=
bqZZ/WXL+p1Mt/7Lk/M+kWv5lyfmfTbX8y5Lzz99wyb8sOf98ZIP8y5LzP59q+Zcl538h1fIvS8=
7/YqrlX5ac/zupln9Zcv6XUi3/suT8L6da/mXJ+X8j1fIvS87/m6mWf1ly/t9KtfzLkvP/dqrlX=
5ac/3dSLf+y5Py/m2r5lyXn/71Uy78sOf93Uy3/sjz5/X8zZsyYyTNdPzMBAAAAAAAAAAAAAG3T=
OJy4630EAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAADgv+zAgQAAAAAAkP9rI1RVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV=
VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVhBw4EAAAAAID8Xxuhqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqCnv3GiPXWd4B/Ox611k7XLYQghsCrB0TTLJk1/eY1rD=
cSpqQlgKhLb0Y114bg294bW6KFKPQEqlRG6l8gA/lVqTypSICVFGVIldqBRJI5BOt1DakClQRhd=
bQfoCKsNXMvM/rmfHsxWc2zsw5v58UP/bsmZl3zrwzu/91/msAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKDd5tfOf2SkKIrGf81fJ=
oviGY3fb5iabPxx6yue7hUCAAAA/Xqy+evFZ+cL5lZxpbZjvvaib31pcXFxsXj0ey97/kcXF/MH=
popi8pqiaH4sPHH3325tPya5v5gYGW378+gKd79uhY+PrfDx8RU+vn6Fj1+zwscnVvj4ZSfgMht=
a349p3tjW5m8nW6e0uK4Yb35sa49r3T9yzehofC+naaR5ncXxI8Wx4ngxX8x2HN86dqR5/Fc2N+=
7rjiLua7Ttvm5s7JAf3Xso1jCSzvHWjvu6dJvhh68upn78o3sPvenjj93Qa654Gjpur7XObVsa6=
/xwuqS11pHimnxOYp2jbeu8scdzsq5jnSPN6zV+373Oi6tc57pLy7yqup/ziWK0+ftHmudprP3b=
evk83Zgu+8lNRVGcv7Ts7mMuu69itNjYccnopednorUjG7fR2ErPKcauaJ9uXsU+bczDWzv3afd=
rIp7/zel6Y0usof1p+uGH1l/2vF/pPg2NR73Ua6V7D671a2VQ9mDsi0eaD/qBnntwa3r899689B=
7suXd67MH8uNv24JaV9uDo+nXNNecnYaR5nUt7cHvH8eua9zTSnE/cvPwenDl74vTMwgc++PJjJ=
w4enT86f3LX7OyenXt3z+6dnTly7Ph8+rXk2R58G4vR/BrYks5dvAZe2nVs+1Zd/PTavQ4nlnkd=
TnYdu9avw7HuBzdydV6Ql+/p1mvjrY2TPvHgaLHEa6z5/NzS/+swP+621+FY2+uw5+eUHq/DsVW=
8DhvHnL5ldV+zjLX912sNT9Xngsm2Pdj99Uj3Hlzrr0cGZQ9OpH3xr7cs/bngxrTeB6av9OuRdZ=
ftwfxw03tP45L89f7E7c3Ra1/e0PjAteuLcwvzZ257/8GzZ89sL9K4Kp7btle69+vGtsdUXLZfR=
694v8595BvfvKHH5ZPpXE28vPHLxJLPVeOYXbct/1w1P7v1Pp8dl+4o0lhjV/t89vps3jifOUsu=
cz4bx3x4pv+vxXMubXv/HV/i/Tdy/8+b97M139T968bHWq/fdfnsjHe8H3c+VWPN966R5n1fnFn=
d+/F4+u9qvx9ft8z78aauY9f6/Xi8+8HF+/HISt/t6E/38zmR9snx2eXfjxvHbNpxpXtybNn345=
vSHEnn/2UpKeRc1LZ3ltq3+b7GxsbT4xqLe+jcpzs7jh9P2axxX5/bUW6fbrupdVvr8qO75Grt0=
6muY9d6n+b3q6X26chK330rp/v5nEj74rqdy+/TxjEXdvX/3rkhftv23rl+pT04vm59Y83jeRO2=
3u8XN8QevK04VJwqjheHmx9d39xPI837mt69uj24Pv13td8rNy2zB7d1HbvWezB/Hltq742MXf7=
g10D38zmR9sXHdi+/BxvHvG7v2n7tui1dko9p+9q1+/trS33P64au0/RUfs+rsc5/2Lv892Ybxx=
y//Upz5vLn6dZ0ybU9zlP363ep19Th4uqcp01pnT+4fenz1FhP45iP7lvlfporiuKLd801v9+b/=
n7lC+e+/aWOv3eZa33sy/su3dZlX3X0+nufL941d+Gf7/zplTxGAAbbz5u/bt3Y+lzX9jdTq/n7=
fwAAAGAoRO4fTTOT/wEAAKAyIvfH/xWeyf8AAABQGZH7x9LMapL/H/i35737Z/cVuZm/mMTH4zS=
cfrx1XHRcP5X+PLV4SePy13z2H7/x9vtWd9+jRVH87M5/6Xn8A4/HuloeSuuc+k7n5ZfZ9J1V3f=
877rl0XHsHcDLdfjye7m3wlf9+vHm9qX2teeHOC8355vMP3N/4+MV9rT9Hd/KJ/2kd9+epzDt35=
O87rr/t0db9bX10+ccV1/v8Gzfc9YK3Xbq/uN7Ilmc1H8bHXtm63fi5Nw+9tnX8xXTcUuv/uz/+=
3Ocbx7//Jb3Xf99o7/U/kW73u2n+9MnW5e3ntPHnuN4fpvXH/cX1bvvMV3uu/+E3tI5/OD0vn0q=
ze/2v/tMXPtl+vmL9cT9zj7WuF/c/+9f/0bxe3F7cfvf6J171eMf56L79C19o3c7+9/7vuvbj4/=
K4n7zvHut8nhu3077fwuf+6ELHeS7+vXW9v+laf9ze6cd6r//WrnWe3r6xef2lKuOfmP9uz8cb6=
5n7q0c6Hs/D30/n7zV3N2934idpP6aP/99Drdvr/mkJj3y/8/0kjv/UZOt1Gbc307X+h7rWf/7F=
jXO38vrv+HFr/Q+/6mudz8d/ttYx98PWXGn9Rz/5rY7rf/rbrefjzPumT55aOHcsOtST6Wf/nP5=
e6/aumdiw8dpnPPNZz07vld1/PnDq7Dvnz0zNTs0WxdQQ/ki8p3r9n0nzv1rj/Frf/r1FUbyv7f=
PaLa9v7b/iRRf/5MV3fPadcdw/va51+YN3tT5vvTQd91C6/Hx6vuN2PvHx1ufDftcf97PUzOtdp=
XNf/8ieVR2YHv/HNl/ffJWNXGhd3P1+VVa8zh97Xufr/tG3tuaX03ldTD+Zecv1X28e133/8bMR=
HnxL6/UdX8nF9ftd/1+m5/vu77ZuP243rzd9HfPVTZ3vj/H8fPm+rp80MNn6KR7n0/tHcb718Tg=
qvqZ68OL1V7LMJS18YGHm+LGT594/c3Z+4ezMwgc+eODEqXMnzx5o/mzOA+9a6fqXXt8bm6/vw/=
N7dhXNV/up1niKPd3rP33PocN7Z28+PH/k4LkjZ+85PX/m6KGFhUPzhxduPnjkyPz7Vrr+scP7t=
+/Yt3Pvjumjxw7vv33fvp37po+dPNVYRmtRK9gz++7pk2cONK+ysH/Xvu27d++anT5x6vD8/r2z=
s9PnVrp+83PTdOPa750+M3/84NljJ+anF459cH7/9n179uxY8af7nTh9ZGFq5sy5kzPnFubPzLQ=
ey9TZ5sWNz30rXR8aFj65oefnqZH01fv2W/fkn8/a8NkPLXlTrUO6foDoD9LPovnmX/zZ7tX8OX=
L/eJpZTfI/AAAA1EHk/vVpZvI/AAAAVEbk/mvSzOR/AAAAqIzI/RNpZjXJ//r/+v/6//r/Qf9f/=
7+MNVv/eO+L9f/1/wv9/9Ke7v78sK9f/1//n/4NWv8/cv+Goqhl/gcAAIA6iNy/Mc1M/gcAAIDK=
iNx/bZqZ/A8AAACVEbn/GWlmNcn/+v/6//r/+v9B/1//vwz//r/+fxn6//r/w7B+/X/9f/o3aP3=
/yP3PTDOrSf4HAACAOojc/6w0M/kfAAAAKiNy/7PTzOR/AAAAqIzI/ZNpZjXJ/0v1/1Pdbvn+/5=
z+v/6//r/+v/6//r/+v/7/ldP/1/8fhvXr/+v/079B6/9H7v+FNLOa5H8AAACog8j9z0kzk/8BA=
ACgMiL3PzfNTP4HAACAyojcf12aWU3yv3//X/9f/1//P+j/6/+Xof+v/1+G/r/+/zCsX/9f/5/+=
DVr/P3L/89LMapL/AQAAoA4i91+fZib/AwAAQGVE7n9+mpn8DwAAAJURuX9TmllN8r/+v/6//r/=
+f9D/1/8vQ/9f/7+Mgen/r/A1g/6//r/+v/4//Rm0/n/k/l9MM6tJ/gcAAIA6iNx/Q5qZ/A8AAA=
CVEbn/BWlm8j8AAABURuT+G9PMapL/9f/1//X/9f+D/r/+fxn6//r/ZQxM/38F+v/6//r/+v/0Z=
9D6/5H7X5hmVpP8DwAAAHUQuf9FaWbyPwAAAFRG5P4Xp5nJ/wAAAFAZkfun0sxqkv/1//X/9f/1=
/4P+v/5/Gfr/+v9l6P/r/w/D+vX/9f/p36D1/yP3b04zq0n+BwAAgDqI3L8lzUz+BwAAgMqI3H9=
Tmpn8DwAAAJURuX9rmllN8r/+v/6//r/+f9D/1/8vQ/9f/78M/X/9/2FYv/6//j/9G7T+f+T+l6=
SZ1ST/AwAAQB1E7r85zUz+BwAAgMqI3P/SNDP5HwAAACojcv+2NLOa5H/9f/1//X/9/6D/r/9fh=
v6//n8Z+v/6/8Owfv1//X/6N2j9/8j9L0szq0n+BwAAgDqI3H9Lmpn8DwAAAJURuf/WNDP5HwAA=
ACojcv90mllN8r/+v/6//r/+f9D/1/8vQ/9f/78M/X/9/2FYv/6//j/9G7T+f+T+l6eZ1ST/AwA=
AQB1E7r8tzUz+BwAAgMqI3D+TZib/AwAAQGVE7p9NM6tJ/tf/1//X/9f/D/r/+v9l6P/r/5eh/6=
//Pwzr1//X/6d/g9b/j9y/Pc2sJvkfAAAA6iBy/440M/kfAAAAKiNy/840M/kfAAAAKiNy/640s=
5rkf/1//X/9f/3/oP+v/1+G/r/+fxn6//r/w7B+/X/9f/o3aP3/yP2708xqkv8BAACgDiL370kz=
k/8BAACgMiL3700zk/8BAACgMiL3355mVpP8r/+v/9+r//+ervXr/3fS/0/Pj/6//r/+v/5/Sfr=
/+v/DsH79f/1/+jdo/f/I/fvSzGqS/wEAAKAOIve/Is1M/gcAAIDKiNz/S2lm8j8AAABURuT+X0=
4zq0n+1//X//fv/+v/B/1//f8y9P/1/8vQ/9f/H4b16//r/9O/Qev/R+7fn2ZWk/wPAAAAdRC5/=
5VpZvI/AAAAVEbk/lelmcn/AAAAUBmR++fSzGqS//X/9f/1//X/g/6//n8Z+v/6/2Xo/+v/D8P6=
9f/1/+nfoPX/I/e/Os2sJvkfAAAA6iBy/2vSzOR/AAAAqIzI/a9NM5P/AQAAoDIi978uzawm+V/=
/X/9f/1//P+j/6/+Xof+v/1+G/r/+/zCsX/9f/5/+DVr/P3L/69PMapL/AQAAoA4i9/9Kmpn8Dw=
AAAJURuf8NaWbyPwAAAFRG5P470sxqkv/1//X/9f/1/4P+v/5/Gfr/+v9l6P/r/w/D+vX/9f/p3=
6D1/yP3/2qaWU3yPwAAANRB5P4708zkfwAAAKiMyP13pZnJ/wAAAFAZkfvfmGZWk/yv/6//r/+v=
/x/0//X/y9D/1/8vQ/9f/38Y1q//f2Rhamau0P+nH4PW/4/cf3eaWU3yPwAAANRB5P5fSzOT/wE=
AAKAyIvf/epqZ/A8AAACVEbn/TWlmNcn/+v/6//r/+v9B/1//vwz9f/3/Msr2/8e7bkf/f3lPd3=
9+2Nev/+/f/6d/g9b/j9z/G2lmNcn/AAAAUAeR+9+cZib/AwAAQGVE7n9Lmpn8DwAAAJURuf+ta=
WY1yf/6//r/+v/6/0H/X/+/DP1//f8y/Pv/+v/DsH79f/1/+jdo/f/I/fekmdUk/wMAAEAdRO5/=
W5qZ/A8AAACVEbn/N9PM5H8AAACojMj9v5VmVpP8r/+v/6//r/8f9P/1/8vQ/9f/L0P/X/9/GNa=
v/6//T/8Grf8fuf+308xqkv8BAACgDiL3vz3NTP4HAACAyojc/ztpZvI/AAAAVEbk/t9NM6tJ/t=
f/1//X/9f/D/r/+v9l6P/r/5eh/6//Pwzr1//X/6d/g9b/j9z/e2lmNcn/AAAAUAeR+38/zUz+B=
wAAgMqI3H8gzUz+BwAAgMqI3P+ONLOa5H/9f/1//X/9/6D/r/9fhv6//n8Z+v/6/8Owfv1//X/6=
N2j9/8j9B9PMapL/AQAAoA4i9/9Bmpn8DwAAAJURuf9Qmpn8DwAAAJURuf9wmllN8r/+v/6//r/=
+f9D/1/8vQ/9f/78M/X/9/2FYv/6//j/9G7T+f+T++TSzmuR/AAAAqIPI/UfSzOR/AAAAqIzI/U=
fTzOR/AAAAqIzI/e9MM6tJ/tf/1//X/9f/D/r/+v9l6P/r/5eh/6//Pwzr1//X/6d/g9b/j9x/L=
M2sJvkfAAAA6iBy/7vSzOR/AAAAqIzI/e9OM5P/AQAAoDIi9x9PM6tJ/tf/1//X/9f/D/r/+v9l=
6P/r/5eh/6//Pwzr1//X/6d/g9b/j9x/Is2sJvkfAAAA6iBy/8k0M/kfAAAAKiNy/6k0M/kfAAA=
AKiNy/+k0s5rkf/1//X/9f/3/oP+v/1+G/r/+fxn6//r/w7B+/X/9f/o3aP3/yP3vSTOrSf4HAA=
CAOojcfybNTP4HAACAyojcv5BmJv8DAABAZUTuP5tmVpP8r/+v/6//r/8f9P/1/8vQ/9f/L0P/X=
/9/GNav/6//T/8Grf///+zdxa5t2ZGFYWWjStWoB6onqjcoNDMzMzMzMzMzs9PM3LBsxQhZVlo3=
PVcqc60Z39eJzm5M6UhXZ+jcXzu7/7/qtiH7HwAAACbI7v/vus3+BwAAgG1k9/9P3Wb/AwAAwDa=
y+/+3bhuy//X/+n/9v/4/9P/6/xX6f/3/Cv2//v8K79f/6/857mz9f3b//9VtQ/Y/AAAATJDd//=
91m/0PAAAA28juv1PdZv8DAADANrL771y3Ddn/+n/9v/5f/x/6f/3/Cv2//n+F/l//f4X36//1/=
xx3tv4/u/8udduQ/Q8AAAATZPfftW6z/wEAAGAb2f13q9vsfwAAANhGdv/d67Yh+1//r//X/+v/=
Q/+v/1+h/9f/r9D/6/+v8H79v/6f487W/2f336NuG7L/AQAAYILs/nvWbfY/AAAAbCO7/151m/0=
PAAAA28juv3fdNmT/6//1//p//X/o//X/K/T/+v8V+n/9/xXer//X/3Mj//EvN/rE2fr/7P771G=
1D9j8AAABMkN1/37rN/gcAAIBtZPffr26z/wEAAGAb2f33r9uG7H/9v/5f/6//D/2//n+F/l//v=
0L/r/+/wvv1//p/jjtb/5/d/4C6bcj+BwAAgAmy+x9Yt9n/AAAAsI3s/gfVbfY/AAAAbCO7/8F1=
25D9r//X/+v/9f+h/9f/r9D/6/9X6P/1/1d4v/5f/89xZ+v/s/sfUrcN2f8AAAAwQXb/Q+s2+x8=
AAAC2kd3/sLrN/gcAAIBtZPc/vG4bsv/1//p//b/+P/T/+v8V+n/9/wr9v/7/Cu/X/+v/Oe5s/X=
92/yPqtiH7HwAAACbI7n9k3Wb/AwAAwDay+x9Vt9n/AAAAsI3s/kfXbUP2v/5f/6//v3H//69/9=
/PQ/9fPR/+v/9f/6/8X6f/1/1d4v/5f/89xZ+v/s/sfU7cN2f8AAAAwQXb/Y+s2+x8AAAC2kd3/=
uLrN/gcAAIBtZPc/vm4bsv/1//p//b/v/w/9v/5/hf5f/79C/3+b9P//dqMP3NH9/FF39Pv1//p=
/jjtb/5/d/4S6bcj+BwAAgAmy+59Yt9n/AAAAsI3s/ifVbfY/AAAAbCO7/8l125D9r//X/+v/9f=
+h/9f/r9D/6/9X6P99//8V3q//1/9z3Nn6/+z+p9RtQ/Y/AAAATJDd/9S6zf4HAACAbWT3P61u+=
8f7/1b+73YAAADgLLL7n163Dfn7v/5f/6//1/+H/l//v0L/r/9fof/X/1/h/fp//T/Hna3/z+5/=
Rt02ZP8DAADABNn9z6zb7H8AAADYRnb/s+o2+x8AAAC2kd3/7LptyP7X/+v/9f/6/9D/6/9X6P/=
1/yv0//r/K7xf/6//57iz9f/Z/c+p24bsfwAAAJggu/+5dZv9DwAAANvI7n9e3Wb/AwAAwDay+5=
9ftw3Z//p//b/+X/8f+n/9/wr9v/5/hf5f/3+F9+v/9f8cd7b+P7v/BXXbkP0PAAAAE2T3v7Bus=
/8BAABgG9n9L6rb7H8AAADYRnb/i+u2Iftf/6//1//r/0P/r/9fof/X/6/Q/+v/r/B+/b/+n+PO=
1v9n97+kbhuy/wEAAGCC7P6X1m32PwAAAGwju/9ldZv9DwAAANvI7n953TZk/+v/9f/6f/1/6P/=
1/yv0//r/Ffp//f8V3q//1/9z3Nn6/+z+V9RtQ/Y/AAAATJDd/8q6zf4HAACAbWT3v6pus/8BAA=
BgG9n9r67bhux//b/+X/+v/w/9v/5/hf5f/79C/6//v8L79f/6f467Y/r/v/xLe8v9f3b/a+q2I=
fsfAAAAJsjuf23dZv8DAADANrL7X1e32f8AAACwjez+19dtQ/a//l//r//X/4f+X/+/Qv+v/1+h=
/9f/X+H9+n/9P8fdQv9/09/+rnZ7f/9/dv8b6rYh+x8AAAAmyO5/Y91m/wMAAMDZ3fyft/KD2f1=
vqtvsfwAAANhGdv+b67Yh+1//r//X/+v/Q/+v/1+h/9f/r9D/6/+v8H79v/6f426h//+rm+q399=
u7/8/uf0vdNmT/AwAAwATZ/W+t2+x/AAAA2EZ2/9vqNvsfAAAAtpHd//a6bcj+1//r//X/+v/Q/=
+v/V+j/9f8r9P/6/yu8X/+v/+e4s/X/2f3vqNuG7H8AAACYILv/nXWb/Q8AAADbyO5/V91m/wMA=
AMA2svvfXbcN2f/6f/2//l//H/p//f8K/b/+f4X+X/9/hffr//X/HHe2/j+7/z1125D9DwAAABN=
k97+3brP/AQAAYBvZ/e+r2+x/AAAA2EZ2//vrtiH7X/+v/9f/6/9D/6//X6H/1/+v0P/r/6/wfv=
2//p/jztb/Z/d/oG4bsv8BAABgguz+D9Zt/9z+//fb9lUAAADAbSm7/0N1m7//AwAAwDay+z9ct=
w3Z//p//b/+X/8f+n/9/wr9v/5/hf5f/3+F9+v/9f8cd7b+P7v/I3XbkP0PAAAAE2T3f7Rus/8B=
AABgG9n9H6vb7H8AAADYRnb/x+u2Iftf/6//1//r/0P/r/9fof/X/6/Q/+v/r/B+/b/+n+PO1v9=
n93+ibhuy/wEAAGCC7P5P1m32PwAAAGwju/9TdZv9DwAAANvI7v903TZk/+v/9f/6f/1/6P/1/y=
v0//r/Ffp//f8V3q//1/9z3Nn6/+z+z9RtQ/Y/AAAATJDd/9m6zf4HAACAbWT3f65us/8BAABgG=
9n9n6/bhux//b/+X/+v/w/9v/5/hf5f/79C/6//v8L79f/6f447W/+f3f+Fum3I/gcAAIAJsvu/=
WLfZ/wAAALCN7P4v1W32PwAAAGwju//LdduQ/a//1//r//X/of/X/6/Q/+v/V+j/9f9XeL/+X//=
PcWfr/7P7v1K3Ddn/AAAAMEF2/1frNvsfAAAAtpHd/7W6zf4HAACAbWT3f71uG7L/9f/6f/2//j=
/0//r/Ffp//f8K/b/+/wrv1//r/znubP1/dv836rYh+x8AAAAmyO7/Zt1m/wMAAMA2svu/VbfZ/=
wAAALCN7P5v121D9r/+X/+v/9f/h/5f/79C/6//X6H/1/9f4f36f/0/x52t/8/u/07dNmT/AwAA=
wATZ/d+t2+x/AAAA2EZ2//fqNvsfAAAAtpHd//26bcj+1//r//X/+v/Q/+v/V+j/9f8r9P/6/yu=
8X/+v/+e4s/X/2f03121D9j8AAABMkN3/g7rN/gcAAIBtZPf/sG6z/wEAAGAb2f0/qtuG7H/9v/=
5f/6//D/2//n+F/l//v0L/r/+/wvv1//p/jjtb/5/d/+O6bcj+BwAAgAmy+39St9n/AAAAsI3s/=
p/WbfY/AAAAbCO7/2d125D9r//X/+v/9f+h/9f/r9D/6/9X6P/1/1d4v/5f/89xZ+v/s/t/XrcN=
2f8AAAAwQXb/L+o2+x8AAAC2kd3/y7rN/gcAAIBtZPf/qm4bsv/1//p//b/+P/T/+v8V+n/9/wr=
9v/7/Cu/X/+v/Oe5s/X92/6/rtiH7HwAAACbI7v9N3Wb/AwAAwDay+39bt9n/AAAAsI3s/t/VbU=
P2v/5f/6//1/+H/l//v0L/r/9fof/X/1/h/fp//T/Hna3/z+7/fd02ZP8DAADABNn9f6jb7H8AA=
ADYRnb/H+s2+x8AAAC2kd3/p7ptyP7X/+v/9f/6/9D/6/9X6P/1/yv0//r/K7xf/6//57iz9f/Z=
/X8OAAD//2a0asA=3D")
r0 =3D openat(0xffffffffffffff9c, &(0x7f0000000100)=3D'./file1\x00', 0x4c04=
2, 0x1ff)
r1 =3D syz_open_dev$loop(&(0x7f0000000000), 0x5, 0x40)
ioctl$LOOP_SET_FD(r1, 0x4c00, r0)



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
