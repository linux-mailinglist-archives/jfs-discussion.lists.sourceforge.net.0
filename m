Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AA26D0255
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 13:00:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phq0x-0004ZO-FB;
	Thu, 30 Mar 2023 11:00:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=johannes.thumshirn@wdc.com>)
 id 1phq0w-0004Yt-Jo for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:00:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8xturZmyswgVjBaYoCYw3BEHPK427U7V7Y+R3cQKPzc=; b=M3eobBR39KRk4RrQAoKu2WlbLJ
 qmYlME4PwydKF2yTleE/Mn8mMDMlEacPYbfBkxXfXIAS34lcHQJsD8WiMY2Kzwy5obWTw9RbFE2uc
 yXX1uc8xVDmvqxIK3fwI6xqdiPmGZbjiMnAWfiNtBdXXZL6DawQHw6OamMcjMx3THP+g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8xturZmyswgVjBaYoCYw3BEHPK427U7V7Y+R3cQKPzc=; b=IiskPP7T020YGeE8P3/9sXhLTp
 HMdOAsxa2v6px9D9D9jbdu5MZKWWtmHCbKyWfgJuRa5NMxi+4gq0uKNf1Ga1aObDMDhTlIfquIzpy
 srE47b293Fyrcag28wwIRzYWzH7HycUHckI10ugSTOPerH7BT0d5H4JH0yLoy7NdQE4Y=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phq0v-0007Uu-6a for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:00:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680174016; x=1711710016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WuVso3FIWpTS9t16blIu0lxfhGfBw7QOq0E/ZSZkofY=;
 b=HINcSrkQ4JNIxivzXzAP51YWZrWEfTRCJxhsNQdKGkLPooS9pKwHdoL/
 rNDb0sVEMjEzobwVPJo5xQEhI+HmwvF7QISPR96eLck97RuHQRvy0PBVD
 ojZLoYZvbNswoK60KUkOOAnPr3pz+7ig6+8w8GO3/rfkWvEZE7JiRZ+D3
 udMk11QV/u1fYvC2t3tkshF1+oQxNVYWUSCpuIoQkseMZbRnU4RSyggo+
 nM1Kn8rlQYYsj20TlZzvjXDZKlM//nDGezV0eoiWr6J0omdQ/+lXVtzt6
 pcOB70yi1aVGAZmHyjZ1FP/zM4Ig8fZPEGsRYF9edTbM9XnQbKW8dJu1h A==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="338948178"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:44:50 +0800
IronPort-SDR: GvrNz2JRJ0MYEpxVg1dStOUUiiKOauh2bZaeL/ajlIrX2GJuCeC8KfMK2dHv24Kv1uTdvJLP7v
 j7P/D+U9RcdAiVoD8f9gPaxnzjeTHKhoWu4eVc5t8ljv2k5uPN0BSqWcf+kWxBWKAVoO5hj+EA
 WlyoxkTIg8Kq0Ru46LPD5b843XsdSDtWPIDkYhi0DZTMUggETUxHS8+TtHTi/17yB0BGb4ggTv
 fMMsZDl09wnI0qtQCbqGL8uI0LPUiAAGTsnYh5hI5pMTM2Akx5O9NFyh2Mcmdkj2aGPB9r17v1
 78k=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Mar 2023 03:00:58 -0700
IronPort-SDR: xbv9CWFcSC1Bzpr8BamikP+86dncbp6oACJBXmhmSmN1KLO1tjzjSUny6VIcaXoUQyq5sWcuL0
 lQBuIK9Qs8v6PE4kuNsKWptmdAB94A57UA5HBiwUoF/UZUfY5X3vAWQoHSh0h+S/n670fLweqX
 xwW8OqqSonBv72abzryYNSV2io841vwnNZJ8IY+0p5wqBENYMfSLK+JpFOg4uVtqcWWbcuN9UN
 kEpt44p6/oIeo1ie9PLw+xd46a5i05H2OEhI1oKUgM+t3BiQfepTKLv5GkNzpVe2yAChE6w07e
 +JY=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Mar 2023 03:44:48 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 30 Mar 2023 03:43:57 -0700
Message-Id: <07ae41b981f1b5f8de80a3f0a8ab2f34034077a6.1680172791.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680172791.git.johannes.thumshirn@wdc.com>
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  alloc_behind_master_bio() can possibly add multiple pages
 to a bio, but it is not checking for the return value of bio_add_page() if
 adding really succeeded. Check if the page adding succeeded and if not bail
 out. Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1phq0v-0007Uu-6a
Subject: [Jfs-discussion] [PATCH v2 15/19] md: check for failure when adding
 pages in alloc_behind_master_bio
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
From: Johannes Thumshirn via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Song Liu <song@kernel.org>, dm-devel@redhat.com,
 Christoph Hellwig <hch@lst.de>, Andreas Gruenbacher <agruenba@redhat.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Matthew Wilcox <willy@infradead.org>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Mike Snitzer <snitzer@kernel.org>,
 Ming Lei <ming.lei@redhat.com>, linux-raid@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>, Hannes Reinecke <hare@suse.de>,
 David Sterba <dsterba@suse.com>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, linux-mm@kvack.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

alloc_behind_master_bio() can possibly add multiple pages to a bio, but it
is not checking for the return value of bio_add_page() if adding really
succeeded.

Check if the page adding succeeded and if not bail out.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/md/raid1.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/md/raid1.c b/drivers/md/raid1.c
index 68a9e2d9985b..bd7c339a84a1 100644
--- a/drivers/md/raid1.c
+++ b/drivers/md/raid1.c
@@ -1147,7 +1147,8 @@ static void alloc_behind_master_bio(struct r1bio *r1_bio,
 		if (unlikely(!page))
 			goto free_pages;
 
-		bio_add_page(behind_bio, page, len, 0);
+		if (!bio_add_page(behind_bio, page, len, 0))
+			goto free_pages;
 
 		size -= len;
 		i++;
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
