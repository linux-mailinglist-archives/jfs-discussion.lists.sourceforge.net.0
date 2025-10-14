Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FB1BD8799
	for <lists+jfs-discussion@lfdr.de>; Tue, 14 Oct 2025 11:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qkNi6WVbrYn+hBmY/yuOfDBjTry400Y8s4wUicGd7JQ=; b=mEPRGuOAXCQjp7zPVvR1ABR7Za
	eYlkkVUt4koPDSzGrhlRt0CdbaA4cgAPIBanfYEB60fx/k7454hZ0ZMfkS3b2jetGjLWtSvRPJzWX
	XX1rxj2QYWPhCphZMMvU/zBU9ydgMZPWNAPI6RaCrpztuxmQTIWJKykYcmNCN5QiAIMw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8bTc-0000Cw-JM;
	Tue, 14 Oct 2025 09:37:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1v8bTb-0000Cq-RC
 for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 09:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r6LiiOpwbJnE+aZ8BNjDQXm+fWtAs5O6T76Dc5boMVA=; b=OG300xUQ6G4ZsMUymW7L1JAP8e
 Phs9/AwpFF8RJRYsXTMfGlUHxMf3Xsa7A268JdJVXvysyLk0t3Yoh1ttu2IEq/1850imQ1drSiO2u
 ACR5YGebPuNQw87vPdXmM+Mx34HML+88rwFqr9Cy64QXhUBBziLu/perW8B3Adb7cxTI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r6LiiOpwbJnE+aZ8BNjDQXm+fWtAs5O6T76Dc5boMVA=; b=K2bvE12krZDzNqaYXQMxUnVMnY
 KCJPin+7ps06ssYTNidje/W7mCvRo4Gc8vIRg2r81ecNEYmua1eoS0PR2Kmc2JYTNMbm2kyWFXLej
 bfybfZb819r4OUAW5QNRvNjnSEliHK/YSjOAjJ1Kjqd/KE7qHRz1T5ruRn+n0X8anNxg=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8bTb-00010R-7B for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 09:37:51 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id AD9841F7B0;
 Tue, 14 Oct 2025 09:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760434659; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=r6LiiOpwbJnE+aZ8BNjDQXm+fWtAs5O6T76Dc5boMVA=;
 b=gLakFHMfL+KFmwF6T6Oe9d0cmR0S/FGK4Hjz35D5giH1rJ5nMEm7gI7ibnvxFeYMVkhQpZ
 eki+Nlt+U1ywDGRA5m5QDrNfZZJ/3IUz2MFf6SKvxv+NXs1vcyYl6z7CLBDeofetl6ySj9
 B7iJw1AsCBRi5KVkDPqF0OkqZsvISq0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760434659;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=r6LiiOpwbJnE+aZ8BNjDQXm+fWtAs5O6T76Dc5boMVA=;
 b=R3V5YgafiR7rMgcGwINQ0jyEETmmkbLsce7GkM+/Wx+Qg1rGbJ9tv2JONNE7uldKFayP23
 xPMtLRJasD60ScAw==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=gLakFHMf;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=R3V5Ygaf
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760434659; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=r6LiiOpwbJnE+aZ8BNjDQXm+fWtAs5O6T76Dc5boMVA=;
 b=gLakFHMfL+KFmwF6T6Oe9d0cmR0S/FGK4Hjz35D5giH1rJ5nMEm7gI7ibnvxFeYMVkhQpZ
 eki+Nlt+U1ywDGRA5m5QDrNfZZJ/3IUz2MFf6SKvxv+NXs1vcyYl6z7CLBDeofetl6ySj9
 B7iJw1AsCBRi5KVkDPqF0OkqZsvISq0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760434659;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=r6LiiOpwbJnE+aZ8BNjDQXm+fWtAs5O6T76Dc5boMVA=;
 b=R3V5YgafiR7rMgcGwINQ0jyEETmmkbLsce7GkM+/Wx+Qg1rGbJ9tv2JONNE7uldKFayP23
 xPMtLRJasD60ScAw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 9F181139B0;
 Tue, 14 Oct 2025 09:37:39 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id 9O/VJuMZ7mj2VgAAD6G6ig
 (envelope-from <jack@suse.cz>); Tue, 14 Oct 2025 09:37:39 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 54417A0A58; Tue, 14 Oct 2025 11:37:35 +0200 (CEST)
Date: Tue, 14 Oct 2025 11:37:35 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <tbgfwzv55cca563r47kwi3ycsguxkp2opco3odtzy62o5lgzk2@mipmgtzthvrd>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-8-hch@lst.de>
 <t4y7xtgfnzfpfupnb7on33n6qzrfxfphsm2hqsa5rx4liqvvbc@wwj7ckhyilpo>
 <20251014045325.GD30978@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251014045325.GD30978@lst.de>
X-Spam-Level: 
X-Spam-Flag: NO
X-Rspamd-Queue-Id: AD9841F7B0
X-Rspamd-Action: no action
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spamd-Result: default: False [-4.01 / 50.00]; BAYES_HAM(-3.00)[99.99%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; ARC_NA(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 MISSING_XM_UA(0.00)[]; MIME_TRACE(0.00)[0:+];
 FUZZY_RATELIMITED(0.00)[rspamd.com];
 RCPT_COUNT_TWELVE(0.00)[24];
 RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:rdns,imap1.dmz-prg2.suse.org:helo,suse.com:email];
 TO_DN_SOME(0.00)[]; FROM_EQ_ENVFROM(0.00)[];
 FROM_HAS_DN(0.00)[]; RCVD_COUNT_THREE(0.00)[3];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCVD_TLS_LAST(0.00)[]; DKIM_TRACE(0.00)[suse.cz:+]
X-Spam-Score: -4.01
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 14-10-25 06:53:25, Christoph Hellwig wrote: > On Mon, 
 Oct 13, 2025 at 01:59:21PM +0200,
 Jan Kara wrote: > > > - return __filemap_fdatawrite(mapping, 
 WB_SYNC_NONE); > > > + return filemap_fdataw [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1v8bTb-00010R-7B
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-mm@kvack.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Mark Fasheh <mark@fasheh.com>,
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

On Tue 14-10-25 06:53:25, Christoph Hellwig wrote:
> On Mon, Oct 13, 2025 at 01:59:21PM +0200, Jan Kara wrote:
> > > -	return __filemap_fdatawrite(mapping, WB_SYNC_NONE);
> > > +	return filemap_fdatawrite_range_kick(mapping, 0, LLONG_MAX);
> > >  }
> > >  EXPORT_SYMBOL(filemap_flush);
> > 
> > filemap_fdatawrite_range_kick() doesn't exist at this point in the series.
> 
> It does exist even in the current upstream kernel.
> filemap_fdatawrite_kick doesn't exist yet.

Aha, I was wondering where that "kick" naming was coming from :) I've
totally missed adding of filemap_fdatawrite_range_kick(). Sorry for the
noise but I still think filemap_flush / filemap_writeback better express
the intention than filemap_fdatawrite_kick.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
