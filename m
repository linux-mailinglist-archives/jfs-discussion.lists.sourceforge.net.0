Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 589A5AA5E97
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 May 2025 14:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZlbJGNTQq1OJ4J7XlqzXTS5R2hA3i2ty3PRirfq0kHY=; b=MChQvhj3MvVCdaIvFqyrQkqjFp
	2WicDhJan1mBOovFBHrXjY+sXnP7ygfwriHX1na9I6I62cLBLJzY0bft6Xf0c8WiTq/yyOeNhB5as
	p/WAFJEmosJLv8VDYXBtTPxICQ7mnXumaTpVkFR6UJBf8uj9hzSAGazmyB3BstvEXxdk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uATBD-0004wt-8K;
	Thu, 01 May 2025 12:38:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1uATBA-0004wk-VG
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 May 2025 12:38:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RFLqDtj9WCiupbjGiNWaG8bfOzw+8VuthN4hxWe4ohQ=; b=LsN/I3tU/exXtHlmQMpIwfBC7u
 dGpu0YfbG86E9T8mMpnyxiJsgHMiJPNgvqPxy4ie9k4CkyisxgdkPQL1GADkjA4/XedXZDA1z3Wbl
 sV+OZ5cbNcjsN1y0D4XqnNIeAq1urw5ZG8rDhiNgyCP1PN0Pe71l2H78ka6A/iGPPW8Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RFLqDtj9WCiupbjGiNWaG8bfOzw+8VuthN4hxWe4ohQ=; b=DigywI9wfSmihq2b5iCFvVngyA
 jom0UoyXUfKKiQch2/edWqVEhh/1pkLXlIokDGzPGs/oC3ei37uUbC3on/MD6bceaFkK+5ZB6kzUi
 Wo/1SQLGKs4YBsBndBFWIuDwpV8bmv2eX0DMtdMP6qlBIHvYQ5JN9fV1KMobetdm9OYA=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uATAu-0003pS-AF for jfs-discussion@lists.sourceforge.net;
 Thu, 01 May 2025 12:38:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=RFLqDtj9WCiupbjGiNWaG8bfOzw+8VuthN4hxWe4ohQ=; b=MFYKE2Cy1elX/LO4cC4GfixDVb
 OlHXACoCCTjMoHcesJOM8eF3EJzCk0A15yU10fk15ENOtzDU/tUru352e6GF7m/3pjUtGvpXH7UQk
 zL/nTr8eE4H/+HOTVMlhdHeYzrzsPbm9Hmp2jvyzfbfJMln6I7VCy8DCyBK00UZxdK76E/tYl4gyU
 S9Al7vkK9bi6hMQWMQJ1FDy0MX9YV8vwADfONwGE+yv9pxe3qp/CRTRZ7InEKRqB/U2+akWw++7DU
 N48LvKM8REOwZSCb4jN6fzXukEHN1dcYiJhvqUqKL25R9o8FXuVia7S2TF3SnKmnDMFVf2e4+aOjy
 Ys4XltNw==;
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1uATAX-00000000BZe-21Y2;
 Thu, 01 May 2025 12:37:37 +0000
Date: Thu, 1 May 2025 13:37:37 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <aBNrEbVkpLHkK7eF@casper.infradead.org>
References: <20250430100150.279751-1-shivankg@amd.com>
 <20250430142135.099ecfa33963f0895b0f2c1d@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250430142135.099ecfa33963f0895b0f2c1d@linux-foundation.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 30, 2025 at 02:21:35PM -0700,
 Andrew Morton wrote:
 > On Wed, 30 Apr 2025 10:01:49 +0000 Shivank Garg <shivankg@amd.com> wrote:
 > > This patch addresses a warning that occurs during memory [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [90.155.50.34 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [90.155.50.34 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [90.155.50.34 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1uATAu-0003pS-AF
Subject: Re: [Jfs-discussion] [PATCH V5 0/2] JFS: Implement migrate_folio
 for jfs_metapage_aops
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

On Wed, Apr 30, 2025 at 02:21:35PM -0700, Andrew Morton wrote:
> On Wed, 30 Apr 2025 10:01:49 +0000 Shivank Garg <shivankg@amd.com> wrote:
> > This patch addresses a warning that occurs during memory compaction due
> > to JFS's missing migrate_folio operation. The warning was introduced by
> > commit 7ee3647243e5 ("migrate: Remove call to ->writepage") which added
> > explicit warnings when filesystem don't implement migrate_folio.
> 
> Do we think these patches should be backported into -stable kernels?
> 
> Or maybe we should simply remove the warning from -stable kernels then
> re-add it when we're confident that all in-tree filesystems are good?

7ee3647243e5 is not yet in Linus' tree, let alone in -stable.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
