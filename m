Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EBBC43A14
	for <lists+jfs-discussion@lfdr.de>; Sun, 09 Nov 2025 09:01:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tHRaBTwWXYrULDnsOIE8h/Kw2VZ204EV73BqyOfX8gM=; b=M0VwMIc5qGoMcdAetfDj68D7Z3
	YTvoV5z6uGsFARf4U1G0zF0yNlifQgn8Z1HPAcjAdICwrEJPYlqXzxqAU3WFBE+wGeMpemNr2tZMZ
	pvArgl0ws6/hxvr9BKiZYo1YMQ09oYygs8WFHBbDh9G3bozYlSvxlrV0fPM0mcx54LTU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vI0Mh-0000i8-BH;
	Sun, 09 Nov 2025 08:01:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=340844d838=yun.zhou@windriver.com>)
 id 1vI0Mf-0000i0-VL for jfs-discussion@lists.sourceforge.net;
 Sun, 09 Nov 2025 08:01:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hqKCmdP7zxwz+X23A5A9/L6yq/4SS8Ac005fbjv9X7Q=; b=EcxQKVRsPqDOXOIwWlLVyMX1l5
 IIGV889lzi2J/bQk4v2rkeQcSYRZgTTJIGUZJTDl1D3nmpFvZIjugnggwh4I2P8WHKZfzr6ghoWv9
 CVTuypaX4SJXYwJqN8dvaas77pO+HVVSruAX8tOETU4JwxH/Dhd9ovzEKLUXd2hJGz5o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hqKCmdP7zxwz+X23A5A9/L6yq/4SS8Ac005fbjv9X7Q=; b=c
 wVjBjzguARsmfJ4S/WxezlIsUYVgYssgB3+1W2JwYnx8yQzdbBjGOq8jQ5xpybb8Z3ACPjMIVsW85
 VmEn069nc3tOARP5rqepXouxIiA6ptY1THVdvKZWRhIugRv8vo7AwQn3JLPrWWnaoXcnO9Y/2kCA5
 PIn+PGIaWOdOd+KQ=;
Received: from mx0a-0064b401.pphosted.com ([205.220.166.238])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vI0Mf-0007jJ-H7 for jfs-discussion@lists.sourceforge.net;
 Sun, 09 Nov 2025 08:01:33 +0000
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5A97swWc2547971; Sun, 9 Nov 2025 00:01:17 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=cc:content-transfer-encoding:content-type:date:from
 :message-id:mime-version:subject:to; s=PPS06212021; bh=hqKCmdP7z
 xwz+X23A5A9/L6yq/4SS8Ac005fbjv9X7Q=; b=RHStroJO+RWipWU1eSEzHwsjN
 hT/oOvGZW9mLOBGJvyYHG+DNowTehyEDsZ9MM7qQGH5MgsnPxrPy2VUC9mu6kpVC
 UcF0Ahl68oMe52g2T0S8L7QFvA6StizYpbrzC74Ltd4Ox0Pf7CvHDsdoc1J4n5aL
 1FKpcydYV/K+wT6O1k4PtrObolKr3cwB1Y5itfQmxr+HRUrqozKAHVPRdF1HCSQP
 F+BHfdIwROZdzPjajn+FXaJik0X/bBCJ9iaWcW1PFz4bPzQ29ClYkHLSJxFZxMKu
 o6eKEUCrDyQYAc+EZ75Y+XUATBZHaUjqWLbcNZB+TpLj/c3BZHjpvwkLLG2lQ==
Received: from ala-exchng02.corp.ad.wrs.com ([128.224.246.37])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4aa68jgh5k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Sun, 09 Nov 2025 00:01:17 -0800 (PST)
Received: from ala-exchng01.corp.ad.wrs.com (10.11.224.121) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.61; Sun, 9 Nov 2025 00:01:16 -0800
Received: from pek-lpd-ccm3.wrs.com (10.11.232.110) by
 ala-exchng01.corp.ad.wrs.com (10.11.224.121) with Microsoft SMTP Server id
 15.1.2507.61 via Frontend Transport; Sun, 9 Nov 2025 00:01:14 -0800
To: <shaggy@kernel.org>, <akpm@linux-foundation.org>, <david@redhat.com>,
 <byungchul@sk.com>, <gregkh@linuxfoundation.org>,
 <yun.zhou@windriver.com>, <shivankg@amd.com>, <ssrane_b23@ee.vjti.ac.in>
Date: Sun, 9 Nov 2025 16:01:13 +0800
Message-ID: <20251109080113.236739-1-yun.zhou@windriver.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA5MDA2OSBTYWx0ZWRfX+nxJXFTVFzxm
 v1ZyFut3T0dND5GV4YayRuuERPa4UMMGzpRVZrfT5m7uq9MQRdONN6qJvpi/odhGWrNRsFmGpfa
 IzYneWhsVMpgoftBi27YSdxzwaZWqnjZJdH2+OqiVhzzp0yQ6BOt1ly/CrCQKr4EXto785h9JRr
 dpkmpZ0n1YP0ypn/SPO/rJ7IFdaElnKlcWUR1xm6oitAAU+t9NxrgU5HHxY+NiIrlypOlnJuEuy
 X52m3q8qzPkhEn6joCfjkzDnnIC12X+btJpD7jzV/Mcs4kALXHvMpWPFRgISNrQ0MLs5ISORliy
 eomPliTlTYtlF1PnIVfZllGMqQew1AuvDuDMX1VYTuIFKTiA1PIvlKafMI6DCBNBim7jl5Xo23H
 ivpqjs5bud9pEVqLXof6IF7mizMQlQ==
X-Proofpoint-GUID: BpCl5-HMoPr1VIw6Am6Gap3W_YUZkI7r
X-Proofpoint-ORIG-GUID: BpCl5-HMoPr1VIw6Am6Gap3W_YUZkI7r
X-Authority-Analysis: v=2.4 cv=ef0wvrEH c=1 sm=1 tr=0 ts=69104a4d cx=c_pps
 a=Lg6ja3A245NiLSnFpY5YKQ==:117 a=Lg6ja3A245NiLSnFpY5YKQ==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=hSkVLCK3AAAA:8 a=t7CeM3EgAAAA:8
 a=839DiVg-qJ3f83dBwJIA:9 a=cQPPKAXgyycSBL8etih5:22 a=FdTzh2GWekK77mhwV6Dw:22
 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-09_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 clxscore=1011 spamscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511090069
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This patch adds boundary checks for the dilinelock->index
 in the diWrite() function of JFS to prevent out-of-bounds access to the lv
 array. When dilinelock->index exceeds dilinelock->maxcnt, it calls [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: windriver.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.166.238 listed in wl.mailspike.net]
X-Headers-End: 1vI0Mf-0007jJ-H7
Subject: [Jfs-discussion] [PATCH] jfs: add linelock->index boundary check in
 diWrite
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
From: Yun Zhou via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Yun Zhou <yun.zhou@windriver.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

This patch adds boundary checks for the dilinelock->index in the
diWrite() function of JFS to prevent out-of-bounds access to the lv
array. When dilinelock->index exceeds dilinelock->maxcnt, it calls
txLinelock() to refresh the dilinelock structure, ensuring valid access
to dilinelock->lv[] during inode data writing.

Reported-by: syzbot+9489c9f9f3d437221ea2@syzkaller.appspotmail.com
Signed-off-by: Yun Zhou <yun.zhou@windriver.com>
---
 fs/jfs/jfs_imap.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index ecb8e05b8b84..7f93150d319f 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -762,6 +762,8 @@ int diWrite(tid_t tid, struct inode *ip)
 	 * copy inline symlink from in-memory inode to on-disk inode
 	 */
 	if (S_ISLNK(ip->i_mode) && ip->i_size < IDATASIZE) {
+		if (unlikely(dilinelock->index >= dilinelock->maxcnt))
+			dilinelock = txLinelock(dilinelock);
 		lv = & dilinelock->lv[dilinelock->index];
 		lv->offset = (dioffset + 2 * 128) >> L2INODESLOTSIZE;
 		lv->length = 2;
@@ -773,6 +775,8 @@ int diWrite(tid_t tid, struct inode *ip)
 	 * 128 byte slot granularity
 	 */
 	if (test_cflag(COMMIT_Inlineea, ip)) {
+		if (unlikely(dilinelock->index >= dilinelock->maxcnt))
+			dilinelock = txLinelock(dilinelock);
 		lv = & dilinelock->lv[dilinelock->index];
 		lv->offset = (dioffset + 3 * 128) >> L2INODESLOTSIZE;
 		lv->length = 1;
@@ -785,6 +789,8 @@ int diWrite(tid_t tid, struct inode *ip)
 	/*
 	 *	lock/copy inode base: 128 byte slot granularity
 	 */
+	if (unlikely(dilinelock->index >= dilinelock->maxcnt))
+		dilinelock = txLinelock(dilinelock);
 	lv = & dilinelock->lv[dilinelock->index];
 	lv->offset = dioffset >> L2INODESLOTSIZE;
 	copy_to_dinode(dp, ip);
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
