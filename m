Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6E0A97BB4
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Apr 2025 02:38:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7O7O-0000CZ-VQ;
	Wed, 23 Apr 2025 00:37:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1u7O6o-00008c-3n
 for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 00:37:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=opbjpmtV+QjU6K14eXPT731fTnozvdVx1b0MGih+sWU=; b=cYDX4GBGpFcpCb7khwR5S6GCF2
 PSzP/PHsiqTSUu6+xQBzPQBGdnbYVBOOEI3PxCdO/NfjHmyo4IEa+Nesu+Lp3+O0dPX0ppQN0s/21
 JUBmdu1FnKyKAm3mdhxm4fApmEZCSM1vTW6GhK7wqZiZ3W5AzI3FSyHrj8pPe5deHSlE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=opbjpmtV+QjU6K14eXPT731fTnozvdVx1b0MGih+sWU=; b=Pc+6UIPKPea4LBnBRFdjgQnJ5j
 Q8LOaqPjexlY5oBIX1A9WUaV6QkEkVzWu/GdxbarmR8VHcTKBpFR/oGMZpcfModuUalwZok5971zW
 VnYUQAfNzR0IekyoNG1rixrdZtQZf+IiW1UT9BUUvXmoNbPvT8hokH3BFof1scH1N5CQ=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u7O6N-0007kK-BF for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 00:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=opbjpmtV+QjU6K14eXPT731fTnozvdVx1b0MGih+sWU=; b=mtvA48MwYQ/XQaE9ry9JNzBTgo
 O8ZFwpYn+gJZ/A6oY7W7xqeAMlnkR8JCMkMLBpFPouTT01y1oUoNAQMcvcvfforxd0FbWO6iDW1by
 QzdXGkLb2xfAPK6MHDPuWvYJvk3yFibK9A07nIRj2+ESe6vdFReaV6FcGh2lWxvlulLQX5fBvdkPA
 UtAV0iE8Y47ka+e3ej+M5j31EHFSCt8s1CAdqVwODgI51Ff2kbhYIBjOxCKb79LQInZ/Kd8/F/D+m
 WBCAJfRLmQhFLc0PHVKWcwonFtmqzAMb2bYjUUFttAsuJoDe91rP1Y8/xzGDOqV794UdDQMemX/NZ
 xkDD6RDQ==;
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1u7O5z-00000006Uw5-0YtJ;
 Wed, 23 Apr 2025 00:36:11 +0000
Date: Wed, 23 Apr 2025 01:36:10 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <aAg1-hZ0a-44WW6b@casper.infradead.org>
References: <20250422114000.15003-1-shivankg@amd.com>
 <20250422114000.15003-2-shivankg@amd.com>
 <20250422164111.f5d3f0756ad94d012180ece5@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250422164111.f5d3f0756ad94d012180ece5@linux-foundation.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 22, 2025 at 04:41:11PM -0700,
 Andrew Morton wrote:
 > > +/** > > + * folio_migrate_expected_refs - Count expected references
 for an unmapped folio. > > "folio_migration_expected_refs" Please run make
 W=1 fs/jfs/ in order to run kernel-doc on this file. It'll flag this kind
 of error. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [90.155.50.34 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [90.155.50.34 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1u7O6N-0007kK-BF
Subject: Re: [Jfs-discussion] [PATCH V4 1/2] mm: add
 folio_migration_expected_refs() as inline function
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
Cc: Shivank Garg <shivankg@amd.com>, shaggy@kernel.org,
 wangkefeng.wang@huawei.com, david@redhat.com, jane.chu@oracle.com,
 apopple@nvidia.com, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com, donettom@linux.ibm.com,
 ziy@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Apr 22, 2025 at 04:41:11PM -0700, Andrew Morton wrote:
> > +/**
> > + * folio_migrate_expected_refs - Count expected references for an unmapped folio.
> 
> "folio_migration_expected_refs"

Please run make W=1 fs/jfs/ in order to run kernel-doc on this file.
It'll flag this kind of error.

> It's concerning that one particular filesystem needs this - one
> suspects that it is doing something wrong, or that the present API
> offerings were misdesigned.  It would be helpful if the changelogs were
> to explain what is special about JFS.

It doesn't surprise me at all.  Almost no filesystem implements its own
migrate_folio operation.  Without going into too much detail, almost
all filesystems can use filemap_migrate_folio(), buffer_migrate_folio()
or buffer_migrate_folio_norefs().  So this is not an indication that
jfs is doing anything wrong (except maybe it's misdesigned in that the
per-folio metadata caches the address of the folio, but changing that
seems very much too much work to ask someone to do).

What I do wonder is whether we want to have such a specialised
function existing.  We have can_split_folio() in huge_memory.c
which is somewhat more comprehensive and doesn't require the folio to be
unmapped first.

I currently lack the capacity to write pseudo-code illustrating what I
mean, but I'll have a try tomorrow.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
