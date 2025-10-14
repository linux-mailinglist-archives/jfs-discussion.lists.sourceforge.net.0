Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6C0BDACAC
	for <lists+jfs-discussion@lfdr.de>; Tue, 14 Oct 2025 19:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U4yymvsGcP9GNndSU1COmcrkXlEdL8JN1eOUgK43Bt8=; b=glDUDPUhOgoDFknqV3G1/I1Scw
	L5fC2mw4m1hRDZwor63La5ukd3s8sWEJvLEdNLNHYwso4BUR5nfuV+xfGYpH5KtnSDVu6rSQ0+HlO
	bPttOV+HSak594QFkseOnD6OJ6blkXMHrGOITEjbm9wmU1MrWnLw8ow2Z3aP+KLY10eY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8ixc-0004m5-Vt;
	Tue, 14 Oct 2025 17:37:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dsterba@suse.cz>) id 1v8ixc-0004lt-0b
 for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 17:37:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AAlEg30Xh123ICsXxHR1i8eLACocDbvHskeA1BeozEc=; b=EO3aI9cc170Me0lxxQGZeyi4I6
 RVSE49O/xyOa6iH9QVxtQTDpV6H3tfY9yG8wkvCBEVep8n3DphqXN0xNZybhBii5yF7zTyAbyLVcl
 VjBZm4lUE11FoovMO6eFQ4djnHtb+Y0cyRZtkCpJxBwZuwYvRwuff93iH5Ksj65NPK8g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AAlEg30Xh123ICsXxHR1i8eLACocDbvHskeA1BeozEc=; b=J69zJNBQ1CsaDrEgu7htQ8985B
 /JAHFezl2fCs7UlxDiUwnowGWD5sedRIAitDFc+YE3cZbyDPI3MDdHdC5NwlWj3hONKx0Ni0zaSYH
 42fKSRXcxer5sXRkqhATz8730T67AwecH5reDWCaNaAV6OdGwQM5pDCgtQOJDD24ovDw=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8ixc-00026z-1b for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 17:37:20 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 76C2C203BB;
 Tue, 14 Oct 2025 17:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760463428;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AAlEg30Xh123ICsXxHR1i8eLACocDbvHskeA1BeozEc=;
 b=yDmoKVMtwLRJOBlla660Ag05yHaNOU1W1IV4a81qJLQLwqxGC/tzhmPsEY7YTuWQLSSusc
 2291jCfcaCjyFff6ysHIWs13HLYVAPOEznX0vps0yRRO4+BBD3fZAwaTxqQOW1HbUGxcjb
 +ZEbO3Vcv2kGHiKZVUmyXj5b7OVr+N4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760463428;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AAlEg30Xh123ICsXxHR1i8eLACocDbvHskeA1BeozEc=;
 b=2WM08dl6lr7hfNBq0u+y+9D4Fb7mJE8UhxacJqdxQbZMxWliQxqE7oANIJuKqumg4DkUsY
 rcpsVna643JvdGBQ==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=yDmoKVMt;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=2WM08dl6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760463428;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AAlEg30Xh123ICsXxHR1i8eLACocDbvHskeA1BeozEc=;
 b=yDmoKVMtwLRJOBlla660Ag05yHaNOU1W1IV4a81qJLQLwqxGC/tzhmPsEY7YTuWQLSSusc
 2291jCfcaCjyFff6ysHIWs13HLYVAPOEznX0vps0yRRO4+BBD3fZAwaTxqQOW1HbUGxcjb
 +ZEbO3Vcv2kGHiKZVUmyXj5b7OVr+N4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760463428;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AAlEg30Xh123ICsXxHR1i8eLACocDbvHskeA1BeozEc=;
 b=2WM08dl6lr7hfNBq0u+y+9D4Fb7mJE8UhxacJqdxQbZMxWliQxqE7oANIJuKqumg4DkUsY
 rcpsVna643JvdGBQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 3BFEF139B0;
 Tue, 14 Oct 2025 17:37:08 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id 5/kaDkSK7mgpMwAAD6G6ig
 (envelope-from <dsterba@suse.cz>); Tue, 14 Oct 2025 17:37:08 +0000
Date: Tue, 14 Oct 2025 19:37:06 +0200
From: David Sterba <dsterba@suse.cz>
To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
Message-ID: <20251014173706.GB13776@suse.cz>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-5-hch@lst.de>
 <aae79ea0-f056-4da7-8a87-4d4fd6aea85f@wdc.com>
 <20251014044421.GA30920@lst.de>
 <57d7136c-b209-4f8f-bb6f-8ced354d205a@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <57d7136c-b209-4f8f-bb6f-8ced354d205a@wdc.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Spam-Level: 
X-Spam-Flag: NO
X-Rspamd-Queue-Id: 76C2C203BB
X-Rspamd-Action: no action
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spamd-Result: default: False [-4.21 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 HAS_REPLYTO(0.30)[dsterba@suse.cz];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; MIME_TRACE(0.00)[0:+];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 TO_DN_SOME(0.00)[]; TO_DN_EQ_ADDR_SOME(0.00)[];
 FUZZY_RATELIMITED(0.00)[rspamd.com];
 RCPT_COUNT_TWELVE(0.00)[25];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 ARC_NA(0.00)[]; FROM_HAS_DN(0.00)[]; RCVD_TLS_ALL(0.00)[];
 RCVD_COUNT_TWO(0.00)[2]; REPLYTO_ADDR_EQ_FROM(0.00)[];
 FROM_EQ_ENVFROM(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 MID_RHS_MATCH_FROM(0.00)[];
 R_RATELIMIT(0.00)[to_ip_from(RL9qow8fch3pfgh43469ius4rs)];
 RCVD_VIA_SMTP_AUTH(0.00)[]; DKIM_TRACE(0.00)[suse.cz:+];
 REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:rdns,
 imap1.dmz-prg2.suse.org:helo]
X-Spam-Score: -4.21
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 14, 2025 at 07:02:11AM +0000, Johannes Thumshirn
 wrote: > On 10/14/25 6:44 AM, hch wrote: > > On Mon, Oct 13, 2025 at 08:11:35AM
 +0000, Johannes Thumshirn wrote: > >> If you have to repost [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1v8ixc-00026z-1b
Subject: Re: [Jfs-discussion] [PATCH 04/10] btrfs: use the local tmp_inode
 variable in start_delalloc_inodes
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
Reply-To: dsterba@suse.cz
Cc: Latchesar Ionkov <lucho@ionkov.net>, "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, Jan Kara <jack@suse.cz>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, hch <hch@lst.de>,
 Mark Fasheh <mark@fasheh.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 "linux-ext4@vger.kernel.org" <linux-ext4@vger.kernel.org>,
 Josef Bacik <josef@toxicpanda.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "ocfs2-devel@lists.linux.dev" <ocfs2-devel@lists.linux.dev>,
 Joel Becker <jlbec@evilplan.org>, David Sterba <dsterba@suse.com>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 "v9fs@lists.linux.dev" <v9fs@lists.linux.dev>,
 "linux-xfs@vger.kernel.org" <linux-xfs@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Oct 14, 2025 at 07:02:11AM +0000, Johannes Thumshirn wrote:
> On 10/14/25 6:44 AM, hch wrote:
> > On Mon, Oct 13, 2025 at 08:11:35AM +0000, Johannes Thumshirn wrote:
> >> If you have to repost this for some reason, can you rename tmp_inode to
> >> vfs_inode or sth like that?
> >>
> >> The name is really confusing and the commit introducing it doesn't
> >> describe it really either.
> > It is.  vfs_inode is kinda weird, too.  The problem is that inode
> > is used for the btrfs_inode.  But if there's consensus on a name
> > I'll happily change it.
> >
> I unfortunately don't have one :( David?

For this series it's fine to use tmp_inode as it's already there, we can
rename it later.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
