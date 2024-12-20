Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BCF9F9489
	for <lists+jfs-discussion@lfdr.de>; Fri, 20 Dec 2024 15:36:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tOe6q-0002w1-G2;
	Fri, 20 Dec 2024 14:36:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <glider@google.com>) id 1tOZ6X-0004UH-Vp
 for jfs-discussion@lists.sourceforge.net;
 Fri, 20 Dec 2024 09:15:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NLetd7nVAxQOP/5NukKrvogts5apKvc1tTqPC3qKmrg=; b=bpcu2es/s9i6f8SShJ8RgFV86R
 uuvxqBSYMB/Er/e5SIOyQHPGjoiSXLLwLOcRnz5cgqPOt+O3cA+EHuZUQLFrQJ8gTu2gjfoClPlcT
 /njiG1b/iV+4tLmcU6R6dyTGuz/nKQ7rDN774B4pAeSb7Arrv4ij3loqvCw5sc0KHz40=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NLetd7nVAxQOP/5NukKrvogts5apKvc1tTqPC3qKmrg=; b=LnJhm7oyrGKOZukYaKv/j3GmCF
 6YbZ01tsBnyeFqcdjqGjAbQvCJrL5dfaFHxf74TifLMc/KjT1/qf9andOa19Vbo/+faTCx5avo/ei
 FCw7vEYWnrfCgjoAI8Lu0KBUmtlz8VgOf5BCicyvQ6ilrni3cKZsodqQsvU1icOVts3c=;
Received: from mail-qt1-f175.google.com ([209.85.160.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tOZ6X-0000YH-CM for jfs-discussion@lists.sourceforge.net;
 Fri, 20 Dec 2024 09:15:29 +0000
Received: by mail-qt1-f175.google.com with SMTP id
 d75a77b69052e-46677ef6910so16849021cf.2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 20 Dec 2024 01:15:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1734686118; x=1735290918;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NLetd7nVAxQOP/5NukKrvogts5apKvc1tTqPC3qKmrg=;
 b=MQc9Qz7w1s6ajMyAJI37q7SOaHMRw3K6a7HjzPLF+QhRybTEqKIvK6o5OJG6rEjGIl
 IGG6nvrypR7eA+V9Tg6Hh0/GT9gxzYFIupeF29cRoiqox3h+wH6lhGNpC9nsZlTVjHBF
 T1feu/JDn0xcerPWbvAkGYDBWVVUe7O8k8081JqDppBBtfgDqkTxBWDF8XJcOLx2dP2F
 S56f1Qj2mPDqX6q6BHB0+mu6tNdrMBA1rxfpRR8luncgZbP0bdRAD0bIqpAZsSMRazZ/
 2mjylk51fSLN4sYo2fdWhONj0JQ+dN9W900eIF6CIn7PyLJlND0SXeVu1j1EyKcvFrCk
 WALA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734686118; x=1735290918;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NLetd7nVAxQOP/5NukKrvogts5apKvc1tTqPC3qKmrg=;
 b=oFluYx9G1MpcOkhbga/IQz+ShqbxOBw8SKS+eGugXylaH7roj4L3uNAEuRLoPGfbsG
 5+uf+F+hjgWdmwQVhAYXED/Wud8+4g8ZL1pNjQtcoUr9XudXc6obcIC7f6RLIFLwitsg
 JTzwk1T/Cyo5F5c1RpwuQdwHFbe158aomLAfjPuyw92jo77Dz6Ll2CSQWZflnVBxnWqj
 Uc4dRL/3x8LiO7Ao6p0B3lMBHxm9Xk/N9te14jL9Ii3nU1OyO8GcDn0i1rRxMgW540HX
 PTxT5chyKlIIu07jhrBBwjcRiWzTD18+ParCwhBsRb3Is6c6GQLfcxGUPGfZz/GX9vC3
 8TlA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW5U+sK7w7fJfQd4KZHMbXUrUZHVLCuLmHV756NSeYJeE5pOAsPExMQs0+PH0GGeL8QOyTiykxOpeGyqJQgmw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyQwAJvwTg1Jf3cJWp/jyHfuIdLi7nS+VxBerr4wJY8cSwjzzId
 d3U3FPdImPavjjEiJaOvdI+lkvX82tWHaHQm65rKqpNOyEXPJJwF3hFU+Dte8Gyc2bUtNQdGl9H
 rKxDF5DGPZD9q8t+rS2Sm4p6viwc+vO0AfMgM
X-Gm-Gg: ASbGncvxnVAiPwUI52fU/5b+z+uzlADjq6QGBONns5vnep3PvIpF8kqUBOBPFFAbz5R
 2PRNOamQElYDm3EJ+XOJ6xfs8TTX5XmNBiV05Sri1KNibvY77n60goe0Oabmla+0f5KNElBg=
X-Google-Smtp-Source: AGHT+IHbqklK1pSTmIW831w6oAdLhJYtp1HjS6HeZzZ/1mmVAAXvEHRnXziEYR94uU6VDefdz0BCkAa8wLSLmYVFNUE=
X-Received: by 2002:a05:6214:4188:b0:6d8:9002:bdd4 with SMTP id
 6a1803df08f44-6dd23358724mr35457356d6.28.1734686118302; Fri, 20 Dec 2024
 01:15:18 -0800 (PST)
MIME-Version: 1.0
References: <AFMAUQCEIuMrCuBcOuRJwqrY.1.1734682065298.Hmail.3014218099@tju.edu.cn>
In-Reply-To: <AFMAUQCEIuMrCuBcOuRJwqrY.1.1734682065298.Hmail.3014218099@tju.edu.cn>
Date: Fri, 20 Dec 2024 10:14:41 +0100
Message-ID: <CAG_fn=ULq8ZY_PtZO96ADVHTAVEr1LyTp+XHYOtiBFmn6EewbA@mail.gmail.com>
To: Haichi Wang <wanghaichi@tju.edu.cn>
X-Spam-Score: -16.8 (----------------)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, Dec 20, 2024 at 9:07 AM Haichi Wang <wanghaichi@tju.edu.cn>
    wrote: > > Dear Linux maintainers and reviewers: > > We are reporting a Linux
    kernel bug titled **KASAN: slab-out-of-bounds Read i [...] 
 
 Content analysis details:   (-16.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
                             welcome-list
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.160.175 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [209.85.160.175 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.175 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
                             welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -1.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.160.175 listed in wl.mailspike.net]
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
                             Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1tOZ6X-0000YH-CM
X-Mailman-Approved-At: Fri, 20 Dec 2024 14:36:04 +0000
Subject: Re: [Jfs-discussion] Kernel Bug: "KASAN: slab-out-of-bounds Read in
 jfs_readdir"
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
From: Alexander Potapenko via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Alexander Potapenko <glider@google.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, jack@suse.cz,
 peterz@infradead.org, roman.gushchin@linux.dev, jiangshanlai@gmail.com,
 linux-mm@kvack.org, ryabinin.a.a@gmail.com, hpa@zytor.com,
 joel@joelfernandes.org, 42.hyeyoo@gmail.com, cl@linux.com,
 vincenzo.frascino@arm.com, qiang.zhang1211@gmail.com, x86@kernel.org,
 kasan-dev@googlegroups.com, mingo@redhat.com, vbabka@suse.cz,
 rientjes@google.com, frederic@kernel.org, dave.hansen@linux.intel.com,
 paulmck@kernel.org, boqun.feng@gmail.com, josh@joshtriplett.org,
 rostedt@goodmis.org, rcu@vger.kernel.org, neeraj.upadhyay@kernel.org,
 syzkaller <syzkaller@googlegroups.com>, mathieu.desnoyers@efficios.com,
 viro@zeniv.linux.org.uk, luto@kernel.org, tglx@linutronix.de,
 akpm@linux-foundation.org, dvyukov@google.com, andreyknvl@gmail.com,
 brauner@kernel.org, linux-kernel@vger.kernel.org, penberg@kernel.org,
 urezki@gmail.com, linux-fsdevel@vger.kernel.org, bp@alien8.de,
 iamjoonsoo.kim@lge.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gRnJpLCBEZWMgMjAsIDIwMjQgYXQgOTowN+KAr0FNIEhhaWNoaSBXYW5nIDx3YW5naGFpY2hp
QHRqdS5lZHUuY24+IHdyb3RlOgo+Cj4gRGVhciBMaW51eCBtYWludGFpbmVycyBhbmQgcmV2aWV3
ZXJzOgo+Cj4gV2UgYXJlIHJlcG9ydGluZyBhIExpbnV4IGtlcm5lbCBidWcgdGl0bGVkICoqS0FT
QU46IHNsYWItb3V0LW9mLWJvdW5kcyBSZWFkIGluIGpmc19yZWFkZGlyKiosIGRpc2NvdmVyZWQg
dXNpbmcgYSBtb2RpZmllZCB2ZXJzaW9uIG9mIFN5emthbGxlci4KPgoKSGVsbG8gSGFpY2hpLAoK
VW5mb3J0dW5hdGVseSByaWdodCBub3cgdGhlIGJ1ZyBpcyBub3QgYWN0aW9uYWJsZSwgYmVjYXVz
ZSBvbmUgbmVlZHMKdG8gZG93bmxvYWQgMTgwTWIgb2YgYXJjaGl2ZXMganVzdCB0byBsb29rIGF0
IGl0IGFuZCBkZWNpZGUgd2hldGhlcgp0aGV5IGtub3cgYW55dGhpbmcgYWJvdXQgaXQgb3Igbm90
LgpDb3VsZCB5b3UgYXQgbGVhc3QgcG9zdCB0aGUgc3ltYm9saXplZCBLQVNBTiByZXBvcnQ/CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1
c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lv
bgo=
