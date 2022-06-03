Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C9853CBAB
	for <lists+jfs-discussion@lfdr.de>; Fri,  3 Jun 2022 16:40:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nx8TZ-00007G-Lc; Fri, 03 Jun 2022 14:40:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nx8TY-000079-Nq
 for jfs-discussion@lists.sourceforge.net; Fri, 03 Jun 2022 14:40:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aUeh3TS7yGsWjasgaqZC24BFaRSUEZ62WTQKuLG/trQ=; b=B1r7uCtvKhuulJyob96W73bmtv
 wIWlD+3PPXi7IBxaHz83wshhv/x2gN2KL2dyb5oRv3GoIJY84VV7kAFw4bZxKrzbOuHpTy7nZmtMx
 i94CmhDijdNpi5yzLK59nLHSiCFisF4gX3gq2B4NIeNyYA7RIRlPJNrrcPs51DkPISH4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aUeh3TS7yGsWjasgaqZC24BFaRSUEZ62WTQKuLG/trQ=; b=W2wfZSDtoEX3slP38Krb0Ze8oW
 oDLttrm4SPSbMZCfISTV5yGnhsIFnvHsBEvap17N7ES3fntKJl9qIaH4w5Eb8gzV45M+rX3yD8u/G
 vA1jbfv/fWPOj7rElvKWAlb6XFGwAKx1AFmk+lBeadvES25DFtbwAnlZfQwy84ov7zvc=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nx8TV-0000Qf-Cc
 for jfs-discussion@lists.sourceforge.net; Fri, 03 Jun 2022 14:40:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=aUeh3TS7yGsWjasgaqZC24BFaRSUEZ62WTQKuLG/trQ=; b=Rqpqty5tCsq2jB3TvZzzfKJD4l
 pb5a7z5ruClsgoUHFfwNxqUKUN7YcBdi3NZa/hveC9iQzmuYkjH0B3pmL8lxBtYU0Q46iJTLOFAl6
 IKeRglu339/99NOmrlt8avDqhCgseACC1zojteE6QfkjcOU18GFeCnUJV2JPGRHNhlyGcNfs27K79
 K8dfWfy9vvXs7/clYWfepxLhev3B0XaWxE/DPMY6hIldB38pXsEtbm2AjBdQK1GigomlRu4+ahAQZ
 SyrgT37FNKsOkuzfHBbjQt8Gl2lPaqd+tJ4eivbFAuFBeSGZVbazqTxsocDxIyjLnxq+6TppM0hZ5
 Ql0o3aOw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nx8TF-007xAb-Kc; Fri, 03 Jun 2022 14:40:13 +0000
Date: Fri, 3 Jun 2022 15:40:13 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <YpodTd+YN/FtiaP3@casper.infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220526192910.357055-8-willy@infradead.org>
 <YpBlF2xbfL2yY98n@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YpBlF2xbfL2yY98n@infradead.org>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, May 26, 2022 at 10:43:51PM -0700, Christoph Hellwig
 wrote: > > static ssize_t jfs_quota_read(struct super_block *sb, int type,
 char *data, > > + size_t len, loff_t pos) > > And this whole help [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1nx8TV-0000Qf-Cc
Subject: [Jfs-discussion] generic_quota_read
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
Cc: linux-fsdevel@vger.kernel.org, "Darrick J . Wong" <djwong@kernel.org>,
 jfs-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, May 26, 2022 at 10:43:51PM -0700, Christoph Hellwig wrote:
> >  static ssize_t jfs_quota_read(struct super_block *sb, int type, char *data,
> > +			      size_t len, loff_t pos)
>
> And this whole helper is generic now.  It might be worth to move it
> into fs/quota/dquot.c as generic_quota_read.

I've been working on that this week.  Unfortunately, you have to convert
both quota_read and quota_write at the same time, it turns out.  At
least ext4_quota_write() uses the bdev's inode's page cache to back
the buffer_heads, so quota_read() and quota_write() are incoherent
with each other:

00017 gqr: mapping:00000000ee19acfb index:0x1 pos:0x1470 len:0x30
00017 4qw: mapping:000000007f9a811e index:0x18405 pos:0x1440 len:0x30

I don't know if there's a way around this.  Can't really use
read_mapping_folio() on the bdev's inode in generic_quota_read() -- the
blocks for a given page might be fragmented on disk.  I don't know
if there's a way to tell ext4_bread() to use the inode's page cache
instead of the bdev's.  And if we did that, would it even work as
being part of a transaction?



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
