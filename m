Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC27DBDB5F7
	for <lists+jfs-discussion@lfdr.de>; Tue, 14 Oct 2025 23:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1JqGBAimXJQCZL+Ex7hIiClMVFd6/V+ILsjfQwuk8zI=; b=eahUEXqRy8+EcFEScBlsbANqre
	cDq4KaBsI8lG0+w6kb7SbzZ35/KvJMhUyzLtyMBIAW8dw6exCoOuIs3XyJIhL2omEtZpJ08Lhus7o
	YMLRFgfaKrL/jrGtYox760EfC+0DczJ6rz2/xSaGA3knm0AHO41o8V756NZ7qAcwoMA0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8mIc-0005yf-5N;
	Tue, 14 Oct 2025 21:11:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@fromorbit.com>) id 1v8mIa-0005yQ-OT
 for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 21:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ProMLWdJiYhd+ReUg4Q/nfu5OGup3NKBCnvPEIlS8hk=; b=RzyTmB2JlOoReZ2J8aC/ymzgWV
 BH+y5jNfuy/tZrG9ZyfMbxkFu2xMoIFllaGZsZgqx3RtyiPSEyRNWjcxtTfH6VaIOtFjud16OlsMB
 6QZuCoacBoQKlAIwN0AQCz0og8G9Hqft8HnQZKFjdxFeGPttHpYavl9qDRYu+xe1/Lnw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ProMLWdJiYhd+ReUg4Q/nfu5OGup3NKBCnvPEIlS8hk=; b=HphKXmWUro6WpLLH0m8NBKWpNm
 bJuHIVkh3gvpeFdV5Nsb0OF8RZ19kiPZFzT6K7b5a2PPXXXQX2Bi7COaYWfQuhIXU6SnPyyC0p2Vi
 G5mSvkGtZC7h2AiZMMCnOtevxvQEhv+uU3cSY6Mygq2RiMDsF53I+LyIvbBGz9MRhSDs=;
Received: from mail-il1-f171.google.com ([209.85.166.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8mIa-0004cK-Vu for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 21:11:13 +0000
Received: by mail-il1-f171.google.com with SMTP id
 e9e14a558f8ab-4248b34fc8eso63796785ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 14 Oct 2025 14:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fromorbit-com.20230601.gappssmtp.com; s=20230601; t=1760476260; x=1761081060;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ProMLWdJiYhd+ReUg4Q/nfu5OGup3NKBCnvPEIlS8hk=;
 b=Xh/O3+p3HUBqwqTvjAzBsPwpneEJvpu+70tcFkUwCq1RExI8L4DexGYBvnr+CBcbyS
 PBQkv03oWsFXZeFBi6tjzHwA3F3eBdKBKQGNiW78chHp74DaVVZweE+QuDXygFG2I3o5
 8VVqeiBm6RLuPQyzs/y2yX3GE8cViONlW1rgCqayvmuLSkXPACJaO4so2YQ2979Y+eff
 XSDLt1ibQtc8N+n6wpNOMTBDfHHLNOFX8I6LeQ4aFXspUU6mKQIAOuB4RIec8sQzXtfC
 hVHGqujmrVdfhlbRJufoUpfcTARVNn5gVtwL3ey2p/3jtJvduGVCs5wNgiFmjRxW3lKE
 yC4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760476260; x=1761081060;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ProMLWdJiYhd+ReUg4Q/nfu5OGup3NKBCnvPEIlS8hk=;
 b=s95gg1+vK2tR3fAId7CcsFVpxNm+KDLxIHCa4cLTnDCQljBcsaxg3ghY+Ff32gJBIk
 K0UhqynOVvZXz3GgSIYATLG5dH0PrgHnHbC4HTkN6BAsOwtHQeDKj2QnTKD7tpOwDnl5
 he+TfQsSazr5bbCd8FNz5fTnkaN/8oBe/ywCNr19++FhBSoBoqGeOKkiTNACzIJuW3EA
 6BaQWkh+yEdeVjjDEvitSfWOZkcGE6K5uvGnXPMQz6kRCZ9SyE5XIXr+Tz4iKbLd0o/R
 95JVw44JToZHP8F9VbBT/HppgO9q5oVVM7z1UdLsCohogV9DdcuiZE2cQ4+vq32J03VO
 D5Bg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUFGe7f/wR9WGOO1ugKO9fL2Qfa7OXGXFqDs5PUKt1YmuBE2rrYUkkHm3oETvUERcxJJOHfNIDFw7SiHwY6wQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx5d4dW1nNMQo0f7ekhkJJPc0G3ke19aM9CQclU0G45s1wvGyjy
 1dRUkh6sVxMVR3GYsKnc03J+Qyv75k4MVyILJdSMVvgRAjWYFeVdc85Gv4teGQLuCPRIQO64/8P
 49O/q
X-Gm-Gg: ASbGncsOhVNL9vx0B3JLvuhFPFju5Gvy4NpAYbnYRG19qAoKEmzxLYjYJ/T6r526mSz
 in1ZRfkmdpV8ERanVScxceVmckBkrodkY0998tfWMuUuZlOG2ztzKdhCl0FC08i03F95480eEpg
 dVP5Mgj3/EOYYzuv7iavIpK34gviHXSCLZtvemk5a6wJAp22nZICiqBql4D+CnwWq/jJqp9jRzV
 drb/PReG5ua5hnVrXikgfwx2e4raH/+/+BPjDr1c2KR6Lstok7c4H8bBfTKZWzXQYHfSdNeFFah
 3K1k8FwlmnZRpRrj7W15w1wAYNOVNQzuvzDEuRe2jdKWv2JyKO/XzA4DAC+n/RsZ4ki36jaJquI
 VPDuU7+LfZhBEE9uK8mLXtH1/SsV02d7V6ufZJXkD/XReEn4QdqQ+DXl8Y6Adg9oR/xfMa6JFBl
 Vkp++c2jQ1OeHaU8IzstSBZ0GO+uGBg4zYacdFjw==
X-Google-Smtp-Source: AGHT+IEha/464YLIDe1S05FMmmIwJiiHJqNozxP/E/7ahWiUSHSloNCgr/S9uHudRNKH/rfSTuG4WQ==
X-Received: by 2002:a17:90b:3947:b0:31e:c95a:cef8 with SMTP id
 98e67ed59e1d1-33b5139a259mr32044929a91.32.1760474754350; 
 Tue, 14 Oct 2025 13:45:54 -0700 (PDT)
Received: from dread.disaster.area (pa49-180-91-142.pa.nsw.optusnet.com.au.
 [49.180.91.142]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-33b62631266sm16839994a91.3.2025.10.14.13.45.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Oct 2025 13:45:53 -0700 (PDT)
Received: from dave by dread.disaster.area with local (Exim 4.98.2)
 (envelope-from <david@fromorbit.com>) id 1v8lu3-0000000Es6g-0Y5G;
 Wed, 15 Oct 2025 07:45:51 +1100
Date: Wed, 15 Oct 2025 07:45:51 +1100
To: Jan Kara <jack@suse.cz>
Message-ID: <aO62fx2B5ZZLsRVM@dread.disaster.area>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-7-hch@lst.de>
 <74593bac-929b-4496-80e0-43d0f54d6b4c@kernel.org>
 <4bcpiwrhbrraau7nlp6mxbffprtnlv3piqyn7xkm7j2txxqlmn@3knyilc526ts>
 <20251014044723.GA30978@lst.de>
 <qh7xhmefm54k3hgny3iwkxbdrgjf35swqokiiicu5gg3ahvf4s@xhyw4sfagjgw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <qh7xhmefm54k3hgny3iwkxbdrgjf35swqokiiicu5gg3ahvf4s@xhyw4sfagjgw>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 14, 2025 at 11:33:26AM +0200, Jan Kara wrote:
 > On Tue 14-10-25 06:47:23, Christoph Hellwig wrote: > > On Mon, Oct 13, 2025
 at 01:58:15PM +0200, Jan Kara wrote: > > > I don't love filemap_ [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.171 listed in wl.mailspike.net]
X-Headers-End: 1v8mIa-0004cK-Vu
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
From: Dave Chinner via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dave Chinner <david@fromorbit.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, jfs-discussion@lists.sourceforge.net,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-mm@kvack.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Christoph Hellwig <hch@lst.de>,
 Mark Fasheh <mark@fasheh.com>,
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

On Tue, Oct 14, 2025 at 11:33:26AM +0200, Jan Kara wrote:
> On Tue 14-10-25 06:47:23, Christoph Hellwig wrote:
> > On Mon, Oct 13, 2025 at 01:58:15PM +0200, Jan Kara wrote:
> > > I don't love filemap_fdatawrite_kick_nr() either. Your
> > > filemap_fdatawrite_nrpages() is better but so far we had the distinction
> > > that filemap_fdatawrite* is for data integrity writeback and filemap_flush
> > > is for memory cleaning writeback. And in some places this is important
> > > distinction which I'd like to keep obvious in the naming. So I'd prefer
> > > something like filemap_flush_nrpages() (to stay consistent with previous
> > > naming) or if Christoph doesn't like flush (as that's kind of overloaded
> > > word) we could have filemap_writeback_nrpages().
> > 
> > Not a big fan of flush, but the important point in this series is
> > to have consistent naming.
> 
> I fully agree on that.

*nod*

> >  If we don't like the kick naming we should standardize on _flush (or
> >  whatever) and have the _range and _nrpages variants of whatever we pick
> >  for the base name.
> > 
> > Anyone with strong feelings and or good ideas about naming please speak
> > up now.
> 
> I agree with either keeping filemap_flush* or using filemap_writeback* (and
> renaming filemap_flush to filemap_writeback).

I'd prefer filemap_flush* because most people are already familiar
with that naming and the expected semnatics. But I could live with
filemap_writebacki*, too. Both are better than "kick", IMO.

-Dave.
-- 
Dave Chinner
david@fromorbit.com


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
