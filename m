Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1207BD75BC
	for <lists+jfs-discussion@lfdr.de>; Tue, 14 Oct 2025 07:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LQUcmJwWhifENd8Gkua5W5wV1c/KfA4ubZInemeWY1c=; b=iNtql/WfYu9BxOsPq/rDkTFu4q
	uvHcf+DnHk4Uk/OUkl2wS25og0imb+yBmPV/sUY6Pds5pkcE7Djk3tHsZ7r3jD3PopfR85tcVypRG
	ISwnQibc6CME9/QQeL/c+/77260maAszuJlo7KImr8WbJp5ztYTs1NyQiRj15lh6t/UE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8XDa-00071I-Uq;
	Tue, 14 Oct 2025 05:05:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1v8XDa-00071B-D3
 for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 05:05:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y/EGNBewWlX776z4za7Ii5NXJ1S+NChZ3ujpMAaM3D4=; b=K18lRw6LtjFchx7aoLqh0VM9Qi
 d/by6TcKGBjG78Xa5Hh1nWGyPXY5qWzLw+igtmc+vdWqOCV9Nlj5dU/wiGdIQSKuOweSckS5LkDUb
 G+pzd+jlEnRC3Du8OmELR1PQIutMg6ou0Kzf8yqG+FJ3XmkXUwJ3maJ+ky5ZDq8sIJk4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y/EGNBewWlX776z4za7Ii5NXJ1S+NChZ3ujpMAaM3D4=; b=XRljd36Flp2jnNieKNPvak4eia
 Pd7aHVOKLjqq/jKHepXKtwFLeLG2T8kPZycVSdvnRdMczy8dnOu4EG8PJ4/xYJL1rVL51aLfWlEqj
 odM4136dWz2g3OtluPRP/MgTT19FNJfI9R3AfiMLNVZl5cAoNIFkRiGYz+NDQP79xIA4=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8XDZ-0005Lp-PD for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 05:05:02 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D0523227A8E; Tue, 14 Oct 2025 06:49:06 +0200 (CEST)
Date: Tue, 14 Oct 2025 06:49:06 +0200
To: David Hildenbrand <david@redhat.com>
Message-ID: <20251014044906.GB30978@lst.de>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-7-hch@lst.de>
 <41f5cd92-6bd8-46d4-afce-3c14a1cd48dc@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <41f5cd92-6bd8-46d4-afce-3c14a1cd48dc@redhat.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 13, 2025 at 02:48:48PM +0200, David Hildenbrand
 wrote: >> +/* >> + * Start writeback on @nr_to_write pages from @mapping.
 No one but the existing >> + * btrfs caller should be using this. [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1v8XDZ-0005Lp-PD
Subject: Re: [Jfs-discussion] [PATCH 06/10] mm,
 btrfs: add a filemap_fdatawrite_kick_nr helper
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
 Jan Kara <jack@suse.cz>, Dominique Martinet <asmadeus@codewreck.org>,
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

On Mon, Oct 13, 2025 at 02:48:48PM +0200, David Hildenbrand wrote:
>>   +/*
>> + * Start writeback on @nr_to_write pages from @mapping.  No one but the existing
>> + * btrfs caller should be using this.  Talk to linux-mm if you think adding a
>> + * new caller is a good idea.
>> + */
>
> Nit: We seem to prefer proper kerneldoc for filemap_fdatawrite* functions.

Because this is mentioned as only export for btrfs and using
EXPORT_SYMBOL_FOR_MODULES I explicitly do not want it to show up in
the generated documentation, so this was intentional.  Unless we want
to make this a fully supported part of the API, in which case the export
type should change, and it should grow a kerneldoc comment.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
