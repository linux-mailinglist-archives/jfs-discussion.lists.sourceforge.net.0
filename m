Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3030FBD8748
	for <lists+jfs-discussion@lfdr.de>; Tue, 14 Oct 2025 11:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9ycOZFaqvQz9BeyemF9STXNNrnGRBRcO7sj7+wTjZig=; b=RW+HOuRzu0cKf7j+wLUblMa9Qc
	Y/wmxMgm4N8EuhuiVxeUuo5aCfaqmITurTZarYXfoBbFyclDSrlzgDQUfItfYMVXiKxhNqzYp9dMj
	a+a6UdwZe2vr2+iWsZ9+949POTIGOR5Jo/PySMZMSILmV7eJMhtgEohaq2PtVgQlnpUE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8bPd-0008PV-8x;
	Tue, 14 Oct 2025 09:33:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1v8bPc-0008PP-DV
 for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 09:33:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Bu1v0ZsOdAGwtYXCG/q/PJru4MIkuHqF/5/HnD8J37w=; b=ZMjSHoDMf2l0rUsHMaJKL9vnto
 S8RH8apL20pia6UISQgIB0S7MNZ7TQWcsj4iGFPaGuFgsV/i9ycPZ8ggF3E2tXbtSG1YxmFCBiud1
 8WZXEYXA6mLnTClkql6J9AGcjoafkYfJ+IlWW/fDbVf/kymVhX+zOAz/axRaPLjon7FA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Bu1v0ZsOdAGwtYXCG/q/PJru4MIkuHqF/5/HnD8J37w=; b=Tklu96iW6ZBlFCGc6sGsXAJmuw
 GUMo9vqrYZnRSfh5Ra76bM62LI2civhG/AvtB81fxqwfkBX8TkLiIRjico6hj4NpxJuiSU2qWHLN+
 pOTwVlSdXWwKOyrKkDI56RGnv/lHoNH5bNwPxSeRsfoQSvIl4SYoy7ppyvAl2G7MRh1g=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8bPb-0000dN-QJ for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 09:33:44 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id B12311F7B2;
 Tue, 14 Oct 2025 09:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760434412; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Bu1v0ZsOdAGwtYXCG/q/PJru4MIkuHqF/5/HnD8J37w=;
 b=xHzzbtQGIwea3na2nDBBtUHQCYVl+R4lrrOdnSJT/vknDNYjr+zb3BH7kF5R8Z9ReIr7s7
 8oeltK+lIpc7uiNPWBJFa/vsDggH3nWXkJCf5EllL+ZK7tZpRWDcVZnkLDXOS2PLphnnqA
 qhzt/HIwd8Ivy1zbyofvraqcWTE4jW8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760434412;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Bu1v0ZsOdAGwtYXCG/q/PJru4MIkuHqF/5/HnD8J37w=;
 b=16qmTPMq9Ya8DnrCMADkaJsMgrCHAKaNUvd3JQofXIz30IZYTJ5fsx6dhNS9LiGSVjSJhf
 4MfmzQ8JrkN89pBA==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=NaECqKgg;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b="vP5VAX//"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760434410; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Bu1v0ZsOdAGwtYXCG/q/PJru4MIkuHqF/5/HnD8J37w=;
 b=NaECqKggLq8fTYGbKvSAiCuRZdr3+9HhjsTNR1BSu02lITDfqhzA6+TCH9jpKHWdpZGzr7
 5FuW51Eo1RgIg7MgMNtHA4/HgVwLVezGUtBiUaNxgWNpcDkh7Z3ajhSreD7VB41gTDBOQe
 ej4qi+L9Rs2qxglM5o2QF1emQgcqt48=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760434410;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Bu1v0ZsOdAGwtYXCG/q/PJru4MIkuHqF/5/HnD8J37w=;
 b=vP5VAX//BKm3YMo8HYPJx5WbHvSRihWzLL6OI67rr+DUiEHOr+lFjqNyOD/u5H7D/BSFWt
 +EUkM3zJxNArduCg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id A16C4139B0;
 Tue, 14 Oct 2025 09:33:30 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id eaVjJ+oY7mjaUgAAD6G6ig
 (envelope-from <jack@suse.cz>); Tue, 14 Oct 2025 09:33:30 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 3B1F7A0A58; Tue, 14 Oct 2025 11:33:26 +0200 (CEST)
Date: Tue, 14 Oct 2025 11:33:26 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <qh7xhmefm54k3hgny3iwkxbdrgjf35swqokiiicu5gg3ahvf4s@xhyw4sfagjgw>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-7-hch@lst.de>
 <74593bac-929b-4496-80e0-43d0f54d6b4c@kernel.org>
 <4bcpiwrhbrraau7nlp6mxbffprtnlv3piqyn7xkm7j2txxqlmn@3knyilc526ts>
 <20251014044723.GA30978@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251014044723.GA30978@lst.de>
X-Spam-Level: 
X-Spam-Flag: NO
X-Rspamd-Queue-Id: B12311F7B2
X-Rspamd-Action: no action
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spamd-Result: default: False [-4.01 / 50.00]; BAYES_HAM(-3.00)[99.99%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCVD_COUNT_THREE(0.00)[3]; FUZZY_RATELIMITED(0.00)[rspamd.com];
 MIME_TRACE(0.00)[0:+]; ARC_NA(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[25]; FROM_HAS_DN(0.00)[];
 RCVD_TLS_LAST(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
 FROM_EQ_ENVFROM(0.00)[]; TO_DN_SOME(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; DKIM_TRACE(0.00)[suse.cz:+];
 MISSING_XM_UA(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:rdns,
 imap1.dmz-prg2.suse.org:helo, suse.com:email]
X-Spam-Score: -4.01
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 14-10-25 06:47:23, Christoph Hellwig wrote: > On Mon, 
 Oct 13, 2025 at 01:58:15PM +0200,
 Jan Kara wrote: > > I don't love filemap_fdatawrite_kick_nr()
 either. Your > > filemap_fdatawrite_nrpages [...] 
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
X-Headers-End: 1v8bPb-0000dN-QJ
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
 Joseph Qi <joseph.qi@linux.alibaba.com>, Mark Fasheh <mark@fasheh.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-ext4@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Damien Le Moal <dlemoal@kernel.org>,
 Joel Becker <jlbec@evilplan.org>, David Sterba <dsterba@suse.com>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 v9fs@lists.linux.dev, linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue 14-10-25 06:47:23, Christoph Hellwig wrote:
> On Mon, Oct 13, 2025 at 01:58:15PM +0200, Jan Kara wrote:
> > I don't love filemap_fdatawrite_kick_nr() either. Your
> > filemap_fdatawrite_nrpages() is better but so far we had the distinction
> > that filemap_fdatawrite* is for data integrity writeback and filemap_flush
> > is for memory cleaning writeback. And in some places this is important
> > distinction which I'd like to keep obvious in the naming. So I'd prefer
> > something like filemap_flush_nrpages() (to stay consistent with previous
> > naming) or if Christoph doesn't like flush (as that's kind of overloaded
> > word) we could have filemap_writeback_nrpages().
> 
> Not a big fan of flush, but the important point in this series is
> to have consistent naming.

I fully agree on that.

>  If we don't like the kick naming we should standardize on _flush (or
>  whatever) and have the _range and _nrpages variants of whatever we pick
>  for the base name.
> 
> Anyone with strong feelings and or good ideas about naming please speak
> up now.

I agree with either keeping filemap_flush* or using filemap_writeback* (and
renaming filemap_flush to filemap_writeback).

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
