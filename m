Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB987B24F8
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Sep 2023 20:12:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qlvUk-0004OO-4C;
	Thu, 28 Sep 2023 18:12:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1qlvUi-0004OI-Os
 for jfs-discussion@lists.sourceforge.net;
 Thu, 28 Sep 2023 18:12:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UoV8bp+GLn88RdeFyi+3G/jZGwWmlguHsi2KfbyyFTc=; b=VmkHkMzCoUux5UQwoN3WQA+1yH
 nfXKKt8Cep8/t7PjCh+q7+JklY0Ihf5msz0krnbCmcF2zkbOyXuFeRdpiiravLD8l3Z0Wk5C5IaPs
 RIzDYpoTTTl2lMrmJ3GDmuvMjQeZCkxW0E+Fnu+76Tj18rglP3/rDsfPE/d2AHnKW8ls=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UoV8bp+GLn88RdeFyi+3G/jZGwWmlguHsi2KfbyyFTc=; b=V4sBKm+rpFwhtSd9F3JanBfcKo
 VjVtM5QO5ReLlCXOPOoWhApE/SZSbqd/FaTL52d3CxhXPS4SGGQtx4eMy3C1HSvYnDsUSjYzH5yLu
 /f4TpaCfj5DTsrX3voHPdt8ZZksfJ948VSvDLZHlXaRU4HTepRo+BEANoa9SQ+JD3AqM=;
Received: from mail-ej1-f45.google.com ([209.85.218.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qlvUc-00APby-9v for jfs-discussion@lists.sourceforge.net;
 Thu, 28 Sep 2023 18:12:11 +0000
Received: by mail-ej1-f45.google.com with SMTP id
 a640c23a62f3a-9b2a3fd5764so784146166b.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 28 Sep 2023 11:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1695924719; x=1696529519;
 darn=lists.sourceforge.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=UoV8bp+GLn88RdeFyi+3G/jZGwWmlguHsi2KfbyyFTc=;
 b=eTHgYZ+LnV+hyLAM3MrPCYw0jOA4htyhJHqdLklL6koBoHvsW6y8wNK7tzxDK5PZGs
 1ZFXQYVmdxBEPqCEUpLkCLWPFDfLk2dsOvHb/V9aMysI9nxs37BJAQ8T3lIk7rzsfhIV
 /Su90Nde82lsuowS6cTNDVJh9vSNb2DUZnxXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695924719; x=1696529519;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=UoV8bp+GLn88RdeFyi+3G/jZGwWmlguHsi2KfbyyFTc=;
 b=O7TMTsAZx1GrKo1vmJ7muQZoI+AEHdR43k1vhS957ni76sIg72PH9gSwk+M9wlh2fR
 WP/R8QuwS9jLYwQnM3n+WeG3MMASfMOkEerbXI5wtqwv7uq55LBdSU3x8FrpsI44dLmR
 wYmqfpnwUBAanuw8/Ww/ntnjcjLe0PzfJe3JArWH6T7r4VkYTaaRgv10V8HfXTL8uutN
 s3Knuvp01c2y6igx8rNbikRE4Pj/X1Ac41JH6OusXUD1HMdbr00bFB/+fyDsu5QtjLJF
 dhOKca71m6nWuLXTxnm1MO8KzVXoKolGTFu45UkPlRMufKs2+8GVzkVdkcCmgaRiGfHb
 mLxQ==
X-Gm-Message-State: AOJu0Yy6EvigN/Cb+TJhF4l0b8VR7EhTtePhlpgKLNwDl+TeHY/WECLp
 qxutNjk8CchKz122J01jD5QiQZmamydY6MMjTUkALI1q2IM=
X-Google-Smtp-Source: AGHT+IEqBzWgkbU/KAO8UF6p6yw4W7Cy4ChGBxxw2NYXQS/mo6zNyz+QCe46rpNtd64ppPJLDFwXTA==
X-Received: by 2002:a17:906:9a:b0:9b2:b974:2d1c with SMTP id
 26-20020a170906009a00b009b2b9742d1cmr2110195ejc.54.1695924719617; 
 Thu, 28 Sep 2023 11:11:59 -0700 (PDT)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com.
 [209.85.208.47]) by smtp.gmail.com with ESMTPSA id
 kg28-20020a17090776fc00b0099b921de301sm11230855ejc.159.2023.09.28.11.11.59
 for <jfs-discussion@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Sep 2023 11:11:59 -0700 (PDT)
Received: by mail-ed1-f47.google.com with SMTP id
 4fb4d7f45d1cf-5362bcc7026so1635624a12.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 28 Sep 2023 11:11:59 -0700 (PDT)
X-Received: by 2002:aa7:d899:0:b0:52f:c073:9c77 with SMTP id
 u25-20020aa7d899000000b0052fc0739c77mr1748627edq.35.1695922912868; Thu, 28
 Sep 2023 10:41:52 -0700 (PDT)
MIME-Version: 1.0
References: <20230928110554.34758-1-jlayton@kernel.org>
 <20230928110554.34758-3-jlayton@kernel.org>
In-Reply-To: <20230928110554.34758-3-jlayton@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 28 Sep 2023 10:41:34 -0700
X-Gmail-Original-Message-ID: <CAHk-=wij_42Q9WHY898r-gugmT5c-1JJKRh3C+nTUd1hc1aeqQ@mail.gmail.com>
Message-ID: <CAHk-=wij_42Q9WHY898r-gugmT5c-1JJKRh3C+nTUd1hc1aeqQ@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 28 Sept 2023 at 04:06,
 Jeff Layton <jlayton@kernel.org>
 wrote: > > Move i_blocks up above the i_lock, which moves the new 4 byte
 hole to > just after the timestamps, without changing the size [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.45 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qlvUc-00APby-9v
Subject: Re: [Jfs-discussion] [PATCH 87/87] fs: move i_blocks up a few
 places in struct inode
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, "Darrick J. Wong" <djwong@kernel.org>,
 Anders Larsen <al@alarsen.net>, Carlos Llamas <cmllamas@google.com>,
 Andrii Nakryiko <andrii@kernel.org>, Mattia Dongili <malattia@linux.it>,
 Hugh Dickins <hughd@google.com>, John Johansen <john.johansen@canonical.com>,
 Yonghong Song <yonghong.song@linux.dev>,
 Alexander Gordeev <agordeev@linux.ibm.com>, Christoph Hellwig <hch@lst.de>,
 Mike Marshall <hubcap@omnibond.com>, Paulo Alcantara <pc@manguebit.com>,
 linux-xfs@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 James Morris <jmorris@namei.org>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@linux.ibm.com>, devel@lists.orangefs.org,
 Shyam Prasad N <sprasad@microsoft.com>, linux-um@lists.infradead.org,
 Nicholas Piggin <npiggin@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Suren Baghdasaryan <surenb@google.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Anton Altaparmakov <anton@tuxera.com>, Christian Brauner <brauner@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Smalley <stephen.smalley.work@gmail.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ronnie Sahlberg <lsahlber@redhat.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Chuck Lever <chuck.lever@oracle.com>, Sven Schnelle <svens@linux.ibm.com>,
 Jiri Olsa <jolsa@kernel.org>, Jan Kara <jack@suse.com>,
 Tejun Heo <tj@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-trace-kernel@vger.kernel.org, Dave Kleikamp <shaggy@kernel.org>,
 linux-mm@kvack.org, Joel Fernandes <joel@joelfernandes.org>,
 Eric Dumazet <edumazet@google.com>, Stanislav Fomichev <sdf@google.com>,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 Paul Moore <paul@paul-moore.com>, Leon Romanovsky <leon@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, codalist@coda.cs.cmu.edu,
 Iurii Zaikin <yzaikin@google.com>, Namjae Jeon <linkinjeon@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, Todd Kjos <tkjos@android.com>,
 Vasily Gorbik <gor@linux.ibm.com>, selinux@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, reiserfs-devel@vger.kernel.org,
 Miklos Szeredi <miklos@szeredi.hu>, Yue Hu <huyue2@coolpad.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Martijn Coenen <maco@android.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, Hao Luo <haoluo@google.com>,
 Tony Luck <tony.luck@intel.com>, Theodore Ts'o <tytso@mit.edu>,
 Nicolas Pitre <nico@fluxnic.net>, linux-ntfs-dev@lists.sourceforge.net,
 Muchun Song <muchun.song@linux.dev>, linux-f2fs-devel@lists.sourceforge.net,
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, gfs2@lists.linux.dev,
 Eric Biederman <ebiederm@xmission.com>, Anna Schumaker <anna@kernel.org>,
 Brad Warrum <bwarrum@linux.ibm.com>, Mike Kravetz <mike.kravetz@oracle.com>,
 linux-efi@vger.kernel.org, Martin Brandenburg <martin@omnibond.com>,
 ocfs2-devel@lists.linux.dev, Alexei Starovoitov <ast@kernel.org>,
 platform-driver-x86@vger.kernel.org, Chris Mason <clm@fb.com>,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 Marc Dionne <marc.dionne@auristor.com>, Jiri Slaby <jirislaby@kernel.org>,
 linux-afs@lists.infradead.org, Ian Kent <raven@themaw.net>,
 Naohiro Aota <naohiro.aota@wdc.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
 linux-rdma@vger.kernel.org, coda@cs.cmu.edu,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Ilya Dryomov <idryomov@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "Serge E. Hallyn" <serge@hallyn.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 autofs@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Mark Gross <markgross@kernel.org>, Damien Le Moal <dlemoal@kernel.org>,
 Eric Paris <eparis@parisplace.org>, ceph-devel@vger.kernel.org,
 Gao Xiang <xiang@kernel.org>, Jan Harkes <jaharkes@cs.cmu.edu>,
 linux-nfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 Olga Kornievskaia <kolga@netapp.com>, Song Liu <song@kernel.org>,
 samba-technical@lists.samba.org, Steve French <sfrench@samba.org>,
 Jeremy Kerr <jk@ozlabs.org>, netdev@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>, linux-fsdevel@vger.kernel.org,
 bpf@vger.kernel.org, ntfs3@lists.linux.dev, linux-erofs@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>,
 Chandan Babu R <chandan.babu@oracle.com>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Neil Brown <neilb@suse.de>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Amir Goldstein <amir73il@gmail.com>, Bob Copeland <me@bobcopeland.com>,
 KP Singh <kpsingh@kernel.org>, linux-unionfs@vger.kernel.org,
 David Howells <dhowells@redhat.com>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Andreas Dilger <adilger.kernel@dilger.ca>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Ard Biesheuvel <ardb@kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Richard Weinberger <richard@nod.at>,
 Mark Fasheh <mark@fasheh.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-serial@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Salah Triki <salah.triki@gmail.com>,
 Evgeniy Dushistov <dushistov@mail.ru>, linux-cifs@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>, Chao Yu <chao@kernel.org>,
 apparmor@lists.ubuntu.com, Josef Bacik <josef@toxicpanda.com>,
 Tom Talpey <tom@talpey.com>, Hans de Goede <hdegoede@redhat.com>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 David Sterba <dsterba@suse.com>, Xiubo Li <xiubli@redhat.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Johannes Thumshirn <jth@kernel.org>, Ritu Agarwal <rituagar@linux.ibm.com>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>, v9fs@lists.linux.dev,
 David Sterba <dsterba@suse.cz>, linux-security-module@vger.kernel.org,
 Jeffle Xu <jefflexu@linux.alibaba.com>,
 Phillip Lougher <phillip@squashfs.org.uk>,
 Johannes Berg <johannes@sipsolutions.net>,
 Sungjong Seo <sj1557.seo@samsung.com>, David Woodhouse <dwmw2@infradead.org>,
 linux-karma-devel@lists.sourceforge.net, linux-btrfs@vger.kernel.org,
 Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, 28 Sept 2023 at 04:06, Jeff Layton <jlayton@kernel.org> wrote:
>
> Move i_blocks up above the i_lock, which moves the new 4 byte hole to
> just after the timestamps, without changing the size of the structure.

I'm sure others have mentioned this, but 'struct inode' is marked with
__randomize_layout, so the actual layout may end up being very
different.

I'm personally not convinced the whole structure randomization is
worth it - it's easy enough to figure out for any distro kernel since
the seed has to be the same across machines for modules to work, so
even if the seed isn't "public", any layout is bound to be fairly
easily discoverable.

So the whole randomization only really works for private kernel
builds, and it adds this kind of pain where "optimizing" the structure
layout is kind of pointless depending on various options.

I certainly *hope* no distro enables that pointless thing, but it's a worry.

               Linus


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
