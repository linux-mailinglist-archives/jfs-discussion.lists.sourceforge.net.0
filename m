Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F14257B53A7
	for <lists+jfs-discussion@lfdr.de>; Mon,  2 Oct 2023 15:02:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qnIZF-0000aT-4y;
	Mon, 02 Oct 2023 13:02:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <juntong.deng@outlook.com>) id 1qnFVw-0006ud-QH
 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Oct 2023 09:46:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=86T43f9TamK+kvu+TFXdoV9SdeOeMOG/uQIbv81LF9E=; b=NBc+BCkR2dlvCeelXlzMmi7mBv
 H9AYzMOF2LvTL8/bmiDkcbjiIUbQdScTO1eHW4UJq+Tg4mCN2m0n+35igRkc9DppGovlYWlTMhadp
 OCNuwvMPLyI49itXOLeZStaZDxIFjPtBFFIBvCHtVy8WBp54dZhELOqmaL5svcqRr2e4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=86T43f9TamK+kvu+TFXdoV9SdeOeMOG/uQIbv81LF9E=; b=L
 nyRG0iHbynMBAuoG+buzURGXhURKu9zf1i++GzJyiYDG6O4f+G700/Pk988paV7Pw7F1HB70a/TBy
 88hSkEtboMzRnocaOqb8W6xUY1nu+pGmJM0Cj+5bfr874TuqK4d0CWLswdaXp0H18CrnRjve2I9Y+
 2PE019X5etvHHg/w=;
Received: from mail-db8eur05olkn2098.outbound.protection.outlook.com
 ([40.92.89.98] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnFVm-0005IP-Qk for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Oct 2023 09:46:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=chbZcVN/O5+eJ3dE0FgcY3s/5hAcAXr7TvaI4bW7OicXA3T6GvpKO8w3e3fKbHLTS1C9KofSr7fkcvXJS5ZjFwK+bTn4BrRm5H+Q8BanAP6gb30PglEaSBSU8gz85bYlXDVt4rNxXoFGZRhZ2b+ksNDwzLrBRYCLwFy8pPzPmepSI3utXKS2Bw8GprRHSxlqiBe/dYw6VItAofLrbLwYVtEEYnVApAYtVfAJCAHTswiwVPYbfKrw+VsQQGylQCKwcnXq61Jr88JDlBVZRY69lJrz9d/wxdM8BFCUAzISG9PqHFUjDXIKyGD5IC+ph6zvayNnR/wznZwjfL6RHr9qcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=86T43f9TamK+kvu+TFXdoV9SdeOeMOG/uQIbv81LF9E=;
 b=ipszWpLKX+XdQigr4mZJUP7AHg1SFIZgnRsEudGArEQFH8MaYIAHYRRBdME0n55G25ItYrEPNowZDUO/AylHkmx7WsPmfkRF8z0f+ShmvADjs1+TTrZE4kdtaKMAJLlUQcXY8IbRhmXz1d181IV/IF6UHYqztLKD1xmo7avvUqEy1HSPFJ20u4TsizczIydeYKbKpbnSzufuUMmevY25JNVj1gE7GnMvJ8r2glH03nPhovFjlKh+/Jz9WZRTVQgRermEp5YLm2aI++IYLVr8sv3ny+8avNu5OY8XwQu0yO23SfbXVG2mpQqytC3bfDV2MboB2MlcCApaNGQr5z03Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=86T43f9TamK+kvu+TFXdoV9SdeOeMOG/uQIbv81LF9E=;
 b=Dgme32J5Quj15yGMXbDWEiDPth+SlI8z+ZQGx3XouJ8Ejzn81XeGGmN7nrZcIcrmzhkewskb93ERGnugKw8mxPUZqcawSuRAq4WJcQERSEl8P/LtWuMghicK0lPk6RnhTX/rWd732tDglHNvYpYPExd3fcKhJ75hWPTbTRhWBiooUhIalVtrDBMgKNbrVdesCot3mWnhbe7oRFPzuzPr5D+zFRIUtOJv81NSS0AiIz0recWsRDV3bpAgIYnsdhL8VoFx9J1xeKxf5sy42cMwl8g2ZzBrgiGCl34moJIx1qjlaAsZvwzixSbYFd6HXyvi9uqPD3CaZ/r+0ZbTLzHJHw==
Received: from VI1P193MB0752.EURP193.PROD.OUTLOOK.COM (2603:10a6:800:32::19)
 by AS8P193MB1672.EURP193.PROD.OUTLOOK.COM (2603:10a6:20b:3fb::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.26; Mon, 2 Oct
 2023 09:46:38 +0000
Received: from VI1P193MB0752.EURP193.PROD.OUTLOOK.COM
 ([fe80::3164:ae5c:78f7:23ad]) by VI1P193MB0752.EURP193.PROD.OUTLOOK.COM
 ([fe80::3164:ae5c:78f7:23ad%4]) with mapi id 15.20.6838.029; Mon, 2 Oct 2023
 09:46:38 +0000
To: shaggy@kernel.org, wonguk.lee1023@gmail.com, liushixin2@huawei.com,
 andrew.kanner@gmail.com, wuhoipok@gmail.com
Date: Mon,  2 Oct 2023 17:45:33 +0800
Message-ID: <VI1P193MB07523CD35EEB81FEEEEC168299C5A@VI1P193MB0752.EURP193.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.39.2
X-TMN: [u5qeIHH0WzrRnCk60i2QYyA9QLS0n0IU]
X-ClientProxiedBy: AM0PR03CA0057.eurprd03.prod.outlook.com (2603:10a6:208::34)
 To VI1P193MB0752.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:800:32::19)
X-Microsoft-Original-Message-ID: <20231002094533.511696-1-juntong.deng@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1P193MB0752:EE_|AS8P193MB1672:EE_
X-MS-Office365-Filtering-Correlation-Id: 37e8943a-d3a4-46cc-fb73-08dbc32c78d5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8bhZWxWZlzmbvHWuNJ9x36Q7hAY6AecGJD7HjdfVNH4bFaakP9w/sp1+DCMHwitUGirUBdrOqF/LCPH4XmEG7BZuIs9Rf0/I0T5t0MY0B+RwbyE63bzjrO7tP9mnL6PA266xVFbRBs1r9diT9x2CcFZD4+5ENPU9l6eCpXX25dGbudELxTKlHH5ycmTLb0EA6S8Qw9VlVNqp3uY5dpFhPzO9iYDvRtiX6K8zgE34NK1rZ3k0oaDQwXU/cC3I99P+vgIzgoi/oC7irrzIOcuDWjyKfC3soVlwdEdxtsQV1fTlZjXRh3FV32t7r9Iiw2/SSDidOVaoRKLg3hF16P34+Vj8T7ehfQXZDkPOLzLCrBq9lcf5JIUYF/NxbZQ5YJwsHo+zCMsZ0EuF74whqpSFo3OxBKtCIwdsBDavzBRKb8tmiWmL36VSb0OKjje1+cdQgVroHSoazS+IZZqRET2s/6gKT6wOIu8uQTT4DE4N+Ium8nR8FSRoDK0iFirttVQiNYE3VS8wvT52Eiy+bhVBYxQQ06EepkS0k7Ve66/+7V95mKT3NYVsmvLeAc32Nk7WkLl+xNCzX2lyqJyPyLs9Z+L3cp7dWmghMWbcpMUpRo6bt3gc11wQlwi6jCR7rhsd2nvZCXirfl3Aux4bsuz/ygLcYIGAW4AsjTInVPrYv2iXFzDW6ConjLhHtMecV70rNvYlDKKYbZhEQo+t5Zk8Gp8J4GiEC9Mu+yEVxCu7jC+rAHo76IVvPiU90mp88ODUDd3ekGIPRRrFI59ibSoGISRRAwhrGAxIaoZjQv+wkYG5n7qYtG/huHERyvlYHVTSiWlN0tjf3oTThJe19kQWxXRiy08O4wgpEixW/IxYIE1cy+piRbyVivqHuaXoJofwWD28tsVPXGCyY/WTuamnsIKCffmXr8pnoYAGlsnpVWs=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cmOWIBGnRiUAG17CbyOfutOK6edxIH3WABWYEdGFQD2tJ7nEdyULF/y8nGQZ?=
 =?us-ascii?Q?ftRBxnzWVivpfqY8EEu5NqIGjyod0gpwMbaUz31co5EdKx2CXj/9u3+CXqqd?=
 =?us-ascii?Q?isv3joIa3cBchqN5o2j5PHrJvahSvsYKTC95XbzMam/yO0CH2v1YL+empTl8?=
 =?us-ascii?Q?wcszk35xmhQXlvioOsyreLu3BbMZzdqFAiqDP5uzfwozLIkxETO1q2V1S9qR?=
 =?us-ascii?Q?UQ9n4gnCk8er5Zb7GXUpVHIfqF8a1NspwfRKLUq4U1J7mp3SS9V3Ab5AAnEY?=
 =?us-ascii?Q?rCUvwppMPVnbDRH3j+g+wc3NXcZTd+H9H1TWgz9d3czImoJMUqxPrsqD7y/I?=
 =?us-ascii?Q?HXzR8qoCZjNX/gEmuBMxarBg4sjekoXIcw5qhI1OJlw+yr6rolBVlv1m+zKV?=
 =?us-ascii?Q?XiClQap7QEvBH3qPwApmzybkS6hI8lgGT1w7kDg/3DgflVKQ1QHmFPyaQlfV?=
 =?us-ascii?Q?OdcaD4N2V4wqIvT8I4fM5s2vzHf8GjYltvf83x6a5PIhLaJeuLND4nJF5ec1?=
 =?us-ascii?Q?icpm0wAPnxJ/v398eOUarFXKdcPiDyOxVSICA4dACLyBd3sT4AtNEZt96+5G?=
 =?us-ascii?Q?bCR1a0qXxJL6+X2V7AAsyG15rDOHkrefQEdtRn0pP+w2OSHdmqiVAPmU5LPy?=
 =?us-ascii?Q?QxvYd7d7M8mGf1jpnOiyLaJhKmXh8p3WprKDro1qM+fcC2SfwukIc6olZESm?=
 =?us-ascii?Q?0yIUGNV1MtV4GMfmU968YP71IhmhOe6FQHFrrbBcePLTRpgZhOlYzHhbhPqo?=
 =?us-ascii?Q?Hi9aTnykLGB/yFWIzeNhiOqQvpSLLi2iL6BXOFUNq7456sbq0NH0J30HM7bC?=
 =?us-ascii?Q?ZFzirlY+4YnAqnom3GraXIv3i/ULUsTpzL4aMXUNTvi1aSdJSiQv8oG/Y0dO?=
 =?us-ascii?Q?YnO4fc9HPrnISZW4niJM5C82TQtSmpw8TFvpcM9iBh2Ap4QJwMuiRgdhIbUB?=
 =?us-ascii?Q?7L3JpGYWljah9dYOhOzfi96eIhnvMW+ta5T9dQB30g1kpb5IKDUVTQg4hCOS?=
 =?us-ascii?Q?f7tYCi8iw0Sml4wI036ij6cPzwvheAWV1wyvL7tBOg0oPSPh0L168hn+noQ1?=
 =?us-ascii?Q?g/iYqrzHDkL42tKwdmgEWW0oZKac3bh3DcPtk61JMLLCYwA9Tf1jGyczD74/?=
 =?us-ascii?Q?2EwirH/eixk7S6OZ8o0kBZ/5vzOcfA+xL89ECZJXaiNtFz9WCYMdNAbpVLn+?=
 =?us-ascii?Q?GTy8PdaIhlvZq3M6EocB1PepDGt201rYssOgG/U4hm8C9Q4kjXDX0aWcX2w?=
 =?us-ascii?Q?=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37e8943a-d3a4-46cc-fb73-08dbc32c78d5
X-MS-Exchange-CrossTenant-AuthSource: VI1P193MB0752.EURP193.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 09:46:38.0034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P193MB1672
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  l2nbperpage is log2(number of blks per page), and the minimum
 legal value should be 0,
 not negative. In the case of l2nbperpage being negative, 
 an error will occur when subsequently used as shift exponent. 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.89.98 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.89.98 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [juntong.deng[at]outlook.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qnFVm-0005IP-Qk
X-Mailman-Approved-At: Mon, 02 Oct 2023 13:02:29 +0000
Subject: [Jfs-discussion] [PATCH] fs/jfs: Add check for negative
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
Cc: jfs-discussion@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 syzbot+debee9ab7ae2b34b0307@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

l2nbperpage is log2(number of blks per page), and the minimum legal
value should be 0, not negative.

In the case of l2nbperpage being negative, an error will occur
when subsequently used as shift exponent.

Syzbot reported this bug:

UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:799:12
shift exponent -16777216 is negative

Signed-off-by: Juntong Deng <juntong.deng@outlook.com>
Reported-by: syzbot+debee9ab7ae2b34b0307@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=debee9ab7ae2b34b0307
---
 fs/jfs/jfs_dmap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 88afd108c2dd..3a1842348112 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -180,7 +180,8 @@ int dbMount(struct inode *ipbmap)
 	bmp->db_nfree = le64_to_cpu(dbmp_le->dn_nfree);
 
 	bmp->db_l2nbperpage = le32_to_cpu(dbmp_le->dn_l2nbperpage);
-	if (bmp->db_l2nbperpage > L2PSIZE - L2MINBLOCKSIZE) {
+	if (bmp->db_l2nbperpage > L2PSIZE - L2MINBLOCKSIZE ||
+		bmp->db_l2nbperpage < 0) {
 		err = -EINVAL;
 		goto err_release_metapage;
 	}
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
