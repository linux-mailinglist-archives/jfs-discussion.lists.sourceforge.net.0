Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1D5BD759B
	for <lists+jfs-discussion@lfdr.de>; Tue, 14 Oct 2025 07:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=my/pIMSc5WAex8OFa7vo5d9M/rYXLUlXj05gI8Mkmzo=; b=D05f2Rwm9QQv3/qiM2FKIBKEJQ
	WtTIx4TpAusdrC+qtAB6eGDY0GEJrON1qU/EQnwgo0XYnoZHaESp33XOunAK8w6ej6u3Ld2AeJ30Y
	aeBLt1hEmD315wLfmNTThI28JEqwCPThMdDywJyrFaG1ebYyFOQQgQlz+cEguCOiv5zI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8X8n-0006bP-Bo;
	Tue, 14 Oct 2025 05:00:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1v8X8k-0006bJ-O5
 for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 05:00:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qOeLdvm2NKqje+280ndbvU+m4oWlm7TWv6r2vUoI3S0=; b=V5oDelqU+aZdTGSQ1rhwLsP6iE
 a8Xvz/XdEGT7Au4r8wRfryVluMvRFAFOwTv3y3qwSYsrpIgIlxpEAfdBzl8PYVdBtoBtpY0yClDw+
 lHM+9eMPHdbkubZkETTCgN1eaSqxIQUo/6ctQYN689uXCY2VoAcNt43U3G75VRCf3Zvk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qOeLdvm2NKqje+280ndbvU+m4oWlm7TWv6r2vUoI3S0=; b=fz+BJ2JFFvOOeHuADzez2RhDBv
 o90B8LepsqFY9Bvz1roNJcJABb8Eo3pzaA6dIqB/GVpTzs7cXxCn4F6Vu2FC6nishCjHJ3ydt7Cjh
 14j/9XktaLRruCXAVuuoNQh0KucNSmXmKvVQXrx/i+72WTHvt0vFqvx1ijafSeGCnQqY=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8X8k-00056N-1X for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 05:00:02 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E5B4F227AAA; Tue, 14 Oct 2025 06:53:25 +0200 (CEST)
Date: Tue, 14 Oct 2025 06:53:25 +0200
To: Jan Kara <jack@suse.cz>
Message-ID: <20251014045325.GD30978@lst.de>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-8-hch@lst.de>
 <t4y7xtgfnzfpfupnb7on33n6qzrfxfphsm2hqsa5rx4liqvvbc@wwj7ckhyilpo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <t4y7xtgfnzfpfupnb7on33n6qzrfxfphsm2hqsa5rx4liqvvbc@wwj7ckhyilpo>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 13, 2025 at 01:59:21PM +0200, Jan Kara wrote:
 > > - return __filemap_fdatawrite(mapping, WB_SYNC_NONE);
 > > + return filemap_fdatawrite_range_kick(mapping,
 0, LLONG_MAX); > > } > > EXPORT_ [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1v8X8k-00056N-1X
Subject: Re: [Jfs-discussion] [PATCH 07/10] mm: remove __filemap_fdatawrite
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
From: Christoph Hellwig via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christoph Hellwig <hch@lst.de>
Cc: Latchesar Ionkov <lucho@ionkov.net>, jfs-discussion@lists.sourceforge.net,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-mm@kvack.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Christoph Hellwig <hch@lst.de>,
 Mark Fasheh <mark@fasheh.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-ext4@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Joel Becker <jlbec@evilplan.org>,
 David Sterba <dsterba@suse.com>, Eric Van Hensbergen <ericvh@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 v9fs@lists.linux.dev, linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Oct 13, 2025 at 01:59:21PM +0200, Jan Kara wrote:
> > -	return __filemap_fdatawrite(mapping, WB_SYNC_NONE);
> > +	return filemap_fdatawrite_range_kick(mapping, 0, LLONG_MAX);
> >  }
> >  EXPORT_SYMBOL(filemap_flush);
> 
> filemap_fdatawrite_range_kick() doesn't exist at this point in the series.

It does exist even in the current upstream kernel.
filemap_fdatawrite_kick doesn't exist yet.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
