Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B181853E15C
	for <lists+jfs-discussion@lfdr.de>; Mon,  6 Jun 2022 09:38:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ny7JB-0008JV-PH; Mon, 06 Jun 2022 07:37:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jack@suse.cz>) id 1ny7J8-0008JP-Uz
 for jfs-discussion@lists.sourceforge.net; Mon, 06 Jun 2022 07:37:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nyo7mFRwTaKeHK83OFLmqqb5+OhN6a5HfrVNoOD8vPU=; b=nCw04M8kT5oM3FJLFqYRf/+HAP
 rOHxVJKcqeFg0nhrk6pPE7aCvRii8UzXO5Hwq6+bhd5lpnqrED4cFlT237dLkhhakJzclmCnYMccV
 V6T7MUG+iAKX2ITsTTQE7jG1VldMOZQF/06+ei57B6KHqKjpsHKfLSUZ4uCJvm668OjE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nyo7mFRwTaKeHK83OFLmqqb5+OhN6a5HfrVNoOD8vPU=; b=Zg18ZmzPK6qE3zeViROwNaQ5LI
 3r4Zq6K8h/+JlKPc/1Z8CtieMZCPc5BP7MigHWhrYmvYXrAMcF6G5ypAQpy526plUEM/YO9By4+rY
 GycYTpYZRny07iO60xfOmm1nHM2K8bDRRlM3XrHmZ1mCOdCcubT1A/mHahzMki+AQrEs=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1ny7J5-0004ur-9w
 for jfs-discussion@lists.sourceforge.net; Mon, 06 Jun 2022 07:37:49 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 1C1831F390;
 Mon,  6 Jun 2022 07:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1654501059; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Nyo7mFRwTaKeHK83OFLmqqb5+OhN6a5HfrVNoOD8vPU=;
 b=0tkSIz0QzZosMinaVpAHB3cIiMl5/bzKZOHXNwCLyQrkOvkBjLmIqijqxT+XIuuYF5OEhG
 GqhbgtZ0mQoQWRdvkUQ/m8uBQrHAuHhIoBaI6WCFmp7JMbcKFeJ2K5n8wFEepm2YRsUU3A
 7/6d9avqElVwR5864Al8rRJ2H6gwMeI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1654501059;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Nyo7mFRwTaKeHK83OFLmqqb5+OhN6a5HfrVNoOD8vPU=;
 b=jKZsMXv59W2p3fdsVKC+QF6V78vcNcCodArofFlXUfJ/DqBou78NivzpqYviBeIeBfYDnP
 pTce7kKzx4KNTmCA==
Received: from quack3.suse.cz (unknown [10.163.28.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 071AC2C141;
 Mon,  6 Jun 2022 07:37:38 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id B4CD4A0633; Mon,  6 Jun 2022 09:37:38 +0200 (CEST)
Date: Mon, 6 Jun 2022 09:37:38 +0200
From: Jan Kara <jack@suse.cz>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20220606073738.oqcdn4hxl5jpkntr@quack3.lan>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220526192910.357055-8-willy@infradead.org>
 <YpBlF2xbfL2yY98n@infradead.org>
 <YpodTd+YN/FtiaP3@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YpodTd+YN/FtiaP3@casper.infradead.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri 03-06-22 15:40:13, Matthew Wilcox wrote: > On Thu,
 May 26, 2022 at 10:43:51PM -0700, Christoph Hellwig wrote: > > > static ssize_t
 jfs_quota_read(struct super_block *sb, int type, char *data, > [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ny7J5-0004ur-9w
Subject: Re: [Jfs-discussion] generic_quota_read
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
Cc: jfs-discussion@lists.sourceforge.net,
 "Darrick J . Wong" <djwong@kernel.org>, Christoph Hellwig <hch@infradead.org>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri 03-06-22 15:40:13, Matthew Wilcox wrote:
> On Thu, May 26, 2022 at 10:43:51PM -0700, Christoph Hellwig wrote:
> > >  static ssize_t jfs_quota_read(struct super_block *sb, int type, char *data,
> > > +			      size_t len, loff_t pos)
> >
> > And this whole helper is generic now.  It might be worth to move it
> > into fs/quota/dquot.c as generic_quota_read.
> 
> I've been working on that this week.  Unfortunately, you have to convert
> both quota_read and quota_write at the same time, it turns out.  At
> least ext4_quota_write() uses the bdev's inode's page cache to back
> the buffer_heads, so quota_read() and quota_write() are incoherent
> with each other:
> 
> 00017 gqr: mapping:00000000ee19acfb index:0x1 pos:0x1470 len:0x30
> 00017 4qw: mapping:000000007f9a811e index:0x18405 pos:0x1440 len:0x30

Yes, reads and writes have to use the same cache. Otherwise bad things
happen...

> I don't know if there's a way around this.  Can't really use
> read_mapping_folio() on the bdev's inode in generic_quota_read() -- the
> blocks for a given page might be fragmented on disk.  I don't know
> if there's a way to tell ext4_bread() to use the inode's page cache
> instead of the bdev's.

There's no way for ext4_bread() to read from inode's page cache. And that
is deliberate - ext4_bread() is used for filesystem metadata (and quota is
treated as filesystem metadata) and we use bdev page cache for all the
metadata.

> And if we did that, would it even work as being part of a transaction?

In principle it could work because we would then treat quota as journalled
data and jbd2 supports that. But honestly, special-casing quota as
journalled data IMHO brings more hassle on the write side than it can save
by sharing some code on the read side.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
