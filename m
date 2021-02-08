Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E552313751
	for <lists+jfs-discussion@lfdr.de>; Mon,  8 Feb 2021 16:24:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l98Om-00074F-G6; Mon, 08 Feb 2021 15:24:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1l98Ol-000747-EP
 for jfs-discussion@lists.sourceforge.net; Mon, 08 Feb 2021 15:24:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h3WAS1yXgiJm+imXNuBpOM6GWsUUcpzF/yKJmLCwomo=; b=IeSKDwF58N5nTuR6Q8U7sf7lGY
 RgHTd6bu/H99VY7TUZcd23AGSeXrR26l+RtCCf/J9ABdVp9S/Eq6z3yU7aPYZ1KE7CayDrgZMhq2M
 FsAhHYiv+j0eSoD9dAOm1aO5XYIC3OFYwkIaUOQ0uKEOpI5kzxMQaGVMWrtLKOY4dOc8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=h3WAS1yXgiJm+imXNuBpOM6GWsUUcpzF/yKJmLCwomo=; b=E
 Zk3MA3XQqEc0TUZd5hGqzgemVQr6xbJZAIsKydBNd+81taj1KpCcNNviNkp1H3fLIXmR1DTHvJV0R
 Det7afd/zdAbBohXHCpAJ6psybN6i44kFcfPpkHYdULODXj17yl4KPouHLAcvYTL1xGBzgKMQMtMg
 ClipmcZiBwKgUlE0=;
Received: from aserp2130.oracle.com ([141.146.126.79])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l98Od-0005Bx-HW
 for jfs-discussion@lists.sourceforge.net; Mon, 08 Feb 2021 15:24:23 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 118F9v0t067703;
 Mon, 8 Feb 2021 15:24:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=corp-2020-01-29;
 bh=h3WAS1yXgiJm+imXNuBpOM6GWsUUcpzF/yKJmLCwomo=;
 b=jIrCJiYdpWe7ZGWnHaHUnRDh3ZuEkJrBbcZDb1alogNPbutkgtmLshJhJw+fZhPPOTdX
 FrfOnnB8kHIrL1IsMiKvPTGpqcPGdh3AlqIDcrncnBlneQEuzImwQ74UD0JJAVciSgyv
 zbFxCGjLG1VaRxbvuYb8q3X0fJktWJXPRXatmkQTHgjjwD1SizHn6vnXajtDzdMN8eBF
 PYY4CWI9h/f1DPLnNROuBSauDSdjlDaLZv37CRlHB67/l6joEwGafDN3Hh1WsBI2HEvK
 /laenXxfZ/b1KsG4x+46vDX3MO74q4OmWAZ9yDCo7RoD3SptCJmgJPVlRIIHmwFi7IbO JA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 36hgmacbxn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 08 Feb 2021 15:24:04 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 118F9twH153309;
 Mon, 8 Feb 2021 15:24:04 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
 by aserp3030.oracle.com with ESMTP id 36j4pmf6w4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 08 Feb 2021 15:24:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c3RXWM5dGK3S1youJ/8qPOngZNWfCbGAfgGIvfIzXtuKwKmXeGAk1IyUgn9HxYc2t4fJImhzTaGCer2cJLBunceppHu5PhhcLxHbqEKV2q4/QbSBagev8isAC/NsxKkcgVJ7ay8qlU1eetEv5HE6zqXg/9zSRazDt37avbwOzfoWHEIjfpXBpu0nqxQn+1D8ij2dX5sxnwbQwEWCS/fyOE9dIBvuwcEGfOJQlhgp0PfH1QDjdjOprqnZWziO27sRb8e1vnK7hvXpOnU+2wkJbBo7BQPnyciqm1H6963k3i4nyDTrY56aRRVqxIAii4WUN48yDOw8ao4X1fsHuoHWQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h3WAS1yXgiJm+imXNuBpOM6GWsUUcpzF/yKJmLCwomo=;
 b=gkvoK8KmuQxdyEeZshEs+m1CXEze3Ly6zxsCxatf2oKpSLQvYp/mXhBzLmP4w1xZdT26Na7YYhRrQ0RPdiPqSlCN7ltEtLR4IixZdwgIgK2pGm97MxGOorhpBhK6mAEF817beQRF4LX2tQGldddaal0ZEjgst/SOCTE1ef9QPlqzi2KAuE1wJHwLgsEymKR67WofhJoXVHCHYiXRpm08gIUqIjdlj16/v9ZJnxG3YMifXSIjbdw3JWrEovj1RjNP07n9wpXPe5uKZzxrG5FKg0e5c3BW0NlClCVdyyNesVOD8SvvPlcH6X8fh6ZKl77DucyiEw48A/WJcgEp9ILqyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h3WAS1yXgiJm+imXNuBpOM6GWsUUcpzF/yKJmLCwomo=;
 b=ticWqCeqSRoJ77duM3RU8nIM7eBhnNxRjnDTnNG7GFbiRz8QftlffvrDp9unt+slC4dJKENbsNjdLB9Ifms2USOKkgfvnwSApuVr4cySqvmrDjUG0R+GXh8uy2h+FjX5y5uShkev2Vwub/vQWYn/uZgeNZ26563MM/NoglY8Sb8=
Authentication-Results: linux.alibaba.com; dkim=none (message not signed)
 header.d=none;linux.alibaba.com; dmarc=none action=none
 header.from=oracle.com;
Received: from CH2PR10MB4118.namprd10.prod.outlook.com (2603:10b6:610:a4::8)
 by CH2PR10MB4005.namprd10.prod.outlook.com (2603:10b6:610:f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.30; Mon, 8 Feb
 2021 15:24:02 +0000
Received: from CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::b4f8:316f:3a25:faac]) by CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::b4f8:316f:3a25:faac%7]) with mapi id 15.20.3825.030; Mon, 8 Feb 2021
 15:24:01 +0000
From: Dave Kleikamp <dave.kleikamp@oracle.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Date: Mon,  8 Feb 2021 09:23:54 -0600
Message-Id: <20210208152354.880319-1-dave.kleikamp@oracle.com>
X-Mailer: git-send-email 2.30.0
X-Originating-IP: [68.201.65.98]
X-ClientProxiedBy: SA0PR13CA0027.namprd13.prod.outlook.com
 (2603:10b6:806:130::32) To CH2PR10MB4118.namprd10.prod.outlook.com
 (2603:10b6:610:a4::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from shaggy-t450.localdomain (68.201.65.98) by
 SA0PR13CA0027.namprd13.prod.outlook.com (2603:10b6:806:130::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.11 via Frontend
 Transport; Mon, 8 Feb 2021 15:24:01 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d8ea4b79-d101-42ea-fb9f-08d8cc459013
X-MS-TrafficTypeDiagnostic: CH2PR10MB4005:
X-Microsoft-Antispam-PRVS: <CH2PR10MB40057D26B300B955BFB5E023878F9@CH2PR10MB4005.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:923;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Hg60qxJLxsKjGPC7W94Yc5xCDiTHLHD0QWvDWIeMDJADdzQdfV4Wut7en1z55X4gC+kYuQwpaIggcyTWpnxDy5rm/NYaoMp/ALrQRtdBFMZfrn8Y7tHz7nn3w3F/noyhhfHDEQgkWfqIfA7j+1TY8zHf4fue+gR/sKBMDEXBA92G4SzMjyW7kCuzz2oj0ygqsQxc6aGad4eoVUdLiR7OOeszj+00MyPegZtluafrV+uVc7fEZzVjMe4PYa6IdDxLyU3MpXU6SZrwwEeKMOSrByFaZssedyp/B2dvBBqUqmOyZqde4CTdfWQk/vVpiqtyc9ZEjfRrEeg8V+TFSTMIFT6REo/6fLY+ryY9KZbl08QvwcQsbiRg6fZrtjIZvIdGXuzG8UC5P9u4+yduXEQ40PAUfffA4nPvVC6PGwmdAT7jjGIU19YQVi4mHn9io1xRfFEwTjghwBeEIplrkUOuXXY4nnvi4Io0bk4uO1lgOPtwjAKrlQ2Gd91dYHEjNK/MdRlqj3QjbXIzGP/ZkwBXgg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR10MB4118.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39860400002)(346002)(396003)(366004)(136003)(8936002)(52116002)(66556008)(66476007)(6666004)(6512007)(66946007)(4326008)(2616005)(86362001)(5660300002)(83380400001)(6506007)(1076003)(44832011)(16526019)(2906002)(186003)(26005)(956004)(6486002)(36756003)(478600001)(6916009)(8676002)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?FEl3IhN9yQX00cJSpR4m8WEOdeSoxdX1WSy767djiRhh0dCrpsqjtCpuT7Df?=
 =?us-ascii?Q?PzQYPOrmL1yE2wgdNapNt/gH9kHdNrv8RCAVv8eRUh9psUycTxNg5oOYOH/8?=
 =?us-ascii?Q?RyWYMPqxXwiZtpapPt0bEM2Esd7zQVs+YBuM2wKwiFNRRrRBcZJBz266dbS/?=
 =?us-ascii?Q?qkyiSpejkvqf+nnr9G7qipPe0yF5UmITphcBlkF1zICeEH5cuID+VB6jtInE?=
 =?us-ascii?Q?4vPAzICDB7CUGXFC/BCbDzKGbR6M7BmE3qg61CuyA8KeU6bXYiCdaQfVibeQ?=
 =?us-ascii?Q?rYLWDG0kMytybwU/cIPLFdk/aotaUkJcguCjAiX/Uf+N9iCOCcbmb4JDsXu9?=
 =?us-ascii?Q?XHWVrRawVEAdUDRZg5dy2wUxWhDKRVUEtD0OokC5Q6PNbvYorgLpHZUWYbjz?=
 =?us-ascii?Q?i48M3q83moNhIA9p1aoIgyEc0BXcOWoSnOgKFPR/MaA7AnU+HudXIRIi7+Z+?=
 =?us-ascii?Q?gB3HqjPSGJblGo2l0Eis56CBLgCfG3+ezOgE8j/7J6Ct9pB4azsnCbb07xVt?=
 =?us-ascii?Q?vi0+VbGiouaVwauqQzx7USomiUaP9mlZrjK6ABY4dDIPXnAE6JeVdzzVM8WL?=
 =?us-ascii?Q?hAEy0xPqAbM917oS7RpoOfzh9ErTYuBZVOBl+b83j7QHpUAkcyjrI4IS/+tw?=
 =?us-ascii?Q?lfpBUsWGteQHy5pc3H/Cs+JWCurY+fbOsvx9EIf5QGC5bxJ8N6x1HwCPOpoU?=
 =?us-ascii?Q?NDmfW23+co+SlkAhfagJLr4r/fS3nfdkUgrGTDbCaWZNYDJSEvIvvHDHUftZ?=
 =?us-ascii?Q?MxS9r1SECiS2FPmmrDSV64NdJNcr4cfJfk+i+qkR0jqwpeTZ/IoBUV2r0YPv?=
 =?us-ascii?Q?wtunD3KqcBLVasE4RY16MtmEK5nUF6EtEueV0oKTxzwfk8JC8bD+iUpoxGed?=
 =?us-ascii?Q?EAXLZjf/ibxc2X0rdODwce2VXR7Ln+BbvfNqmqGwvAecyMSpKhxx7tWlCgOM?=
 =?us-ascii?Q?NFqJdz6q44NGM2PE6r6qFFxqBactQDCjMyhQDq/aCgQM3S7MQ7mBL7ATUDEI?=
 =?us-ascii?Q?sSlXSNwOZXeGD71Tqwp7S2hWpdkFCnhbAN+Chtm/sQCNCu3dBg3iFHDzijGu?=
 =?us-ascii?Q?s6RnHfiwZ07aPDqU8VjB4jr61nVt/XNB4nDGhKb7Lgem4MFTvketktCBAAg3?=
 =?us-ascii?Q?vdOS5OqzAa8DZQfs9f0W6hsOWL4uKfHl/sDdqy8UZ33bZaDdbNKec2733E/p?=
 =?us-ascii?Q?Rrt6coYvmzPN4un/bz8G8AcNy/rpgUEctvEZ870GmiUiisC3QLM1/T9fLRz4?=
 =?us-ascii?Q?lu/Di+oiE592UK1PGYD64ewXlw+PgrkftKzaPd4Q5ioUQGAfsD8tAniFpVxl?=
 =?us-ascii?Q?bSQCrIWJCUyUne64K+4ZR/Gk?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8ea4b79-d101-42ea-fb9f-08d8cc459013
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4118.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2021 15:24:01.6735 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5AhFfzGHHCfQxiQH0O5FKdNHxv8ltuTwwohS18kbNZPHaM6Tp8+Z8Qs6A4wHsRZ6WjSjwYBbQhmThGvONnxUmoG0XumZPpGcbOYm9p0kEt0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4005
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9888
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0
 mlxlogscore=941 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102080104
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9888
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0
 suspectscore=0 mlxscore=0 clxscore=1015 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102080104
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1l98Od-0005Bx-HW
Subject: [Jfs-discussion] [PATCH v3] jfs: turn diLog(),
 dataLog() and txLog() into void functions
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Yang Li <yang.lee@linux.alibaba.com>

These functions always return '0' and no callers use the return value.
So make it a void function.

This eliminates the following coccicheck warning:
./fs/jfs/jfs_txnmgr.c:1365:5-7: Unneeded variable: "rc". Return "0" on
line 1414
./fs/jfs/jfs_txnmgr.c:1422:5-7: Unneeded variable: "rc". Return "0" on
line 1527

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
---

Changes in v3
- don't check return value of txLog() in txCommit() (Dave Kleikamp)

Changes in v2
-turn functions forward references to void type.

 fs/jfs/jfs_txnmgr.c | 35 ++++++++++++++++-------------------
 1 file changed, 16 insertions(+), 19 deletions(-)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index dca8edd2378c..053295cd7bc6 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -148,10 +148,10 @@ static struct {
 /*
  * forward references
  */
-static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
-		struct tlock * tlck, struct commit * cd);
-static int dataLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
-		struct tlock * tlck);
+static void diLog(struct jfs_log *log, struct tblock *tblk, struct lrd *lrd,
+		struct tlock *tlck, struct commit *cd);
+static void dataLog(struct jfs_log *log, struct tblock *tblk, struct lrd *lrd,
+		struct tlock *tlck);
 static void dtLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 		struct tlock * tlck);
 static void mapLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
@@ -159,8 +159,8 @@ static void mapLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 static void txAllocPMap(struct inode *ip, struct maplock * maplock,
 		struct tblock * tblk);
 static void txForce(struct tblock * tblk);
-static int txLog(struct jfs_log * log, struct tblock * tblk,
-		struct commit * cd);
+static void txLog(struct jfs_log *log, struct tblock *tblk,
+		struct commit *cd);
 static void txUpdateMap(struct tblock * tblk);
 static void txRelease(struct tblock * tblk);
 static void xtLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
@@ -1256,8 +1256,7 @@ int txCommit(tid_t tid,		/* transaction identifier */
 	 *
 	 * txUpdateMap() resets XAD_NEW in XAD.
 	 */
-	if ((rc = txLog(log, tblk, &cd)))
-		goto TheEnd;
+	txLog(log, tblk, &cd);
 
 	/*
 	 * Ensure that inode isn't reused before
@@ -1365,9 +1364,8 @@ int txCommit(tid_t tid,		/* transaction identifier */
  *
  * RETURN :
  */
-static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
+static void txLog(struct jfs_log *log, struct tblock *tblk, struct commit *cd)
 {
-	int rc = 0;
 	struct inode *ip;
 	lid_t lid;
 	struct tlock *tlck;
@@ -1414,7 +1412,7 @@ static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
 		}
 	}
 
-	return rc;
+	return;
 }
 
 /*
@@ -1422,10 +1420,9 @@ static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
  *
  * function:	log inode tlock and format maplock to update bmap;
  */
-static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
-		 struct tlock * tlck, struct commit * cd)
+static void diLog(struct jfs_log *log, struct tblock *tblk, struct lrd *lrd,
+		 struct tlock *tlck, struct commit *cd)
 {
-	int rc = 0;
 	struct metapage *mp;
 	pxd_t *pxd;
 	struct pxd_lock *pxdlock;
@@ -1527,7 +1524,7 @@ static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 	}
 #endif				/* _JFS_WIP */
 
-	return rc;
+	return;
 }
 
 /*
@@ -1535,8 +1532,8 @@ static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
  *
  * function:	log data tlock
  */
-static int dataLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
-	    struct tlock * tlck)
+static void dataLog(struct jfs_log *log, struct tblock *tblk, struct lrd *lrd,
+	    struct tlock *tlck)
 {
 	struct metapage *mp;
 	pxd_t *pxd;
@@ -1562,7 +1559,7 @@ static int dataLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 		metapage_homeok(mp);
 		discard_metapage(mp);
 		tlck->mp = NULL;
-		return 0;
+		return;
 	}
 
 	PXDaddress(pxd, mp->index);
@@ -1573,7 +1570,7 @@ static int dataLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 	/* mark page as homeward bound */
 	tlck->flag |= tlckWRITEPAGE;
 
-	return 0;
+	return;
 }
 
 /*
-- 
2.30.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
