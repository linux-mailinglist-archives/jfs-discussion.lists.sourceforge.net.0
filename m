Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D93E60C326
	for <lists+jfs-discussion@lfdr.de>; Tue, 25 Oct 2022 07:13:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1onCFF-0001XT-70;
	Tue, 25 Oct 2022 05:12:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wuhoipok@gmail.com>) id 1onCFE-0001XM-4U
 for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Oct 2022 05:12:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9aTHUqAheweyy4ly5f1XL+MDpqeGn6Gh3fTd+xRqqGg=; b=IfMSYVD+ksfWQX2/Jd10iNE5J+
 GvVGTwv2HxXn9vsXoRTyJOq2WXHwqRjBC65dZgzKZdR8Cama3eD8JS8lYW76YRjW0lNhr5ITBEeE2
 GZJdKYUQ9wLbdoNFxBk9WJqiq6+wfZJU7rSZpSVpMPxXKUT/dri0vPTfN8G/UWzGFNro=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9aTHUqAheweyy4ly5f1XL+MDpqeGn6Gh3fTd+xRqqGg=; b=nNXgQC9TQ6zFRzp3PQBOLZgWhW
 al+Vr5jIj1Mads+5rKdGdBQ0eu0xQdnZWrvRA2zhTLrh/plhtweoCCO/CIJ2nA1Cyxr+l5zF3Zi/E
 JeaBbztPVkP0OPZhG1Pvxu2AZcw+SWcEPhVgbycEC6tbj1EZvkaNxbVK4+8unF7GXo3k=;
Received: from mail-ed1-f44.google.com ([209.85.208.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1onCFD-0003PW-FS for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Oct 2022 05:12:56 +0000
Received: by mail-ed1-f44.google.com with SMTP id z97so34565702ede.8
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 24 Oct 2022 22:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=9aTHUqAheweyy4ly5f1XL+MDpqeGn6Gh3fTd+xRqqGg=;
 b=Su5LRX20NO5m7VHBO9GKbjIzmeZNIIurDnF3KvBWymvVp1/y2NrbbxBtoeuUs9b3iD
 n3PsRkwVWd9dpB40ElzE08bjqRBzM1EXQZxRHfABeGllH8PPvIy7CJD1ALU+qq5Jn+fD
 vfA5RuYErAMoArBEaEOuXFCg4S8cZ2B+YBVpF1yHKQD+6cAblY70ibk+I7M1AbJqDMG1
 Fw8tMT1omuN5az73TY9wlGEd6ay7wD5RjReMaOr/XBDLL8jpbu67DrWmb674lRoUcQyB
 c/MxaimY3/lJhUY95/NRJC1n4Xwa1Ujul1NSBbkAd7L4MA5LM80Cu+OJnRf0k7eDdgne
 caBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9aTHUqAheweyy4ly5f1XL+MDpqeGn6Gh3fTd+xRqqGg=;
 b=rmAtOUDkGqjNX4R+eL5DEfal9T0mJUEuRV0GNfAG5WqXkw6DaLJ5gGcx2gFC1+fWH3
 TLT6+58c60iRhcdSEqZxsCpCJ+FoWoLUvsIoe+mlOgSBKeGZOjN+3c5EVSklJGHxlv4x
 cTUEcqJ1hd9YD/Rb3NLnrlVZBwKSVG0FOumihVRIWbLGdLOEGmvL18Ew1+qs81KTJ85N
 atnx0WEW1c3FIneciaSp6pQBkMU1iTIzhuyVZ++z15goUYs7RF0ewkkP1xRLYflz2x/E
 VvPc+qWUYSQ80IY9fhVkm3LmnJsjSScQDwishBTLbsjj8gJiLGsxD+eE8gNxp0k+tbRQ
 cCNA==
X-Gm-Message-State: ACrzQf2bjJdpIyRCU3iSAaU3oaW9PYXBaFySb6jX28IUbGz4VmtNAlXU
 ffKUNAQR9KF8wPJjlrbtp9q2AlXnwYw2e+4pi0c=
X-Google-Smtp-Source: AMsMyM6RArFbp850nkgtiOqcN7VB6Bf8Ce8q8gjZVQC1pTTQD0UTubifiigV5lFZS4AvnymXd1WpZoY87T7/uU/lo7s=
X-Received: by 2002:a05:6402:909:b0:435:a8b:5232 with SMTP id
 g9-20020a056402090900b004350a8b5232mr33858562edz.240.1666674768924; Mon, 24
 Oct 2022 22:12:48 -0700 (PDT)
MIME-Version: 1.0
References: <20221019093825.339991-1-wuhoipok@gmail.com>
 <286146b0-51bb-a1d0-fa28-50e5a792aeed@oracle.com>
In-Reply-To: <286146b0-51bb-a1d0-fa28-50e5a792aeed@oracle.com>
From: Hoi Pok Wu <wuhoipok@gmail.com>
Date: Tue, 25 Oct 2022 13:12:43 +0800
Message-ID: <CANyH0kDm8rMVBDNJVsXxYxDH+=S_UsKu82PgFL82WhgmtvsXig@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks for the suggestion! I will send a Patch V2 soon. On
 Tue, Oct 25, 2022 at 5:05 AM Dave Kleikamp wrote: > > On 10/19/22 4:38AM,
 Hoi Pok Wu wrote: > > Bug reported by syzbot, UBSAN: array-index-out-of-bounds
 in dbDiscardAG. > > Fixed by simply rearra [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wuhoipok[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.44 listed in wl.mailspike.net]
X-Headers-End: 1onCFD-0003PW-FS
Subject: Re: [Jfs-discussion] [PATCH] fs: jfs: fix shift-out-of-bounds in
 dbDiscardAG
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
Cc: syzbot+f0e0fcf3cd1047ae60ad@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Thanks for the suggestion! I will send a Patch V2 soon.


On Tue, Oct 25, 2022 at 5:05 AM Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
>
> On 10/19/22 4:38AM, Hoi Pok Wu wrote:
> > Bug reported by syzbot, UBSAN: array-index-out-of-bounds in dbDiscardAG.
> > Fixed by simply rearranging agno_end smaller than MAXAG. However, I wonder if it
> > is a better idea to return -EINVAL, rejecting user input. Thank you.
>
> I don't think the problem is simply that the user input is bad, the
> range is already limited:
>
>          if (end >= bmp->db_mapsize)
>                  end = bmp->db_mapsize - 1;
>
> It seems syzbot corrupted some on-disk data structure to trigger this
> failure. It may be best to call jfs_error() and bail out.
>
> Thanks,
> Shaggy
>
> >
> > Reported-by: syzbot+f0e0fcf3cd1047ae60ad@syzkaller.appspotmail.com
> > Signed-off-by: Hoi Pok Wu <wuhoipok@gmail.com>
> > ---
> >   fs/jfs/jfs_discard.c | 4 ++++
> >   1 file changed, 4 insertions(+)
> >
> > diff --git a/fs/jfs/jfs_discard.c b/fs/jfs/jfs_discard.c
> > index 575cb2ba74fc..3101eaf3098a 100644
> > --- a/fs/jfs/jfs_discard.c
> > +++ b/fs/jfs/jfs_discard.c
> > @@ -96,6 +96,10 @@ int jfs_ioc_trim(struct inode *ip, struct fstrim_range *range)
> >        */
> >       agno = BLKTOAG(start, JFS_SBI(ip->i_sb));
> >       agno_end = BLKTOAG(end, JFS_SBI(ip->i_sb));
> > +
> > +     if (agno_end >= MAXAG)
> > +             agno_end = MAXAG - 1;
> > +
> >       while (agno <= agno_end) {
> >               trimmed += dbDiscardAG(ip, agno, minlen);
> >               agno++;


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
