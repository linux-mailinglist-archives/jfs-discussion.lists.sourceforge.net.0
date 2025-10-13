Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABB5BD2DEB
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 13:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/EbK5THQyn425uSu6x6qI65pMqz/TIe9Y2gMyweLFGk=; b=I3PbO6pQRyiUO+PFt1E+RSw0QV
	baSJB3jLNtwhw59Up9zmbRPJJJK5dURYT1dAktQd3t4ZhUsP+vgozySKvAJac91A/CxaVE28SaFhn
	Xb9pqh+oCunMqhiZoe/3QaaiK4c6vhFCs3+ct7laFLg882lQ8uQauRxJpycul9l8/pFY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8HCD-0002eM-GK;
	Mon, 13 Oct 2025 11:58:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1v8HCC-0002eG-7U
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 11:58:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BPZNntVP7wQ8uxjyDhXSga5p6bLX+QQQQkULf/eXU6Q=; b=MNKaRsAAyt64EH3Ix+rBR43+6V
 JTjR2l3D76SylJ1DLtseWwqdNeoiXbBdmYy1BHX0ULidywG1A3lvsZvHMDyDS894K5QSAUtoyvTDK
 ETvpnUEF2MUS+vwizlbLQNPTah028sWHqmjkDUBGBMHyXdjaJYcxTHwl7Ug8G1Yatgp0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BPZNntVP7wQ8uxjyDhXSga5p6bLX+QQQQkULf/eXU6Q=; b=YAOjYFEUGag3m6h3HKfgopl0gH
 /zWGOTf2SEdSU39RgeBw7rvYLxgRio5I6gKiNQuLbgZcIpQGbTtoeQczHEyPkd+M4fEuw5b/Q8PBp
 g4EEcnOJT2a3b6smYJIWRLxNWk8sJI3BMc9+j9Somjv4/QjYKVrKwxs3vtX4t3vl59Jg=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8HCB-0001YD-M2 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 11:58:32 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id D99E2219AB;
 Mon, 13 Oct 2025 11:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760356700; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BPZNntVP7wQ8uxjyDhXSga5p6bLX+QQQQkULf/eXU6Q=;
 b=LHzybpyB0GLJakHDKi3v7mSUdW9sAkVSckJjEIYU7uionamZ8B8jl1KTbGeKT00iy1lEuI
 WKI43I0cicxVj/CLUtuUgnH8+OkMsKb5FLUoSmCTkm7TMt+dSjcvbp5TsWFGzuPh567c2G
 38FD0LDh/nHQBeFHEXPf32xy4RS8GrM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760356700;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BPZNntVP7wQ8uxjyDhXSga5p6bLX+QQQQkULf/eXU6Q=;
 b=Qgh3oEVHWWIesaXhtgPESImlj3Mbme3RyXo8inUKxZESl8DLVG9QTAg2Lti/jFyfIiiau9
 B2fY66kOepwpv7Cg==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760356699; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BPZNntVP7wQ8uxjyDhXSga5p6bLX+QQQQkULf/eXU6Q=;
 b=ME29yvbcQ/MbJF53rFA6iT5e32yP3OhIHjaDcaOMTyWZug0IIw6GrktxYOOzwhwmM5fvV3
 nd3sCEW/6Ew1uGaomnCVpxSwK+mYoJmrdqoxHaAiBwEyOjz7ZRKy2dyNZh1KXf3D8oSUzU
 zLvv73wixItoXsvggoNyAvHt5BKHaDQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760356699;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BPZNntVP7wQ8uxjyDhXSga5p6bLX+QQQQkULf/eXU6Q=;
 b=+GQ6nB/uGXVIcxmT+F8khHkzFYthRB5g+YdjO+rW4+iS7ALtG00KT8SsjWel7sDbDJ1Yih
 7Mnz5AnHeYOb11Cw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C6F3213874;
 Mon, 13 Oct 2025 11:58:19 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id zHCMMFvp7GgCAgAAD6G6ig
 (envelope-from <jack@suse.cz>); Mon, 13 Oct 2025 11:58:19 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 72419A0A58; Mon, 13 Oct 2025 13:58:15 +0200 (CEST)
Date: Mon, 13 Oct 2025 13:58:15 +0200
From: Jan Kara <jack@suse.cz>
To: Damien Le Moal <dlemoal@kernel.org>
Message-ID: <4bcpiwrhbrraau7nlp6mxbffprtnlv3piqyn7xkm7j2txxqlmn@3knyilc526ts>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-7-hch@lst.de>
 <74593bac-929b-4496-80e0-43d0f54d6b4c@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74593bac-929b-4496-80e0-43d0f54d6b4c@kernel.org>
X-Spam-Level: 
X-Spamd-Result: default: False [-3.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MISSING_XM_UA(0.00)[]; FROM_HAS_DN(0.00)[];
 MIME_TRACE(0.00)[0:+]; ARC_NA(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[25]; RCVD_VIA_SMTP_AUTH(0.00)[];
 RCVD_COUNT_THREE(0.00)[3]; TO_DN_SOME(0.00)[];
 FROM_EQ_ENVFROM(0.00)[]; FUZZY_RATELIMITED(0.00)[rspamd.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCVD_TLS_LAST(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email, lst.de:email,
 imap1.dmz-prg2.suse.org:helo]
X-Spam-Flag: NO
X-Spam-Score: -3.80
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 13-10-25 17:01:01,
 Damien Le Moal wrote: > On 2025/10/13
 11:58, Christoph Hellwig wrote: > > Abstract out the btrfs-specific behavior
 of kicking off I/O on a number > > of pages on an address_s [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1v8HCB-0001YD-M2
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

On Mon 13-10-25 17:01:01, Damien Le Moal wrote:
> On 2025/10/13 11:58, Christoph Hellwig wrote:
> > Abstract out the btrfs-specific behavior of kicking off I/O on a number
> > of pages on an address_space into a well-defined helper.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> One nit below.
> 
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> 
> 
> > +/*
> > + * Start writeback on @nr_to_write pages from @mapping.  No one but the existing
> > + * btrfs caller should be using this.  Talk to linux-mm if you think adding a
> > + * new caller is a good idea.
> > + */
> > +int filemap_fdatawrite_kick_nr(struct address_space *mapping, long *nr_to_write)
> 
> Not a huge fan of this name. Maybe filemap_fdatawrite_nrpages() ?

I don't love filemap_fdatawrite_kick_nr() either. Your
filemap_fdatawrite_nrpages() is better but so far we had the distinction
that filemap_fdatawrite* is for data integrity writeback and filemap_flush
is for memory cleaning writeback. And in some places this is important
distinction which I'd like to keep obvious in the naming. So I'd prefer
something like filemap_flush_nrpages() (to stay consistent with previous
naming) or if Christoph doesn't like flush (as that's kind of overloaded
word) we could have filemap_writeback_nrpages().

								Honza

-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
